.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$ViewBounds;,
        Landroid/transition/ChangeBounds$1;,
        Landroid/transition/ChangeBounds$2;,
        Landroid/transition/ChangeBounds$3;,
        Landroid/transition/ChangeBounds$4;,
        Landroid/transition/ChangeBounds$5;,
        Landroid/transition/ChangeBounds$6;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 60
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 61
    const-string/jumbo v1, "android:changeBounds:bounds"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 62
    const-string/jumbo v1, "android:changeBounds:clip"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 63
    const-string/jumbo v1, "android:changeBounds:parent"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 64
    const-string/jumbo v1, "android:changeBounds:windowX"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 65
    const-string/jumbo v1, "android:changeBounds:windowY"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 60
    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    #@23
    .line 69
    new-instance v0, Landroid/transition/ChangeBounds$1;

    #@25
    const-class v1, Landroid/graphics/PointF;

    #@27
    const-string/jumbo v2, "boundsOrigin"

    #@2a
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@2d
    .line 68
    sput-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    #@2f
    .line 87
    new-instance v0, Landroid/transition/ChangeBounds$2;

    #@31
    const-class v1, Landroid/graphics/PointF;

    #@33
    const-string/jumbo v2, "topLeft"

    #@36
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@39
    .line 86
    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    #@3b
    .line 100
    new-instance v0, Landroid/transition/ChangeBounds$3;

    #@3d
    const-class v1, Landroid/graphics/PointF;

    #@3f
    const-string/jumbo v2, "bottomRight"

    #@42
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@45
    .line 99
    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    #@47
    .line 113
    new-instance v0, Landroid/transition/ChangeBounds$4;

    #@49
    const-class v1, Landroid/graphics/PointF;

    #@4b
    const-string/jumbo v2, "bottomRight"

    #@4e
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@51
    .line 112
    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    #@53
    .line 130
    new-instance v0, Landroid/transition/ChangeBounds$5;

    #@55
    const-class v1, Landroid/graphics/PointF;

    #@57
    const-string/jumbo v2, "topLeft"

    #@5a
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@5d
    .line 129
    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    #@5f
    .line 147
    new-instance v0, Landroid/transition/ChangeBounds$6;

    #@61
    const-class v1, Landroid/graphics/PointF;

    #@63
    const-string/jumbo v2, "position"

    #@66
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@69
    .line 146
    sput-object v0, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    #@6b
    .line 168
    new-instance v0, Landroid/animation/RectEvaluator;

    #@6d
    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    #@70
    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    #@72
    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 170
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@4
    .line 163
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@9
    .line 164
    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    #@b
    .line 165
    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    #@d
    .line 170
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
    .line 173
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 163
    const/4 v2, 0x2

    #@5
    new-array v2, v2, [I

    #@7
    iput-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@9
    .line 164
    iput-boolean v3, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    #@b
    .line 165
    iput-boolean v3, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    #@d
    .line 175
    sget-object v2, Lcom/android/internal/R$styleable;->ChangeBounds:[I

    #@f
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@12
    move-result-object v0

    #@13
    .line 176
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@16
    move-result v1

    #@17
    .line 177
    .local v1, "resizeClip":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 178
    invoke-virtual {p0, v1}, Landroid/transition/ChangeBounds;->setResizeClip(Z)V

    #@1d
    .line 172
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 9
    .param p1, "values"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 233
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@3
    .line 235
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_3

    #@f
    .line 236
    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@11
    const-string/jumbo v2, "android:changeBounds:bounds"

    #@14
    new-instance v3, Landroid/graphics/Rect;

    #@16
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@19
    move-result v4

    #@1a
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@1d
    move-result v5

    #@1e
    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@21
    move-result v6

    #@22
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@25
    move-result v7

    #@26
    .line 236
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@29
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 238
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2e
    const-string/jumbo v2, "android:changeBounds:parent"

    #@31
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@33
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@36
    move-result-object v3

    #@37
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 239
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    #@3c
    if-eqz v1, :cond_1

    #@3e
    .line 240
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@40
    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@42
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    #@45
    .line 241
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@47
    const-string/jumbo v2, "android:changeBounds:windowX"

    #@4a
    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@4c
    aget v3, v3, v8

    #@4e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v3

    #@52
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 242
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@57
    const-string/jumbo v2, "android:changeBounds:windowY"

    #@5a
    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@5c
    const/4 v4, 0x1

    #@5d
    aget v3, v3, v4

    #@5f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v3

    #@63
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    .line 244
    :cond_1
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    #@68
    if-eqz v1, :cond_2

    #@6a
    .line 245
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6c
    const-string/jumbo v2, "android:changeBounds:clip"

    #@6f
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    #@72
    move-result-object v3

    #@73
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 232
    :cond_2
    return-void

    #@77
    .line 235
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_2

    #@7d
    goto :goto_0
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    #@0
    .prologue
    .line 261
    const/4 v1, 0x1

    #@1
    .line 262
    .local v1, "parentMatches":Z
    iget-boolean v2, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 263
    const/4 v2, 0x1

    #@6
    invoke-virtual {p0, p1, v2}, Landroid/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@9
    move-result-object v0

    #@a
    .line 264
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-nez v0, :cond_2

    #@c
    .line 265
    if-ne p1, p2, :cond_1

    #@e
    const/4 v1, 0x1

    #@f
    .line 270
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    :cond_0
    :goto_0
    return v1

    #@10
    .line 265
    .restart local v0    # "endValues":Landroid/transition/TransitionValues;
    :cond_1
    const/4 v1, 0x0

    #@11
    goto :goto_0

    #@12
    .line 267
    :cond_2
    iget-object v2, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@14
    if-ne p2, v2, :cond_3

    #@16
    const/4 v1, 0x1

    #@17
    goto :goto_0

    #@18
    :cond_3
    const/4 v1, 0x0

    #@19
    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 257
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 256
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 252
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 251
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 57
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 276
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 277
    :cond_0
    const/4 v4, 0x0

    #@5
    return-object v4

    #@6
    .line 279
    :cond_1
    move-object/from16 v0, p2

    #@8
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@a
    move-object/from16 v47, v0

    #@c
    .line 280
    .local v47, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    #@e
    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@10
    move-object/from16 v30, v0

    #@12
    .line 281
    .local v30, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "android:changeBounds:parent"

    #@15
    move-object/from16 v0, v47

    #@17
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v46

    #@1b
    check-cast v46, Landroid/view/ViewGroup;

    #@1d
    .line 282
    .local v46, "startParent":Landroid/view/ViewGroup;
    const-string/jumbo v4, "android:changeBounds:parent"

    #@20
    move-object/from16 v0, v30

    #@22
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v29

    #@26
    check-cast v29, Landroid/view/ViewGroup;

    #@28
    .line 283
    .local v29, "endParent":Landroid/view/ViewGroup;
    if-eqz v46, :cond_2

    #@2a
    if-nez v29, :cond_3

    #@2c
    .line 284
    :cond_2
    const/4 v4, 0x0

    #@2d
    return-object v4

    #@2e
    .line 286
    :cond_3
    move-object/from16 v0, p3

    #@30
    iget-object v6, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@32
    .line 287
    .local v6, "view":Landroid/view/View;
    move-object/from16 v0, p0

    #@34
    move-object/from16 v1, v46

    #@36
    move-object/from16 v2, v29

    #@38
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_17

    #@3e
    .line 288
    move-object/from16 v0, p2

    #@40
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@42
    const-string/jumbo v5, "android:changeBounds:bounds"

    #@45
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v42

    #@49
    check-cast v42, Landroid/graphics/Rect;

    #@4b
    .line 289
    .local v42, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    #@4d
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@4f
    const-string/jumbo v5, "android:changeBounds:bounds"

    #@52
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v26

    #@56
    check-cast v26, Landroid/graphics/Rect;

    #@58
    .line 290
    .local v26, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v42

    #@5a
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@5c
    move/from16 v45, v0

    #@5e
    .line 291
    .local v45, "startLeft":I
    move-object/from16 v0, v26

    #@60
    iget v8, v0, Landroid/graphics/Rect;->left:I

    #@62
    .line 292
    .local v8, "endLeft":I
    move-object/from16 v0, v42

    #@64
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@66
    move/from16 v49, v0

    #@68
    .line 293
    .local v49, "startTop":I
    move-object/from16 v0, v26

    #@6a
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@6c
    .line 294
    .local v9, "endTop":I
    move-object/from16 v0, v42

    #@6e
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@70
    move/from16 v48, v0

    #@72
    .line 295
    .local v48, "startRight":I
    move-object/from16 v0, v26

    #@74
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@76
    .line 296
    .local v10, "endRight":I
    move-object/from16 v0, v42

    #@78
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@7a
    move/from16 v41, v0

    #@7c
    .line 297
    .local v41, "startBottom":I
    move-object/from16 v0, v26

    #@7e
    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    #@80
    .line 298
    .local v11, "endBottom":I
    sub-int v50, v48, v45

    #@82
    .line 299
    .local v50, "startWidth":I
    sub-int v44, v41, v49

    #@84
    .line 300
    .local v44, "startHeight":I
    sub-int v31, v10, v8

    #@86
    .line 301
    .local v31, "endWidth":I
    sub-int v28, v11, v9

    #@88
    .line 302
    .local v28, "endHeight":I
    move-object/from16 v0, p2

    #@8a
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@8c
    const-string/jumbo v5, "android:changeBounds:clip"

    #@8f
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    move-result-object v43

    #@93
    check-cast v43, Landroid/graphics/Rect;

    #@95
    .line 303
    .local v43, "startClip":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    #@97
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@99
    const-string/jumbo v5, "android:changeBounds:clip"

    #@9c
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    move-result-object v27

    #@a0
    check-cast v27, Landroid/graphics/Rect;

    #@a2
    .line 304
    .local v27, "endClip":Landroid/graphics/Rect;
    const/16 v36, 0x0

    #@a4
    .line 305
    .local v36, "numChanges":I
    if-eqz v50, :cond_c

    #@a6
    if-eqz v44, :cond_c

    #@a8
    .line 306
    :goto_0
    move/from16 v0, v45

    #@aa
    if-ne v0, v8, :cond_4

    #@ac
    move/from16 v0, v49

    #@ae
    if-eq v0, v9, :cond_5

    #@b0
    :cond_4
    const/16 v36, 0x1

    #@b2
    .line 307
    :cond_5
    move/from16 v0, v48

    #@b4
    if-ne v0, v10, :cond_6

    #@b6
    move/from16 v0, v41

    #@b8
    if-eq v0, v11, :cond_7

    #@ba
    :cond_6
    add-int/lit8 v36, v36, 0x1

    #@bc
    .line 309
    :cond_7
    if-eqz v43, :cond_8

    #@be
    move-object/from16 v0, v43

    #@c0
    move-object/from16 v1, v27

    #@c2
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@c5
    move-result v4

    #@c6
    if-eqz v4, :cond_9

    #@c8
    .line 310
    :cond_8
    if-nez v43, :cond_a

    #@ca
    if-eqz v27, :cond_a

    #@cc
    .line 311
    :cond_9
    add-int/lit8 v36, v36, 0x1

    #@ce
    .line 313
    :cond_a
    if-lez v36, :cond_19

    #@d0
    .line 315
    move-object/from16 v0, p0

    #@d2
    iget-boolean v4, v0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    #@d4
    if-nez v4, :cond_11

    #@d6
    .line 316
    move/from16 v0, v45

    #@d8
    move/from16 v1, v49

    #@da
    move/from16 v2, v48

    #@dc
    move/from16 v3, v41

    #@de
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    #@e1
    .line 317
    const/4 v4, 0x2

    #@e2
    move/from16 v0, v36

    #@e4
    if-ne v0, v4, :cond_e

    #@e6
    .line 318
    move/from16 v0, v50

    #@e8
    move/from16 v1, v31

    #@ea
    if-ne v0, v1, :cond_d

    #@ec
    move/from16 v0, v44

    #@ee
    move/from16 v1, v28

    #@f0
    if-ne v0, v1, :cond_d

    #@f2
    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@f5
    move-result-object v4

    #@f6
    move/from16 v0, v45

    #@f8
    int-to-float v5, v0

    #@f9
    move/from16 v0, v49

    #@fb
    int-to-float v12, v0

    #@fc
    int-to-float v13, v8

    #@fd
    .line 320
    int-to-float v14, v9

    #@fe
    .line 319
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@101
    move-result-object v54

    #@102
    .line 321
    .local v54, "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    #@104
    const/4 v5, 0x0

    #@105
    move-object/from16 v0, v54

    #@107
    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@10a
    move-result-object v18

    #@10b
    .line 401
    .end local v54    # "topLeftPath":Landroid/graphics/Path;
    .local v18, "anim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@10e
    move-result-object v4

    #@10f
    instance-of v4, v4, Landroid/view/ViewGroup;

    #@111
    if-eqz v4, :cond_b

    #@113
    .line 402
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@116
    move-result-object v38

    #@117
    check-cast v38, Landroid/view/ViewGroup;

    #@119
    .line 403
    .local v38, "parent":Landroid/view/ViewGroup;
    const/4 v4, 0x1

    #@11a
    move-object/from16 v0, v38

    #@11c
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@11f
    .line 404
    new-instance v55, Landroid/transition/ChangeBounds$9;

    #@121
    move-object/from16 v0, v55

    #@123
    move-object/from16 v1, p0

    #@125
    move-object/from16 v2, v38

    #@127
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    #@12a
    .line 430
    .local v55, "transitionListener":Landroid/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    #@12c
    move-object/from16 v1, v55

    #@12e
    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@131
    .line 432
    .end local v38    # "parent":Landroid/view/ViewGroup;
    .end local v55    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    :cond_b
    return-object v18

    #@132
    .line 305
    .end local v18    # "anim":Landroid/animation/Animator;
    :cond_c
    if-eqz v31, :cond_7

    #@134
    if-eqz v28, :cond_7

    #@136
    goto/16 :goto_0

    #@138
    .line 324
    :cond_d
    new-instance v56, Landroid/transition/ChangeBounds$ViewBounds;

    #@13a
    move-object/from16 v0, v56

    #@13c
    invoke-direct {v0, v6}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    #@13f
    .line 325
    .local v56, "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@142
    move-result-object v4

    #@143
    move/from16 v0, v45

    #@145
    int-to-float v5, v0

    #@146
    move/from16 v0, v49

    #@148
    int-to-float v12, v0

    #@149
    .line 326
    int-to-float v13, v8

    #@14a
    int-to-float v14, v9

    #@14b
    .line 325
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@14e
    move-result-object v54

    #@14f
    .line 328
    .restart local v54    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    #@151
    const/4 v5, 0x0

    #@152
    .line 327
    move-object/from16 v0, v56

    #@154
    move-object/from16 v1, v54

    #@156
    invoke-static {v0, v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@159
    move-result-object v53

    #@15a
    .line 330
    .local v53, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@15d
    move-result-object v4

    #@15e
    move/from16 v0, v48

    #@160
    int-to-float v5, v0

    #@161
    move/from16 v0, v41

    #@163
    int-to-float v12, v0

    #@164
    .line 331
    int-to-float v13, v10

    #@165
    int-to-float v14, v11

    #@166
    .line 330
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@169
    move-result-object v23

    #@16a
    .line 333
    .local v23, "bottomRightPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    #@16c
    const/4 v5, 0x0

    #@16d
    .line 332
    move-object/from16 v0, v56

    #@16f
    move-object/from16 v1, v23

    #@171
    invoke-static {v0, v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@174
    move-result-object v22

    #@175
    .line 334
    .local v22, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v40, Landroid/animation/AnimatorSet;

    #@177
    invoke-direct/range {v40 .. v40}, Landroid/animation/AnimatorSet;-><init>()V

    #@17a
    .line 335
    .local v40, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x2

    #@17b
    new-array v4, v4, [Landroid/animation/Animator;

    #@17d
    const/4 v5, 0x0

    #@17e
    aput-object v53, v4, v5

    #@180
    const/4 v5, 0x1

    #@181
    aput-object v22, v4, v5

    #@183
    move-object/from16 v0, v40

    #@185
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@188
    .line 336
    move-object/from16 v18, v40

    #@18a
    .line 337
    .restart local v18    # "anim":Landroid/animation/Animator;
    new-instance v4, Landroid/transition/ChangeBounds$7;

    #@18c
    move-object/from16 v0, p0

    #@18e
    move-object/from16 v1, v56

    #@190
    invoke-direct {v4, v0, v1}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    #@193
    move-object/from16 v0, v40

    #@195
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@198
    goto/16 :goto_1

    #@19a
    .line 343
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v22    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v23    # "bottomRightPath":Landroid/graphics/Path;
    .end local v40    # "set":Landroid/animation/AnimatorSet;
    .end local v53    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .end local v54    # "topLeftPath":Landroid/graphics/Path;
    .end local v56    # "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    :cond_e
    move/from16 v0, v45

    #@19c
    if-ne v0, v8, :cond_f

    #@19e
    move/from16 v0, v49

    #@1a0
    if-eq v0, v9, :cond_10

    #@1a2
    .line 344
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@1a5
    move-result-object v4

    #@1a6
    move/from16 v0, v45

    #@1a8
    int-to-float v5, v0

    #@1a9
    move/from16 v0, v49

    #@1ab
    int-to-float v12, v0

    #@1ac
    .line 345
    int-to-float v13, v8

    #@1ad
    int-to-float v14, v9

    #@1ae
    .line 344
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@1b1
    move-result-object v54

    #@1b2
    .line 346
    .restart local v54    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    #@1b4
    const/4 v5, 0x0

    #@1b5
    move-object/from16 v0, v54

    #@1b7
    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@1ba
    move-result-object v18

    #@1bb
    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    #@1bd
    .line 349
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v54    # "topLeftPath":Landroid/graphics/Path;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@1c0
    move-result-object v4

    #@1c1
    move/from16 v0, v48

    #@1c3
    int-to-float v5, v0

    #@1c4
    move/from16 v0, v41

    #@1c6
    int-to-float v12, v0

    #@1c7
    .line 350
    int-to-float v13, v10

    #@1c8
    int-to-float v14, v11

    #@1c9
    .line 349
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@1cc
    move-result-object v21

    #@1cd
    .line 351
    .local v21, "bottomRight":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    #@1cf
    const/4 v5, 0x0

    #@1d0
    move-object/from16 v0, v21

    #@1d2
    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@1d5
    move-result-object v18

    #@1d6
    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    #@1d8
    .line 355
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v21    # "bottomRight":Landroid/graphics/Path;
    :cond_11
    move/from16 v0, v50

    #@1da
    move/from16 v1, v31

    #@1dc
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1df
    move-result v35

    #@1e0
    .line 356
    .local v35, "maxWidth":I
    move/from16 v0, v44

    #@1e2
    move/from16 v1, v28

    #@1e4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1e7
    move-result v34

    #@1e8
    .line 358
    .local v34, "maxHeight":I
    add-int v4, v45, v35

    #@1ea
    .line 359
    add-int v5, v49, v34

    #@1ec
    .line 358
    move/from16 v0, v45

    #@1ee
    move/from16 v1, v49

    #@1f0
    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    #@1f3
    .line 361
    const/16 v39, 0x0

    #@1f5
    .line 362
    .local v39, "positionAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v0, v45

    #@1f7
    if-ne v0, v8, :cond_12

    #@1f9
    move/from16 v0, v49

    #@1fb
    if-eq v0, v9, :cond_13

    #@1fd
    .line 363
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@200
    move-result-object v4

    #@201
    move/from16 v0, v45

    #@203
    int-to-float v5, v0

    #@204
    move/from16 v0, v49

    #@206
    int-to-float v12, v0

    #@207
    int-to-float v13, v8

    #@208
    .line 364
    int-to-float v14, v9

    #@209
    .line 363
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@20c
    move-result-object v54

    #@20d
    .line 365
    .restart local v54    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    #@20f
    const/4 v5, 0x0

    #@210
    move-object/from16 v0, v54

    #@212
    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@215
    move-result-object v39

    #@216
    .line 368
    .end local v39    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v54    # "topLeftPath":Landroid/graphics/Path;
    :cond_13
    move-object/from16 v7, v27

    #@218
    .line 369
    .local v7, "finalClip":Landroid/graphics/Rect;
    if-nez v43, :cond_14

    #@21a
    .line 370
    new-instance v43, Landroid/graphics/Rect;

    #@21c
    .end local v43    # "startClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    #@21d
    const/4 v5, 0x0

    #@21e
    move-object/from16 v0, v43

    #@220
    move/from16 v1, v50

    #@222
    move/from16 v2, v44

    #@224
    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@227
    .line 372
    .restart local v43    # "startClip":Landroid/graphics/Rect;
    :cond_14
    if-nez v27, :cond_15

    #@229
    .line 373
    new-instance v27, Landroid/graphics/Rect;

    #@22b
    .end local v27    # "endClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    #@22c
    const/4 v5, 0x0

    #@22d
    move-object/from16 v0, v27

    #@22f
    move/from16 v1, v31

    #@231
    move/from16 v2, v28

    #@233
    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@236
    .line 375
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    :cond_15
    const/16 v25, 0x0

    #@238
    .line 376
    .local v25, "clipAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v43

    #@23a
    move-object/from16 v1, v27

    #@23c
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@23f
    move-result v4

    #@240
    if-nez v4, :cond_16

    #@242
    .line 377
    move-object/from16 v0, v43

    #@244
    invoke-virtual {v6, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    #@247
    .line 378
    const-string/jumbo v4, "clipBounds"

    #@24a
    sget-object v5, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    #@24c
    const/4 v12, 0x2

    #@24d
    new-array v12, v12, [Ljava/lang/Object;

    #@24f
    .line 379
    const/4 v13, 0x0

    #@250
    aput-object v43, v12, v13

    #@252
    const/4 v13, 0x1

    #@253
    aput-object v27, v12, v13

    #@255
    .line 378
    invoke-static {v6, v4, v5, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@258
    move-result-object v25

    #@259
    .line 380
    .local v25, "clipAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/transition/ChangeBounds$8;

    #@25b
    move-object/from16 v5, p0

    #@25d
    invoke-direct/range {v4 .. v11}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    #@260
    move-object/from16 v0, v25

    #@262
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@265
    .line 398
    .end local v25    # "clipAnimator":Landroid/animation/ObjectAnimator;
    :cond_16
    move-object/from16 v0, v39

    #@267
    move-object/from16 v1, v25

    #@269
    invoke-static {v0, v1}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    #@26c
    move-result-object v18

    #@26d
    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    #@26f
    .line 435
    .end local v7    # "finalClip":Landroid/graphics/Rect;
    .end local v8    # "endLeft":I
    .end local v9    # "endTop":I
    .end local v10    # "endRight":I
    .end local v11    # "endBottom":I
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v26    # "endBounds":Landroid/graphics/Rect;
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .end local v28    # "endHeight":I
    .end local v31    # "endWidth":I
    .end local v34    # "maxHeight":I
    .end local v35    # "maxWidth":I
    .end local v36    # "numChanges":I
    .end local v41    # "startBottom":I
    .end local v42    # "startBounds":Landroid/graphics/Rect;
    .end local v43    # "startClip":Landroid/graphics/Rect;
    .end local v44    # "startHeight":I
    .end local v45    # "startLeft":I
    .end local v48    # "startRight":I
    .end local v49    # "startTop":I
    .end local v50    # "startWidth":I
    :cond_17
    move-object/from16 v0, p2

    #@271
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@273
    const-string/jumbo v5, "android:changeBounds:windowX"

    #@276
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@279
    move-result-object v4

    #@27a
    check-cast v4, Ljava/lang/Integer;

    #@27c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@27f
    move-result v51

    #@280
    .line 436
    .local v51, "startX":I
    move-object/from16 v0, p2

    #@282
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@284
    const-string/jumbo v5, "android:changeBounds:windowY"

    #@287
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28a
    move-result-object v4

    #@28b
    check-cast v4, Ljava/lang/Integer;

    #@28d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@290
    move-result v52

    #@291
    .line 437
    .local v52, "startY":I
    move-object/from16 v0, p3

    #@293
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@295
    const-string/jumbo v5, "android:changeBounds:windowX"

    #@298
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29b
    move-result-object v4

    #@29c
    check-cast v4, Ljava/lang/Integer;

    #@29e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2a1
    move-result v32

    #@2a2
    .line 438
    .local v32, "endX":I
    move-object/from16 v0, p3

    #@2a4
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2a6
    const-string/jumbo v5, "android:changeBounds:windowY"

    #@2a9
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2ac
    move-result-object v4

    #@2ad
    check-cast v4, Ljava/lang/Integer;

    #@2af
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2b2
    move-result v33

    #@2b3
    .line 440
    .local v33, "endY":I
    move/from16 v0, v51

    #@2b5
    move/from16 v1, v32

    #@2b7
    if-ne v0, v1, :cond_18

    #@2b9
    move/from16 v0, v52

    #@2bb
    move/from16 v1, v33

    #@2bd
    if-eq v0, v1, :cond_19

    #@2bf
    .line 441
    :cond_18
    move-object/from16 v0, p0

    #@2c1
    iget-object v4, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@2c3
    move-object/from16 v0, p1

    #@2c5
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    #@2c8
    .line 442
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    #@2cb
    move-result v4

    #@2cc
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    #@2cf
    move-result v5

    #@2d0
    .line 443
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@2d2
    .line 442
    invoke-static {v4, v5, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@2d5
    move-result-object v20

    #@2d6
    .line 444
    .local v20, "bitmap":Landroid/graphics/Bitmap;
    new-instance v24, Landroid/graphics/Canvas;

    #@2d8
    move-object/from16 v0, v24

    #@2da
    move-object/from16 v1, v20

    #@2dc
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@2df
    .line 445
    .local v24, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v24

    #@2e1
    invoke-virtual {v6, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@2e4
    .line 446
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    #@2e6
    move-object/from16 v0, v20

    #@2e8
    invoke-direct {v15, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@2eb
    .line 447
    .local v15, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/view/View;->getTransitionAlpha()F

    #@2ee
    move-result v17

    #@2ef
    .line 448
    .local v17, "transitionAlpha":F
    const/4 v4, 0x0

    #@2f0
    invoke-virtual {v6, v4}, Landroid/view/View;->setTransitionAlpha(F)V

    #@2f3
    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@2f6
    move-result-object v4

    #@2f7
    invoke-virtual {v4, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    #@2fa
    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@2fd
    move-result-object v4

    #@2fe
    move-object/from16 v0, p0

    #@300
    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@302
    const/4 v12, 0x0

    #@303
    aget v5, v5, v12

    #@305
    sub-int v5, v51, v5

    #@307
    int-to-float v5, v5

    #@308
    .line 451
    move-object/from16 v0, p0

    #@30a
    iget-object v12, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@30c
    const/4 v13, 0x1

    #@30d
    aget v12, v12, v13

    #@30f
    sub-int v12, v52, v12

    #@311
    int-to-float v12, v12

    #@312
    move-object/from16 v0, p0

    #@314
    iget-object v13, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@316
    const/4 v14, 0x0

    #@317
    aget v13, v13, v14

    #@319
    sub-int v13, v32, v13

    #@31b
    int-to-float v13, v13

    #@31c
    move-object/from16 v0, p0

    #@31e
    iget-object v14, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@320
    const/16 v16, 0x1

    #@322
    aget v14, v14, v16

    #@324
    sub-int v14, v33, v14

    #@326
    int-to-float v14, v14

    #@327
    .line 450
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@32a
    move-result-object v54

    #@32b
    .line 453
    .restart local v54    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    #@32d
    const/4 v5, 0x0

    #@32e
    .line 452
    move-object/from16 v0, v54

    #@330
    invoke-static {v4, v5, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    #@333
    move-result-object v37

    #@334
    .line 454
    .local v37, "origin":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x1

    #@335
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    #@337
    const/4 v5, 0x0

    #@338
    aput-object v37, v4, v5

    #@33a
    invoke-static {v15, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@33d
    move-result-object v19

    #@33e
    .line 455
    .local v19, "anim":Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/transition/ChangeBounds$10;

    #@340
    move-object/from16 v13, p0

    #@342
    move-object/from16 v14, p1

    #@344
    move-object/from16 v16, v6

    #@346
    invoke-direct/range {v12 .. v17}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    #@349
    move-object/from16 v0, v19

    #@34b
    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@34e
    .line 462
    return-object v19

    #@34f
    .line 465
    .end local v15    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "transitionAlpha":F
    .end local v19    # "anim":Landroid/animation/ObjectAnimator;
    .end local v20    # "bitmap":Landroid/graphics/Bitmap;
    .end local v24    # "canvas":Landroid/graphics/Canvas;
    .end local v32    # "endX":I
    .end local v33    # "endY":I
    .end local v37    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v51    # "startX":I
    .end local v52    # "startY":I
    .end local v54    # "topLeftPath":Landroid/graphics/Path;
    :cond_19
    const/4 v4, 0x0

    #@350
    return-object v4
.end method

.method public getResizeClip()Z
    .locals 1

    #@0
    .prologue
    .line 213
    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    #@2
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 183
    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    #@0
    .prologue
    .line 229
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    #@2
    .line 228
    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    #@0
    .prologue
    .line 201
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    #@2
    .line 200
    return-void
.end method
