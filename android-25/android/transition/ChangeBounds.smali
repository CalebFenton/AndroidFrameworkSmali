.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$1;,
        Landroid/transition/ChangeBounds$2;,
        Landroid/transition/ChangeBounds$3;,
        Landroid/transition/ChangeBounds$4;,
        Landroid/transition/ChangeBounds$5;,
        Landroid/transition/ChangeBounds$6;,
        Landroid/transition/ChangeBounds$ViewBounds;
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
    .locals 60
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
    move-object/from16 v49, v0

    #@c
    .line 280
    .local v49, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
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
    move-object/from16 v0, v49

    #@17
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v48

    #@1b
    check-cast v48, Landroid/view/ViewGroup;

    #@1d
    .line 282
    .local v48, "startParent":Landroid/view/ViewGroup;
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
    if-eqz v48, :cond_2

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
    move-object/from16 v1, v48

    #@36
    move-object/from16 v2, v29

    #@38
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_16

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
    move-result-object v44

    #@49
    check-cast v44, Landroid/graphics/Rect;

    #@4b
    .line 289
    .local v44, "startBounds":Landroid/graphics/Rect;
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
    move-object/from16 v0, v44

    #@5a
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@5c
    move/from16 v47, v0

    #@5e
    .line 291
    .local v47, "startLeft":I
    move-object/from16 v0, v26

    #@60
    iget v8, v0, Landroid/graphics/Rect;->left:I

    #@62
    .line 292
    .local v8, "endLeft":I
    move-object/from16 v0, v44

    #@64
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@66
    move/from16 v51, v0

    #@68
    .line 293
    .local v51, "startTop":I
    move-object/from16 v0, v26

    #@6a
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@6c
    .line 294
    .local v9, "endTop":I
    move-object/from16 v0, v44

    #@6e
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@70
    move/from16 v50, v0

    #@72
    .line 295
    .local v50, "startRight":I
    move-object/from16 v0, v26

    #@74
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@76
    .line 296
    .local v10, "endRight":I
    move-object/from16 v0, v44

    #@78
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@7a
    move/from16 v43, v0

    #@7c
    .line 297
    .local v43, "startBottom":I
    move-object/from16 v0, v26

    #@7e
    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    #@80
    .line 298
    .local v11, "endBottom":I
    sub-int v52, v50, v47

    #@82
    .line 299
    .local v52, "startWidth":I
    sub-int v46, v43, v51

    #@84
    .line 300
    .local v46, "startHeight":I
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
    move-result-object v45

    #@93
    check-cast v45, Landroid/graphics/Rect;

    #@95
    .line 303
    .local v45, "startClip":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    #@97
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@99
    const-string/jumbo v5, "android:changeBounds:clip"

    #@9c
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    move-result-object v7

    #@a0
    check-cast v7, Landroid/graphics/Rect;

    #@a2
    .line 304
    .local v7, "endClip":Landroid/graphics/Rect;
    const/16 v38, 0x0

    #@a4
    .line 305
    .local v38, "numChanges":I
    if-eqz v52, :cond_c

    #@a6
    if-eqz v46, :cond_c

    #@a8
    .line 306
    :goto_0
    move/from16 v0, v47

    #@aa
    if-ne v0, v8, :cond_4

    #@ac
    move/from16 v0, v51

    #@ae
    if-eq v0, v9, :cond_5

    #@b0
    :cond_4
    const/16 v38, 0x1

    #@b2
    .line 307
    :cond_5
    move/from16 v0, v50

    #@b4
    if-ne v0, v10, :cond_6

    #@b6
    move/from16 v0, v43

    #@b8
    if-eq v0, v11, :cond_7

    #@ba
    :cond_6
    add-int/lit8 v38, v38, 0x1

    #@bc
    .line 309
    :cond_7
    if-eqz v45, :cond_8

    #@be
    move-object/from16 v0, v45

    #@c0
    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v4

    #@c4
    if-eqz v4, :cond_9

    #@c6
    .line 310
    :cond_8
    if-nez v45, :cond_a

    #@c8
    if-eqz v7, :cond_a

    #@ca
    .line 311
    :cond_9
    add-int/lit8 v38, v38, 0x1

    #@cc
    .line 313
    :cond_a
    if-lez v38, :cond_18

    #@ce
    .line 315
    move-object/from16 v0, p0

    #@d0
    iget-boolean v4, v0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    #@d2
    if-nez v4, :cond_11

    #@d4
    .line 316
    move/from16 v0, v47

    #@d6
    move/from16 v1, v51

    #@d8
    move/from16 v2, v50

    #@da
    move/from16 v3, v43

    #@dc
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    #@df
    .line 317
    const/4 v4, 0x2

    #@e0
    move/from16 v0, v38

    #@e2
    if-ne v0, v4, :cond_e

    #@e4
    .line 318
    move/from16 v0, v52

    #@e6
    move/from16 v1, v31

    #@e8
    if-ne v0, v1, :cond_d

    #@ea
    move/from16 v0, v46

    #@ec
    move/from16 v1, v28

    #@ee
    if-ne v0, v1, :cond_d

    #@f0
    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@f3
    move-result-object v4

    #@f4
    move/from16 v0, v47

    #@f6
    int-to-float v5, v0

    #@f7
    move/from16 v0, v51

    #@f9
    int-to-float v12, v0

    #@fa
    int-to-float v13, v8

    #@fb
    .line 320
    int-to-float v14, v9

    #@fc
    .line 319
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@ff
    move-result-object v56

    #@100
    .line 321
    .local v56, "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    #@102
    const/4 v5, 0x0

    #@103
    move-object/from16 v0, v56

    #@105
    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@108
    move-result-object v18

    #@109
    .line 401
    .end local v56    # "topLeftPath":Landroid/graphics/Path;
    .local v18, "anim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@10c
    move-result-object v4

    #@10d
    instance-of v4, v4, Landroid/view/ViewGroup;

    #@10f
    if-eqz v4, :cond_b

    #@111
    .line 402
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@114
    move-result-object v40

    #@115
    check-cast v40, Landroid/view/ViewGroup;

    #@117
    .line 403
    .local v40, "parent":Landroid/view/ViewGroup;
    const/4 v4, 0x1

    #@118
    move-object/from16 v0, v40

    #@11a
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    #@11d
    .line 404
    new-instance v57, Landroid/transition/ChangeBounds$9;

    #@11f
    move-object/from16 v0, v57

    #@121
    move-object/from16 v1, p0

    #@123
    move-object/from16 v2, v40

    #@125
    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    #@128
    .line 430
    .local v57, "transitionListener":Landroid/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    #@12a
    move-object/from16 v1, v57

    #@12c
    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@12f
    .line 432
    .end local v40    # "parent":Landroid/view/ViewGroup;
    .end local v57    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    :cond_b
    return-object v18

    #@130
    .line 305
    .end local v18    # "anim":Landroid/animation/Animator;
    :cond_c
    if-eqz v31, :cond_7

    #@132
    if-eqz v28, :cond_7

    #@134
    goto/16 :goto_0

    #@136
    .line 324
    :cond_d
    new-instance v58, Landroid/transition/ChangeBounds$ViewBounds;

    #@138
    move-object/from16 v0, v58

    #@13a
    invoke-direct {v0, v6}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    #@13d
    .line 325
    .local v58, "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@140
    move-result-object v4

    #@141
    move/from16 v0, v47

    #@143
    int-to-float v5, v0

    #@144
    move/from16 v0, v51

    #@146
    int-to-float v12, v0

    #@147
    .line 326
    int-to-float v13, v8

    #@148
    int-to-float v14, v9

    #@149
    .line 325
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@14c
    move-result-object v56

    #@14d
    .line 328
    .restart local v56    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    #@14f
    const/4 v5, 0x0

    #@150
    .line 327
    move-object/from16 v0, v58

    #@152
    move-object/from16 v1, v56

    #@154
    invoke-static {v0, v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@157
    move-result-object v55

    #@158
    .line 330
    .local v55, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@15b
    move-result-object v4

    #@15c
    move/from16 v0, v50

    #@15e
    int-to-float v5, v0

    #@15f
    move/from16 v0, v43

    #@161
    int-to-float v12, v0

    #@162
    .line 331
    int-to-float v13, v10

    #@163
    int-to-float v14, v11

    #@164
    .line 330
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@167
    move-result-object v23

    #@168
    .line 333
    .local v23, "bottomRightPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    #@16a
    const/4 v5, 0x0

    #@16b
    .line 332
    move-object/from16 v0, v58

    #@16d
    move-object/from16 v1, v23

    #@16f
    invoke-static {v0, v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@172
    move-result-object v22

    #@173
    .line 334
    .local v22, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v42, Landroid/animation/AnimatorSet;

    #@175
    invoke-direct/range {v42 .. v42}, Landroid/animation/AnimatorSet;-><init>()V

    #@178
    .line 335
    .local v42, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x2

    #@179
    new-array v4, v4, [Landroid/animation/Animator;

    #@17b
    const/4 v5, 0x0

    #@17c
    aput-object v55, v4, v5

    #@17e
    const/4 v5, 0x1

    #@17f
    aput-object v22, v4, v5

    #@181
    move-object/from16 v0, v42

    #@183
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@186
    .line 336
    move-object/from16 v18, v42

    #@188
    .line 337
    .restart local v18    # "anim":Landroid/animation/Animator;
    new-instance v4, Landroid/transition/ChangeBounds$7;

    #@18a
    move-object/from16 v0, p0

    #@18c
    move-object/from16 v1, v58

    #@18e
    invoke-direct {v4, v0, v1}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    #@191
    move-object/from16 v0, v42

    #@193
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@196
    goto/16 :goto_1

    #@198
    .line 343
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v22    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v23    # "bottomRightPath":Landroid/graphics/Path;
    .end local v42    # "set":Landroid/animation/AnimatorSet;
    .end local v55    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .end local v56    # "topLeftPath":Landroid/graphics/Path;
    .end local v58    # "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    :cond_e
    move/from16 v0, v47

    #@19a
    if-ne v0, v8, :cond_f

    #@19c
    move/from16 v0, v51

    #@19e
    if-eq v0, v9, :cond_10

    #@1a0
    .line 344
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@1a3
    move-result-object v4

    #@1a4
    move/from16 v0, v47

    #@1a6
    int-to-float v5, v0

    #@1a7
    move/from16 v0, v51

    #@1a9
    int-to-float v12, v0

    #@1aa
    .line 345
    int-to-float v13, v8

    #@1ab
    int-to-float v14, v9

    #@1ac
    .line 344
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@1af
    move-result-object v56

    #@1b0
    .line 346
    .restart local v56    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    #@1b2
    const/4 v5, 0x0

    #@1b3
    move-object/from16 v0, v56

    #@1b5
    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@1b8
    move-result-object v18

    #@1b9
    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    #@1bb
    .line 349
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v56    # "topLeftPath":Landroid/graphics/Path;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@1be
    move-result-object v4

    #@1bf
    move/from16 v0, v50

    #@1c1
    int-to-float v5, v0

    #@1c2
    move/from16 v0, v43

    #@1c4
    int-to-float v12, v0

    #@1c5
    .line 350
    int-to-float v13, v10

    #@1c6
    int-to-float v14, v11

    #@1c7
    .line 349
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@1ca
    move-result-object v21

    #@1cb
    .line 351
    .local v21, "bottomRight":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    #@1cd
    const/4 v5, 0x0

    #@1ce
    move-object/from16 v0, v21

    #@1d0
    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@1d3
    move-result-object v18

    #@1d4
    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_1

    #@1d6
    .line 355
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v21    # "bottomRight":Landroid/graphics/Path;
    :cond_11
    move/from16 v0, v52

    #@1d8
    move/from16 v1, v31

    #@1da
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1dd
    move-result v37

    #@1de
    .line 356
    .local v37, "maxWidth":I
    move/from16 v0, v46

    #@1e0
    move/from16 v1, v28

    #@1e2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1e5
    move-result v36

    #@1e6
    .line 358
    .local v36, "maxHeight":I
    add-int v4, v47, v37

    #@1e8
    .line 359
    add-int v5, v51, v36

    #@1ea
    .line 358
    move/from16 v0, v47

    #@1ec
    move/from16 v1, v51

    #@1ee
    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    #@1f1
    .line 361
    const/16 v41, 0x0

    #@1f3
    .line 362
    .local v41, "positionAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v0, v47

    #@1f5
    if-ne v0, v8, :cond_12

    #@1f7
    move/from16 v0, v51

    #@1f9
    if-eq v0, v9, :cond_13

    #@1fb
    .line 363
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@1fe
    move-result-object v4

    #@1ff
    move/from16 v0, v47

    #@201
    int-to-float v5, v0

    #@202
    move/from16 v0, v51

    #@204
    int-to-float v12, v0

    #@205
    int-to-float v13, v8

    #@206
    .line 364
    int-to-float v14, v9

    #@207
    .line 363
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@20a
    move-result-object v56

    #@20b
    .line 365
    .restart local v56    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    #@20d
    const/4 v5, 0x0

    #@20e
    move-object/from16 v0, v56

    #@210
    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    #@213
    move-result-object v41

    #@214
    .line 368
    .end local v41    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v56    # "topLeftPath":Landroid/graphics/Path;
    :cond_13
    move-object/from16 v34, v7

    #@216
    .line 369
    .local v34, "finalClip":Landroid/graphics/Rect;
    if-nez v45, :cond_14

    #@218
    .line 370
    new-instance v45, Landroid/graphics/Rect;

    #@21a
    .end local v45    # "startClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    #@21b
    const/4 v5, 0x0

    #@21c
    move-object/from16 v0, v45

    #@21e
    move/from16 v1, v52

    #@220
    move/from16 v2, v46

    #@222
    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@225
    .line 372
    .restart local v45    # "startClip":Landroid/graphics/Rect;
    :cond_14
    if-nez v7, :cond_19

    #@227
    .line 373
    new-instance v27, Landroid/graphics/Rect;

    #@229
    const/4 v4, 0x0

    #@22a
    const/4 v5, 0x0

    #@22b
    move-object/from16 v0, v27

    #@22d
    move/from16 v1, v31

    #@22f
    move/from16 v2, v28

    #@231
    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@234
    .line 375
    .end local v7    # "endClip":Landroid/graphics/Rect;
    .local v27, "endClip":Landroid/graphics/Rect;
    :goto_2
    const/16 v25, 0x0

    #@236
    .line 376
    .local v25, "clipAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v45

    #@238
    move-object/from16 v1, v27

    #@23a
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@23d
    move-result v4

    #@23e
    if-nez v4, :cond_15

    #@240
    .line 377
    move-object/from16 v0, v45

    #@242
    invoke-virtual {v6, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    #@245
    .line 378
    const-string/jumbo v4, "clipBounds"

    #@248
    sget-object v5, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    #@24a
    const/4 v12, 0x2

    #@24b
    new-array v12, v12, [Ljava/lang/Object;

    #@24d
    .line 379
    const/4 v13, 0x0

    #@24e
    aput-object v45, v12, v13

    #@250
    const/4 v13, 0x1

    #@251
    aput-object v27, v12, v13

    #@253
    .line 378
    invoke-static {v6, v4, v5, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@256
    move-result-object v25

    #@257
    .line 380
    .local v25, "clipAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/transition/ChangeBounds$8;

    #@259
    move-object/from16 v5, p0

    #@25b
    invoke-direct/range {v4 .. v11}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    #@25e
    move-object/from16 v0, v25

    #@260
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@263
    .line 398
    .end local v25    # "clipAnimator":Landroid/animation/ObjectAnimator;
    :cond_15
    move-object/from16 v0, v41

    #@265
    move-object/from16 v1, v25

    #@267
    invoke-static {v0, v1}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    #@26a
    move-result-object v18

    #@26b
    .restart local v18    # "anim":Landroid/animation/Animator;
    move-object/from16 v7, v27

    #@26d
    .end local v27    # "endClip":Landroid/graphics/Rect;
    .restart local v7    # "endClip":Landroid/graphics/Rect;
    goto/16 :goto_1

    #@26f
    .line 435
    .end local v7    # "endClip":Landroid/graphics/Rect;
    .end local v8    # "endLeft":I
    .end local v9    # "endTop":I
    .end local v10    # "endRight":I
    .end local v11    # "endBottom":I
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v26    # "endBounds":Landroid/graphics/Rect;
    .end local v28    # "endHeight":I
    .end local v31    # "endWidth":I
    .end local v34    # "finalClip":Landroid/graphics/Rect;
    .end local v36    # "maxHeight":I
    .end local v37    # "maxWidth":I
    .end local v38    # "numChanges":I
    .end local v43    # "startBottom":I
    .end local v44    # "startBounds":Landroid/graphics/Rect;
    .end local v45    # "startClip":Landroid/graphics/Rect;
    .end local v46    # "startHeight":I
    .end local v47    # "startLeft":I
    .end local v50    # "startRight":I
    .end local v51    # "startTop":I
    .end local v52    # "startWidth":I
    :cond_16
    move-object/from16 v0, p0

    #@271
    iget-object v4, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@273
    move-object/from16 v0, p1

    #@275
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    #@278
    .line 436
    move-object/from16 v0, p2

    #@27a
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@27c
    const-string/jumbo v5, "android:changeBounds:windowX"

    #@27f
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@282
    move-result-object v4

    #@283
    check-cast v4, Ljava/lang/Integer;

    #@285
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@288
    move-result v4

    #@289
    move-object/from16 v0, p0

    #@28b
    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@28d
    const/4 v12, 0x0

    #@28e
    aget v5, v5, v12

    #@290
    sub-int v53, v4, v5

    #@292
    .line 437
    .local v53, "startX":I
    move-object/from16 v0, p2

    #@294
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@296
    const-string/jumbo v5, "android:changeBounds:windowY"

    #@299
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29c
    move-result-object v4

    #@29d
    check-cast v4, Ljava/lang/Integer;

    #@29f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2a2
    move-result v4

    #@2a3
    move-object/from16 v0, p0

    #@2a5
    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@2a7
    const/4 v12, 0x1

    #@2a8
    aget v5, v5, v12

    #@2aa
    sub-int v54, v4, v5

    #@2ac
    .line 438
    .local v54, "startY":I
    move-object/from16 v0, p3

    #@2ae
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2b0
    const-string/jumbo v5, "android:changeBounds:windowX"

    #@2b3
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b6
    move-result-object v4

    #@2b7
    check-cast v4, Ljava/lang/Integer;

    #@2b9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2bc
    move-result v4

    #@2bd
    move-object/from16 v0, p0

    #@2bf
    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@2c1
    const/4 v12, 0x0

    #@2c2
    aget v5, v5, v12

    #@2c4
    sub-int v32, v4, v5

    #@2c6
    .line 439
    .local v32, "endX":I
    move-object/from16 v0, p3

    #@2c8
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2ca
    const-string/jumbo v5, "android:changeBounds:windowY"

    #@2cd
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d0
    move-result-object v4

    #@2d1
    check-cast v4, Ljava/lang/Integer;

    #@2d3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2d6
    move-result v4

    #@2d7
    move-object/from16 v0, p0

    #@2d9
    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    #@2db
    const/4 v12, 0x1

    #@2dc
    aget v5, v5, v12

    #@2de
    sub-int v33, v4, v5

    #@2e0
    .line 441
    .local v33, "endY":I
    move/from16 v0, v53

    #@2e2
    move/from16 v1, v32

    #@2e4
    if-ne v0, v1, :cond_17

    #@2e6
    move/from16 v0, v54

    #@2e8
    move/from16 v1, v33

    #@2ea
    if-eq v0, v1, :cond_18

    #@2ec
    .line 442
    :cond_17
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    #@2ef
    move-result v59

    #@2f0
    .line 443
    .local v59, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    #@2f3
    move-result v35

    #@2f4
    .line 444
    .local v35, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@2f6
    move/from16 v0, v59

    #@2f8
    move/from16 v1, v35

    #@2fa
    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@2fd
    move-result-object v20

    #@2fe
    .line 445
    .local v20, "bitmap":Landroid/graphics/Bitmap;
    new-instance v24, Landroid/graphics/Canvas;

    #@300
    move-object/from16 v0, v24

    #@302
    move-object/from16 v1, v20

    #@304
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@307
    .line 446
    .local v24, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v24

    #@309
    invoke-virtual {v6, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@30c
    .line 447
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    #@30e
    move-object/from16 v0, v20

    #@310
    invoke-direct {v15, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@313
    .line 448
    .local v15, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    add-int v4, v53, v59

    #@315
    add-int v5, v54, v35

    #@317
    move/from16 v0, v53

    #@319
    move/from16 v1, v54

    #@31b
    invoke-virtual {v15, v0, v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    #@31e
    .line 449
    invoke-virtual {v6}, Landroid/view/View;->getTransitionAlpha()F

    #@321
    move-result v17

    #@322
    .line 450
    .local v17, "transitionAlpha":F
    const/4 v4, 0x0

    #@323
    invoke-virtual {v6, v4}, Landroid/view/View;->setTransitionAlpha(F)V

    #@326
    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@329
    move-result-object v4

    #@32a
    invoke-virtual {v4, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    #@32d
    .line 452
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    #@330
    move-result-object v4

    #@331
    move/from16 v0, v53

    #@333
    int-to-float v5, v0

    #@334
    move/from16 v0, v54

    #@336
    int-to-float v12, v0

    #@337
    move/from16 v0, v32

    #@339
    int-to-float v13, v0

    #@33a
    move/from16 v0, v33

    #@33c
    int-to-float v14, v0

    #@33d
    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@340
    move-result-object v56

    #@341
    .line 454
    .restart local v56    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    #@343
    const/4 v5, 0x0

    #@344
    .line 453
    move-object/from16 v0, v56

    #@346
    invoke-static {v4, v5, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    #@349
    move-result-object v39

    #@34a
    .line 455
    .local v39, "origin":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x1

    #@34b
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    #@34d
    const/4 v5, 0x0

    #@34e
    aput-object v39, v4, v5

    #@350
    invoke-static {v15, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@353
    move-result-object v19

    #@354
    .line 456
    .local v19, "anim":Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/transition/ChangeBounds$10;

    #@356
    move-object/from16 v13, p0

    #@358
    move-object/from16 v14, p1

    #@35a
    move-object/from16 v16, v6

    #@35c
    invoke-direct/range {v12 .. v17}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    #@35f
    move-object/from16 v0, v19

    #@361
    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@364
    .line 463
    return-object v19

    #@365
    .line 466
    .end local v15    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "transitionAlpha":F
    .end local v19    # "anim":Landroid/animation/ObjectAnimator;
    .end local v20    # "bitmap":Landroid/graphics/Bitmap;
    .end local v24    # "canvas":Landroid/graphics/Canvas;
    .end local v32    # "endX":I
    .end local v33    # "endY":I
    .end local v35    # "height":I
    .end local v39    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v53    # "startX":I
    .end local v54    # "startY":I
    .end local v56    # "topLeftPath":Landroid/graphics/Path;
    .end local v59    # "width":I
    :cond_18
    const/4 v4, 0x0

    #@366
    return-object v4

    #@367
    .restart local v7    # "endClip":Landroid/graphics/Rect;
    .restart local v8    # "endLeft":I
    .restart local v9    # "endTop":I
    .restart local v10    # "endRight":I
    .restart local v11    # "endBottom":I
    .restart local v26    # "endBounds":Landroid/graphics/Rect;
    .restart local v28    # "endHeight":I
    .restart local v31    # "endWidth":I
    .restart local v34    # "finalClip":Landroid/graphics/Rect;
    .restart local v36    # "maxHeight":I
    .restart local v37    # "maxWidth":I
    .restart local v38    # "numChanges":I
    .restart local v43    # "startBottom":I
    .restart local v44    # "startBounds":Landroid/graphics/Rect;
    .restart local v45    # "startClip":Landroid/graphics/Rect;
    .restart local v46    # "startHeight":I
    .restart local v47    # "startLeft":I
    .restart local v50    # "startRight":I
    .restart local v51    # "startTop":I
    .restart local v52    # "startWidth":I
    :cond_19
    move-object/from16 v27, v7

    #@369
    .end local v7    # "endClip":Landroid/graphics/Rect;
    .restart local v27    # "endClip":Landroid/graphics/Rect;
    goto/16 :goto_2
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
