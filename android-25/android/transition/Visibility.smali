.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$DisappearListener;,
        Landroid/transition/Visibility$VisibilityInfo;
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
.field private mMode:I

.field private mSuppressLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 72
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 73
    const-string/jumbo v1, "android:visibility:visibility"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 74
    const-string/jumbo v1, "android:visibility:parent"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 72
    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    #@11
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@3
    .line 86
    const/4 v0, 0x3

    #@4
    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    #@6
    .line 87
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    #@9
    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 86
    const/4 v2, 0x3

    #@5
    iput v2, p0, Landroid/transition/Visibility;->mMode:I

    #@7
    .line 87
    const/4 v2, 0x1

    #@8
    iput-boolean v2, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    #@a
    .line 93
    sget-object v2, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    #@c
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@f
    move-result-object v0

    #@10
    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@13
    move-result v1

    #@14
    .line 95
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@17
    .line 96
    if-eqz v1, :cond_0

    #@19
    .line 97
    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    #@1c
    .line 91
    :cond_0
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 143
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@5
    move-result v1

    #@6
    .line 144
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@8
    const-string/jumbo v3, "android:visibility:visibility"

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v4

    #@f
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 145
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@14
    const-string/jumbo v3, "android:visibility:parent"

    #@17
    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@19
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 146
    const/4 v2, 0x2

    #@21
    new-array v0, v2, [I

    #@23
    .line 147
    .local v0, "loc":[I
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@25
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@28
    .line 148
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2a
    const-string/jumbo v3, "android:visibility:screenLocation"

    #@2d
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 142
    return-void
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
    .line 188
    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    #@6
    invoke-direct {v0, v3}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$VisibilityInfo;)V

    #@9
    .line 189
    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@b
    .line 190
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@d
    .line 191
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
    .line 192
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
    .line 193
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
    .line 198
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
    .line 199
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
    .line 200
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
    .line 205
    :goto_1
    if-eqz p0, :cond_7

    #@65
    if-eqz p1, :cond_7

    #@67
    .line 206
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@69
    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@6b
    if-ne v1, v2, :cond_2

    #@6d
    .line 207
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@6f
    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@71
    if-ne v1, v2, :cond_2

    #@73
    .line 208
    return-object v0

    #@74
    .line 195
    :cond_0
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@76
    .line 196
    iput-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@78
    goto :goto_0

    #@79
    .line 202
    :cond_1
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@7b
    .line 203
    iput-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@7d
    goto :goto_1

    #@7e
    .line 210
    :cond_2
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@80
    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@82
    if-eq v1, v2, :cond_5

    #@84
    .line 211
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@86
    if-nez v1, :cond_4

    #@88
    .line 212
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@8a
    .line 213
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@8c
    .line 236
    :cond_3
    :goto_2
    return-object v0

    #@8d
    .line 214
    :cond_4
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@8f
    if-nez v1, :cond_3

    #@91
    .line 215
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@93
    .line 216
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@95
    goto :goto_2

    #@96
    .line 219
    :cond_5
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@98
    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@9a
    if-eq v1, v2, :cond_3

    #@9c
    .line 220
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@9e
    if-nez v1, :cond_6

    #@a0
    .line 221
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@a2
    .line 222
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@a4
    goto :goto_2

    #@a5
    .line 223
    :cond_6
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@a7
    if-nez v1, :cond_3

    #@a9
    .line 224
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@ab
    .line 225
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@ad
    goto :goto_2

    #@ae
    .line 229
    :cond_7
    if-nez p0, :cond_8

    #@b0
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@b2
    if-nez v1, :cond_8

    #@b4
    .line 230
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@b6
    .line 231
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@b8
    goto :goto_2

    #@b9
    .line 232
    :cond_8
    if-nez p1, :cond_3

    #@bb
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@bd
    if-nez v1, :cond_3

    #@bf
    .line 233
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@c1
    .line 234
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@c3
    goto :goto_2
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 158
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 157
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 153
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 152
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
    .line 242
    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    #@4
    move-result-object v6

    #@5
    .line 243
    .local v6, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 244
    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    #@b
    if-nez v0, :cond_0

    #@d
    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 245
    :cond_0
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 246
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@17
    .line 247
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
    .line 246
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 249
    :cond_1
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@24
    .line 250
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
    .line 249
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    .line 254
    :cond_2
    return-object v1
.end method

.method public getMode()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    #@2
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 139
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
    .line 455
    if-nez p1, :cond_0

    #@4
    if-nez p2, :cond_0

    #@6
    .line 456
    return v2

    #@7
    .line 458
    :cond_0
    if-eqz p1, :cond_1

    #@9
    if-eqz p2, :cond_1

    #@b
    .line 459
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@d
    const-string/jumbo v4, "android:visibility:visibility"

    #@10
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@13
    move-result v3

    #@14
    .line 460
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@16
    const-string/jumbo v5, "android:visibility:visibility"

    #@19
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    .line 459
    if-eq v3, v4, :cond_1

    #@1f
    .line 463
    return v2

    #@20
    .line 465
    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    #@23
    move-result-object v0

    #@24
    .line 466
    .local v0, "changeInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@26
    if-eqz v3, :cond_4

    #@28
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    #@2a
    if-eqz v3, :cond_2

    #@2c
    .line 467
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    #@2e
    if-nez v3, :cond_3

    #@30
    .line 466
    :cond_2
    :goto_0
    return v1

    #@31
    :cond_3
    move v1, v2

    #@32
    .line 467
    goto :goto_0

    #@33
    :cond_4
    move v1, v2

    #@34
    .line 466
    goto :goto_0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 177
    if-nez p1, :cond_0

    #@3
    .line 178
    return v3

    #@4
    .line 180
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
    .line 181
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
    .line 183
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
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 278
    iget v4, p0, Landroid/transition/Visibility;->mMode:I

    #@4
    and-int/lit8 v4, v4, 0x1

    #@6
    const/4 v5, 0x1

    #@7
    if-ne v4, v5, :cond_0

    #@9
    if-nez p4, :cond_1

    #@b
    .line 279
    :cond_0
    return-object v6

    #@c
    .line 281
    :cond_1
    if-nez p2, :cond_2

    #@e
    .line 282
    const/4 v2, 0x0

    #@f
    .line 283
    .local v2, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-object v4, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@11
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/view/View;

    #@17
    .line 284
    .local v0, "endParent":Landroid/view/View;
    invoke-virtual {p0, v0, v7}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@1a
    move-result-object v3

    #@1b
    .line 286
    .local v3, "startParentValues":Landroid/transition/TransitionValues;
    invoke-virtual {p0, v0, v7}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@1e
    move-result-object v1

    #@1f
    .line 288
    .local v1, "endParentValues":Landroid/transition/TransitionValues;
    invoke-static {v3, v1}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    #@22
    move-result-object v2

    #@23
    .line 289
    .local v2, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v4, v2, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 290
    return-object v6

    #@28
    .line 293
    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v2    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v3    # "startParentValues":Landroid/transition/TransitionValues;
    :cond_2
    iget-object v4, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2a
    invoke-virtual {p0, p1, v4, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    #@2d
    move-result-object v4

    #@2e
    return-object v4
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 313
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 26
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    #@0
    .prologue
    .line 353
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/transition/Visibility;->mMode:I

    #@4
    move/from16 v24, v0

    #@6
    and-int/lit8 v24, v24, 0x2

    #@8
    const/16 v25, 0x2

    #@a
    move/from16 v0, v24

    #@c
    move/from16 v1, v25

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 354
    const/16 v24, 0x0

    #@12
    return-object v24

    #@13
    .line 357
    :cond_0
    if-eqz p2, :cond_3

    #@15
    move-object/from16 v0, p2

    #@17
    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@19
    move-object/from16 v22, v0

    #@1b
    .line 358
    :goto_0
    if-eqz p4, :cond_4

    #@1d
    move-object/from16 v0, p4

    #@1f
    iget-object v8, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@21
    .line 359
    .local v8, "endView":Landroid/view/View;
    :goto_1
    const/4 v15, 0x0

    #@22
    .line 360
    .local v15, "overlayView":Landroid/view/View;
    const/16 v23, 0x0

    #@24
    .line 361
    .local v23, "viewToKeep":Landroid/view/View;
    if-eqz v8, :cond_1

    #@26
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@29
    move-result-object v24

    #@2a
    if-nez v24, :cond_8

    #@2c
    .line 362
    :cond_1
    if-eqz v8, :cond_5

    #@2e
    .line 364
    move-object v15, v8

    #@2f
    .line 407
    .end local v15    # "overlayView":Landroid/view/View;
    .end local v23    # "viewToKeep":Landroid/view/View;
    :cond_2
    :goto_2
    move/from16 v11, p5

    #@31
    .line 408
    .local v11, "finalVisibility":I
    move-object/from16 v10, p1

    #@33
    .line 410
    .local v10, "finalSceneRoot":Landroid/view/ViewGroup;
    if-eqz v15, :cond_c

    #@35
    .line 412
    move-object/from16 v0, p2

    #@37
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@39
    move-object/from16 v24, v0

    #@3b
    const-string/jumbo v25, "android:visibility:screenLocation"

    #@3e
    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v17

    #@42
    check-cast v17, [I

    #@44
    .line 413
    .local v17, "screenLoc":[I
    const/16 v24, 0x0

    #@46
    aget v18, v17, v24

    #@48
    .line 414
    .local v18, "screenX":I
    const/16 v24, 0x1

    #@4a
    aget v19, v17, v24

    #@4c
    .line 415
    .local v19, "screenY":I
    const/16 v24, 0x2

    #@4e
    move/from16 v0, v24

    #@50
    new-array v13, v0, [I

    #@52
    .line 416
    .local v13, "loc":[I
    move-object/from16 v0, p1

    #@54
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@57
    .line 417
    const/16 v24, 0x0

    #@59
    aget v24, v13, v24

    #@5b
    sub-int v24, v18, v24

    #@5d
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    #@60
    move-result v25

    #@61
    sub-int v24, v24, v25

    #@63
    move/from16 v0, v24

    #@65
    invoke-virtual {v15, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@68
    .line 418
    const/16 v24, 0x1

    #@6a
    aget v24, v13, v24

    #@6c
    sub-int v24, v19, v24

    #@6e
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    #@71
    move-result v25

    #@72
    sub-int v24, v24, v25

    #@74
    move/from16 v0, v24

    #@76
    invoke-virtual {v15, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@79
    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@7c
    move-result-object v24

    #@7d
    move-object/from16 v0, v24

    #@7f
    invoke-virtual {v0, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@82
    .line 420
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, p1

    #@86
    move-object/from16 v2, p2

    #@88
    move-object/from16 v3, p4

    #@8a
    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    #@8d
    move-result-object v5

    #@8e
    .line 421
    .local v5, "animator":Landroid/animation/Animator;
    if-nez v5, :cond_b

    #@90
    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@93
    move-result-object v24

    #@94
    move-object/from16 v0, v24

    #@96
    invoke-virtual {v0, v15}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@99
    .line 432
    :goto_3
    return-object v5

    #@9a
    .line 357
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v8    # "endView":Landroid/view/View;
    .end local v10    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v11    # "finalVisibility":I
    .end local v13    # "loc":[I
    .end local v17    # "screenLoc":[I
    .end local v18    # "screenX":I
    .end local v19    # "screenY":I
    :cond_3
    const/16 v22, 0x0

    #@9c
    .local v22, "startView":Landroid/view/View;
    goto/16 :goto_0

    #@9e
    .line 358
    .end local v22    # "startView":Landroid/view/View;
    :cond_4
    const/4 v8, 0x0

    #@9f
    goto :goto_1

    #@a0
    .line 365
    .restart local v8    # "endView":Landroid/view/View;
    .restart local v15    # "overlayView":Landroid/view/View;
    .restart local v23    # "viewToKeep":Landroid/view/View;
    :cond_5
    if-eqz v22, :cond_2

    #@a2
    .line 369
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@a5
    move-result-object v24

    #@a6
    if-nez v24, :cond_6

    #@a8
    .line 371
    move-object/from16 v15, v22

    #@aa
    .local v15, "overlayView":Landroid/view/View;
    goto :goto_2

    #@ab
    .line 372
    .local v15, "overlayView":Landroid/view/View;
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@ae
    move-result-object v24

    #@af
    move-object/from16 v0, v24

    #@b1
    instance-of v0, v0, Landroid/view/View;

    #@b3
    move/from16 v24, v0

    #@b5
    if-eqz v24, :cond_2

    #@b7
    .line 373
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@ba
    move-result-object v20

    #@bb
    check-cast v20, Landroid/view/View;

    #@bd
    .line 374
    .local v20, "startParent":Landroid/view/View;
    const/16 v24, 0x1

    #@bf
    move-object/from16 v0, p0

    #@c1
    move-object/from16 v1, v20

    #@c3
    move/from16 v2, v24

    #@c5
    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@c8
    move-result-object v21

    #@c9
    .line 376
    .local v21, "startParentValues":Landroid/transition/TransitionValues;
    const/16 v24, 0x1

    #@cb
    .line 375
    move-object/from16 v0, p0

    #@cd
    move-object/from16 v1, v20

    #@cf
    move/from16 v2, v24

    #@d1
    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@d4
    move-result-object v7

    #@d5
    .line 378
    .local v7, "endParentValues":Landroid/transition/TransitionValues;
    move-object/from16 v0, v21

    #@d7
    invoke-static {v0, v7}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    #@da
    move-result-object v16

    #@db
    .line 379
    .local v16, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    move-object/from16 v0, v16

    #@dd
    iget-boolean v0, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    #@df
    move/from16 v24, v0

    #@e1
    if-nez v24, :cond_7

    #@e3
    .line 380
    move-object/from16 v0, p1

    #@e5
    move-object/from16 v1, v22

    #@e7
    move-object/from16 v2, v20

    #@e9
    invoke-static {v0, v1, v2}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    #@ec
    move-result-object v15

    #@ed
    .local v15, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    #@ef
    .line 382
    .local v15, "overlayView":Landroid/view/View;
    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@f2
    move-result-object v24

    #@f3
    if-nez v24, :cond_2

    #@f5
    .line 383
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getId()I

    #@f8
    move-result v12

    #@f9
    .line 384
    .local v12, "id":I
    const/16 v24, -0x1

    #@fb
    move/from16 v0, v24

    #@fd
    if-eq v12, v0, :cond_2

    #@ff
    move-object/from16 v0, p1

    #@101
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@104
    move-result-object v24

    #@105
    if-eqz v24, :cond_2

    #@107
    .line 385
    move-object/from16 v0, p0

    #@109
    iget-boolean v0, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    #@10b
    move/from16 v24, v0

    #@10d
    .line 384
    if-eqz v24, :cond_2

    #@10f
    .line 389
    move-object/from16 v15, v22

    #@111
    .local v15, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    #@113
    .line 396
    .end local v7    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v12    # "id":I
    .end local v16    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v20    # "startParent":Landroid/view/View;
    .end local v21    # "startParentValues":Landroid/transition/TransitionValues;
    .local v15, "overlayView":Landroid/view/View;
    :cond_8
    const/16 v24, 0x4

    #@115
    move/from16 v0, p5

    #@117
    move/from16 v1, v24

    #@119
    if-ne v0, v1, :cond_9

    #@11b
    .line 397
    move-object/from16 v23, v8

    #@11d
    .local v23, "viewToKeep":Landroid/view/View;
    goto/16 :goto_2

    #@11f
    .line 400
    .local v23, "viewToKeep":Landroid/view/View;
    :cond_9
    move-object/from16 v0, v22

    #@121
    if-ne v0, v8, :cond_a

    #@123
    .line 401
    move-object/from16 v23, v8

    #@125
    .local v23, "viewToKeep":Landroid/view/View;
    goto/16 :goto_2

    #@127
    .line 403
    .local v23, "viewToKeep":Landroid/view/View;
    :cond_a
    move-object/from16 v15, v22

    #@129
    .local v15, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    #@12b
    .line 424
    .end local v15    # "overlayView":Landroid/view/View;
    .end local v23    # "viewToKeep":Landroid/view/View;
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v10    # "finalSceneRoot":Landroid/view/ViewGroup;
    .restart local v11    # "finalVisibility":I
    .restart local v13    # "loc":[I
    .restart local v17    # "screenLoc":[I
    .restart local v18    # "screenX":I
    .restart local v19    # "screenY":I
    :cond_b
    move-object v9, v15

    #@12c
    .line 425
    .local v9, "finalOverlayView":Landroid/view/View;
    new-instance v24, Landroid/transition/Visibility$1;

    #@12e
    move-object/from16 v0, v24

    #@130
    move-object/from16 v1, p0

    #@132
    move-object/from16 v2, p1

    #@134
    invoke-direct {v0, v1, v2, v9}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;)V

    #@137
    move-object/from16 v0, p0

    #@139
    move-object/from16 v1, v24

    #@13b
    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@13e
    goto/16 :goto_3

    #@140
    .line 435
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v9    # "finalOverlayView":Landroid/view/View;
    .end local v13    # "loc":[I
    .end local v17    # "screenLoc":[I
    .end local v18    # "screenX":I
    .end local v19    # "screenY":I
    :cond_c
    if-eqz v23, :cond_e

    #@142
    .line 436
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    #@145
    move-result v14

    #@146
    .line 437
    .local v14, "originalVisibility":I
    const/16 v24, 0x0

    #@148
    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setTransitionVisibility(I)V

    #@14b
    .line 438
    move-object/from16 v0, p0

    #@14d
    move-object/from16 v1, p1

    #@14f
    move-object/from16 v2, v23

    #@151
    move-object/from16 v3, p2

    #@153
    move-object/from16 v4, p4

    #@155
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    #@158
    move-result-object v5

    #@159
    .line 439
    .restart local v5    # "animator":Landroid/animation/Animator;
    if-eqz v5, :cond_d

    #@15b
    .line 440
    new-instance v6, Landroid/transition/Visibility$DisappearListener;

    #@15d
    .line 441
    move-object/from16 v0, p0

    #@15f
    iget-boolean v0, v0, Landroid/transition/Visibility;->mSuppressLayout:Z

    #@161
    move/from16 v24, v0

    #@163
    .line 440
    move-object/from16 v0, v23

    #@165
    move/from16 v1, p5

    #@167
    move/from16 v2, v24

    #@169
    invoke-direct {v6, v0, v1, v2}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    #@16c
    .line 442
    .local v6, "disappearListener":Landroid/transition/Visibility$DisappearListener;
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@16f
    .line 443
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    #@172
    .line 444
    move-object/from16 v0, p0

    #@174
    invoke-virtual {v0, v6}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@177
    .line 448
    .end local v6    # "disappearListener":Landroid/transition/Visibility$DisappearListener;
    :goto_4
    return-object v5

    #@178
    .line 446
    :cond_d
    move-object/from16 v0, v23

    #@17a
    invoke-virtual {v0, v14}, Landroid/view/View;->setTransitionVisibility(I)V

    #@17d
    goto :goto_4

    #@17e
    .line 450
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v14    # "originalVisibility":I
    :cond_e
    const/16 v24, 0x0

    #@180
    return-object v24
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 488
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 119
    and-int/lit8 v0, p1, -0x4

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Only MODE_IN and MODE_OUT flags are allowed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 122
    :cond_0
    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    #@f
    .line 118
    return-void
.end method

.method public setSuppressLayout(Z)V
    .locals 0
    .param p1, "suppress"    # Z

    #@0
    .prologue
    .line 107
    iput-boolean p1, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    #@2
    .line 106
    return-void
.end method
