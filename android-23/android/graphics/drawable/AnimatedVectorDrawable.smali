.class public Landroid/graphics/drawable/AnimatedVectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$1;
    }
.end annotation


# static fields
.field private static final ANIMATED_VECTOR:Ljava/lang/String; = "animated-vector"

.field private static final DBG_ANIMATION_VECTOR_DRAWABLE:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "AnimatedVectorDrawable"

.field private static final TARGET:Ljava/lang/String; = "target"


# instance fields
.field private mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

.field private mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Animatable2$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mHasAnimatorSet:Z

.field private mMutated:Z

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 161
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    #@4
    .line 160
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 164
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 141
    new-instance v0, Landroid/animation/AnimatorSet;

    #@6
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@b
    .line 157
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@d
    .line 158
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@f
    .line 644
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;

    #@11
    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$1;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    #@14
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@16
    .line 165
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@18
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@1a
    invoke-direct {v0, p1, v1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    #@1d
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@1f
    .line 166
    iput-object p2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@21
    .line 164
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private ensureAnimatorSet()V
    .locals 3

    #@0
    .prologue
    .line 605
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mHasAnimatorSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 606
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@8
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimators(Landroid/animation/AnimatorSet;Landroid/content/res/Resources;)V

    #@d
    .line 607
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mHasAnimatorSet:Z

    #@10
    .line 608
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@13
    .line 604
    :cond_0
    return-void
.end method

.method private isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 578
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private removeAnimatorSetListener()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 702
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 703
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@7
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@9
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    #@c
    .line 704
    iput-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@e
    .line 701
    :cond_0
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 369
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@4
    .line 371
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@6
    iget-object v0, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@8
    .line 372
    .local v0, "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->canApplyTheme()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 373
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@13
    .line 376
    :cond_0
    if-eqz p1, :cond_1

    #@15
    .line 377
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@17
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    #@1e
    .line 382
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@20
    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@22
    if-nez v1, :cond_2

    #@24
    .line 383
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@26
    .line 368
    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->canApplyTheme()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 364
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@f
    move-result v0

    #@10
    .line 363
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public canReverse()Z
    .locals 1

    #@0
    .prologue
    .line 641
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->canReverse()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public clearAnimationCallbacks()V
    .locals 1

    #@0
    .prologue
    .line 725
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->removeAnimatorSetListener()V

    #@3
    .line 726
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 727
    return-void

    #@8
    .line 730
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@d
    .line 724
    return-void
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 183
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 184
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@5
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 185
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@b
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@d
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->clearMutated()V

    #@10
    .line 187
    :cond_0
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    #@13
    .line 182
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    #@7
    .line 204
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isStarted()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 205
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    #@10
    .line 202
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getAlpha()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 198
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    #@8
    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@a
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getOpacity()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getOpticalInsets()Landroid/graphics/Insets;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->getOutline(Landroid/graphics/Outline;)V

    #@7
    .line 291
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 14
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 304
    iget-object v8, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    .line 306
    .local v8, "state":Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@5
    move-result v5

    #@6
    .line 307
    .local v5, "eventType":I
    const/high16 v7, 0x3f800000    # 1.0f

    #@8
    .line 308
    .local v7, "pathErrorScale":F
    :goto_0
    const/4 v12, 0x1

    #@9
    if-eq v5, v12, :cond_6

    #@b
    .line 309
    const/4 v12, 0x2

    #@c
    if-ne v5, v12, :cond_2

    #@e
    .line 310
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@11
    move-result-object v9

    #@12
    .line 311
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "animated-vector"

    #@15
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v12

    #@19
    if-eqz v12, :cond_3

    #@1b
    .line 313
    sget-object v12, Lcom/android/internal/R$styleable;->AnimatedVectorDrawable:[I

    #@1d
    .line 312
    move-object/from16 v0, p4

    #@1f
    move-object/from16 v1, p3

    #@21
    invoke-static {p1, v0, v1, v12}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@24
    move-result-object v2

    #@25
    .line 315
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    #@26
    const/4 v13, 0x0

    #@27
    .line 314
    invoke-virtual {v2, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2a
    move-result v4

    #@2b
    .line 316
    .local v4, "drawableRes":I
    if-eqz v4, :cond_1

    #@2d
    .line 317
    move-object/from16 v0, p4

    #@2f
    invoke-virtual {p1, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@32
    move-result-object v12

    #@33
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@36
    move-result-object v11

    #@37
    check-cast v11, Landroid/graphics/drawable/VectorDrawable;

    #@39
    .line 319
    .local v11, "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    const/4 v12, 0x0

    #@3a
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/VectorDrawable;->setAllowCaching(Z)V

    #@3d
    .line 320
    iget-object v12, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@3f
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@42
    .line 321
    invoke-virtual {v11}, Landroid/graphics/drawable/VectorDrawable;->getPixelSize()F

    #@45
    move-result v7

    #@46
    .line 322
    iget-object v12, v8, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@48
    if-eqz v12, :cond_0

    #@4a
    .line 323
    iget-object v12, v8, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4c
    const/4 v13, 0x0

    #@4d
    invoke-virtual {v12, v13}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@50
    .line 325
    :cond_0
    iput-object v11, v8, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@52
    .line 327
    .end local v11    # "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@55
    .line 353
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "drawableRes":I
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@58
    move-result v5

    #@59
    goto :goto_0

    #@5a
    .line 328
    .restart local v9    # "tagName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v12, "target"

    #@5d
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v12

    #@61
    if-eqz v12, :cond_2

    #@63
    .line 330
    sget-object v12, Lcom/android/internal/R$styleable;->AnimatedVectorDrawableTarget:[I

    #@65
    .line 329
    move-object/from16 v0, p4

    #@67
    move-object/from16 v1, p3

    #@69
    invoke-static {p1, v0, v1, v12}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6c
    move-result-object v2

    #@6d
    .line 332
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    #@6e
    .line 331
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@71
    move-result-object v10

    #@72
    .line 334
    .local v10, "target":Ljava/lang/String;
    const/4 v12, 0x1

    #@73
    const/4 v13, 0x0

    #@74
    .line 333
    invoke-virtual {v2, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@77
    move-result v3

    #@78
    .line 335
    .local v3, "animResId":I
    if-eqz v3, :cond_4

    #@7a
    .line 336
    if-eqz p4, :cond_5

    #@7c
    .line 337
    move-object/from16 v0, p4

    #@7e
    invoke-static {p1, v0, v3, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    #@81
    move-result-object v6

    #@82
    .line 339
    .local v6, "objectAnimator":Landroid/animation/Animator;
    invoke-virtual {v8, v10, v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V

    #@85
    .line 349
    .end local v6    # "objectAnimator":Landroid/animation/Animator;
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@88
    goto :goto_1

    #@89
    .line 345
    :cond_5
    invoke-virtual {v8, v3, v7, v10}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addPendingAnimator(IFLjava/lang/String;)V

    #@8c
    goto :goto_2

    #@8d
    .line 358
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "animResId":I
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "target":Ljava/lang/String;
    :cond_6
    iget-object v12, v8, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@8f
    if-nez v12, :cond_7

    #@91
    const/4 p1, 0x0

    #@92
    .end local p1    # "res":Landroid/content/res/Resources;
    :cond_7
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@94
    .line 303
    return-void
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 574
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    #@0
    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 172
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@c
    .line 173
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@e
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@10
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@12
    .line 172
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    #@15
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@17
    .line 174
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    #@1a
    .line 176
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    #@7
    .line 210
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setLayoutDirection(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setLevel(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setState([I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    #@0
    .prologue
    .line 663
    if-nez p1, :cond_0

    #@2
    .line 664
    return-void

    #@3
    .line 668
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 669
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@e
    .line 672
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 674
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@15
    if-nez v0, :cond_2

    #@17
    .line 677
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;

    #@19
    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$2;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    #@1c
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@1e
    .line 697
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@20
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@22
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@25
    .line 662
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    #@3
    .line 587
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    #@8
    .line 584
    return-void
.end method

.method public reverse()V
    .locals 2

    #@0
    .prologue
    .line 625
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    #@3
    .line 628
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 629
    const-string/jumbo v0, "AnimatedVectorDrawable"

    #@c
    const-string/jumbo v1, "AnimatedVectorDrawable can\'t reverse()"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 630
    return-void

    #@13
    .line 633
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    #@18
    .line 634
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    #@1b
    .line 624
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    #@7
    .line 235
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@7
    .line 240
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setHotspot(FF)V

    #@7
    .line 250
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->setHotspotBounds(IIII)V

    #@7
    .line 255
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@7
    .line 245
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@7
    .line 260
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setVisible(ZZ)Z

    #@7
    .line 267
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 592
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    #@3
    .line 595
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isStarted()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 596
    return-void

    #@a
    .line 599
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@c
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@f
    .line 600
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    #@12
    .line 591
    return-void
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 614
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #@2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    #@5
    .line 613
    return-void
.end method

.method public unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 710
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    if-nez p1, :cond_1

    #@7
    .line 712
    :cond_0
    return v2

    #@8
    .line 714
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 717
    .local v0, "removed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_2

    #@16
    .line 718
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->removeAnimatorSetListener()V

    #@19
    .line 720
    :cond_2
    return v0
.end method
