.class public Landroid/graphics/drawable/AnimatedVectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedVectorDrawable$1;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;
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

.field private mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

.field private mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mMutated:Z

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    #@0
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->shouldIgnoreInvalidAnimation()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1()J
    .locals 2

    #@0
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateAnimatorSet()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap10(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0
    .param p0, "animatorSetPtr"    # J
    .param p2, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p3, "id"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(J[FI)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "data"    # [F
    .param p3, "length"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetPropertyHolderData(J[FI)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(J[II)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "data"    # [I
    .param p3, "length"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetPropertyHolderData(J[II)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(JJ)V
    .locals 0
    .param p0, "animatorPtr"    # J
    .param p2, "vectorDrawablePtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetVectorDrawableTarget(JJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0
    .param p0, "animatorSetPtr"    # J
    .param p2, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p3, "id"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "vectorDrawable"    # Landroid/graphics/drawable/VectorDrawable;
    .param p3, "ignoreInvalidAnim"    # Z

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(JIFF)J
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "propertyId"    # I
    .param p3, "startValue"    # F
    .param p4, "endValue"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateGroupPropertyHolder(JIFF)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap3(JIII)J
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "propertyId"    # I
    .param p3, "startValue"    # I
    .param p4, "endValue"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathColorPropertyHolder(JIII)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap4(JJJ)J
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "startValuePtr"    # J
    .param p4, "endValuePtr"    # J

    #@0
    .prologue
    invoke-static/range {p0 .. p5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathDataPropertyHolder(JJJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap5(JIFF)J
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "propertyId"    # I
    .param p3, "startValue"    # F
    .param p4, "endValue"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathPropertyHolder(JIFF)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap6(JFF)J
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "startValue"    # F
    .param p3, "endValue"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateRootAlphaPropertyHolder(JFF)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap7(JJJJJII)V
    .locals 0
    .param p0, "setPtr"    # J
    .param p2, "propertyValuesHolder"    # J
    .param p4, "nativeInterpolator"    # J
    .param p6, "startDelay"    # J
    .param p8, "duration"    # J
    .param p10, "repeatCount"    # I
    .param p11, "repeatMode"    # I

    #@0
    .prologue
    invoke-static/range {p0 .. p11}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nAddAnimator(JJJJJII)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(J)V
    .locals 0
    .param p0, "animatorSetPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nEnd(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(J)V
    .locals 0
    .param p0, "animatorSetPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nReset(J)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 254
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    #@4
    .line 253
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 257
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 245
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    #@6
    .line 250
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@8
    .line 251
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@a
    .line 893
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;

    #@c
    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$1;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    #@f
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@11
    .line 258
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@13
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@15
    invoke-direct {v0, p1, v1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    #@18
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@1a
    .line 259
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    #@1c
    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    #@1f
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@21
    .line 260
    iput-object p2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@23
    .line 257
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

.method private static containsSameValueType(Landroid/animation/PropertyValuesHolder;Landroid/util/Property;)Z
    .locals 5
    .param p0, "holder"    # Landroid/animation/PropertyValuesHolder;
    .param p1, "property"    # Landroid/util/Property;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 556
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getValueType()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 557
    .local v0, "type1":Ljava/lang/Class;
    invoke-virtual {p1}, Landroid/util/Property;->getType()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    .line 558
    .local v1, "type2":Ljava/lang/Class;
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@c
    if-eq v0, v4, :cond_0

    #@e
    const-class v4, Ljava/lang/Float;

    #@10
    if-ne v0, v4, :cond_3

    #@12
    .line 559
    :cond_0
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@14
    if-eq v1, v4, :cond_1

    #@16
    const-class v4, Ljava/lang/Float;

    #@18
    if-ne v1, v4, :cond_2

    #@1a
    :cond_1
    :goto_0
    return v2

    #@1b
    :cond_2
    move v2, v3

    #@1c
    goto :goto_0

    #@1d
    .line 560
    :cond_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1f
    if-eq v0, v4, :cond_4

    #@21
    const-class v4, Ljava/lang/Integer;

    #@23
    if-ne v0, v4, :cond_7

    #@25
    .line 561
    :cond_4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@27
    if-eq v1, v4, :cond_5

    #@29
    const-class v4, Ljava/lang/Integer;

    #@2b
    if-ne v1, v4, :cond_6

    #@2d
    :cond_5
    :goto_1
    return v2

    #@2e
    :cond_6
    move v2, v3

    #@2f
    goto :goto_1

    #@30
    .line 563
    :cond_7
    if-ne v0, v1, :cond_8

    #@32
    :goto_2
    return v2

    #@33
    :cond_8
    move v2, v3

    #@34
    goto :goto_2
.end method

.method private ensureAnimatorSet()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 846
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 849
    new-instance v0, Landroid/animation/AnimatorSet;

    #@7
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@a
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    #@c
    .line 850
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@e
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    #@10
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimators(Landroid/animation/AnimatorSet;Landroid/content/res/Resources;)V

    #@15
    .line 851
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@17
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    #@19
    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->init(Landroid/animation/AnimatorSet;)V

    #@1c
    .line 852
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@1e
    .line 845
    :cond_0
    return-void
.end method

.method private fallbackOntoUI()V
    .locals 3

    #@0
    .prologue
    .line 583
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@2
    instance-of v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 584
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@8
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    #@a
    .line 585
    .local v0, "oldAnim":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;

    #@c
    invoke-direct {v1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    #@f
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@11
    .line 586
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 587
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@17
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    #@19
    invoke-interface {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->init(Landroid/animation/AnimatorSet;)V

    #@1c
    .line 590
    :cond_0
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;

    #@1f
    move-result-object v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 591
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@24
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    #@2b
    .line 593
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@2d
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-wrap0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V

    #@30
    .line 582
    .end local v0    # "oldAnim":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    :cond_2
    return-void
.end method

.method private static native nAddAnimator(JJJJJII)V
.end method

.method private static native nCreateAnimatorSet()J
.end method

.method private static native nCreateGroupPropertyHolder(JIFF)J
.end method

.method private static native nCreatePathColorPropertyHolder(JIII)J
.end method

.method private static native nCreatePathDataPropertyHolder(JJJ)J
.end method

.method private static native nCreatePathPropertyHolder(JIFF)J
.end method

.method private static native nCreateRootAlphaPropertyHolder(JFF)J
.end method

.method private static native nEnd(J)V
.end method

.method private static native nReset(J)V
.end method

.method private static native nReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
.end method

.method private static native nSetPropertyHolderData(J[FI)V
.end method

.method private static native nSetPropertyHolderData(J[II)V
.end method

.method private static native nSetVectorDrawableTarget(JJ)V
.end method

.method private static native nStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
.end method

.method private removeAnimatorSetListener()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 951
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 952
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@7
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@9
    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    #@c
    .line 953
    iput-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@e
    .line 950
    :cond_0
    return-void
.end method

.method private static shouldIgnoreInvalidAnimation()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 292
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@4
    move-result-object v0

    #@5
    .line 293
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v1

    #@b
    if-nez v1, :cond_1

    #@d
    .line 294
    :cond_0
    return v3

    #@e
    .line 296
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@11
    move-result-object v1

    #@12
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@14
    const/16 v2, 0x18

    #@16
    if-ge v1, v2, :cond_2

    #@18
    .line 297
    return v3

    #@19
    .line 299
    :cond_2
    const/4 v1, 0x0

    #@1a
    return v1
.end method

.method private static updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V
    .locals 11
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "vectorDrawable"    # Landroid/graphics/drawable/VectorDrawable;
    .param p3, "ignoreInvalidAnim"    # Z

    #@0
    .prologue
    .line 520
    instance-of v8, p0, Landroid/animation/ObjectAnimator;

    #@2
    if-eqz v8, :cond_4

    #@4
    .line 525
    check-cast p0, Landroid/animation/ObjectAnimator;

    #@6
    .end local p0    # "animator":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    #@9
    move-result-object v2

    #@a
    .line 526
    .local v2, "holders":[Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    array-length v8, v2

    #@c
    if-ge v3, v8, :cond_5

    #@e
    .line 527
    aget-object v6, v2, v3

    #@10
    .line 528
    .local v6, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 529
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/VectorDrawable;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object v7

    #@18
    .line 530
    .local v7, "targetNameObj":Ljava/lang/Object;
    const/4 v4, 0x0

    #@19
    .line 531
    .local v4, "property":Landroid/util/Property;
    instance-of v8, v7, Landroid/graphics/drawable/VectorDrawable$VObject;

    #@1b
    if-eqz v8, :cond_2

    #@1d
    .line 532
    check-cast v7, Landroid/graphics/drawable/VectorDrawable$VObject;

    #@1f
    .end local v7    # "targetNameObj":Ljava/lang/Object;
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/VectorDrawable$VObject;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    #@22
    move-result-object v4

    #@23
    .line 537
    .end local v4    # "property":Landroid/util/Property;
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    #@25
    .line 538
    invoke-static {v6, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->containsSameValueType(Landroid/animation/PropertyValuesHolder;Landroid/util/Property;)Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_3

    #@2b
    .line 539
    invoke-virtual {v6, v4}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    #@2e
    .line 526
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_0

    #@31
    .line 533
    .restart local v4    # "property":Landroid/util/Property;
    .restart local v7    # "targetNameObj":Ljava/lang/Object;
    :cond_2
    instance-of v8, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@33
    if-eqz v8, :cond_0

    #@35
    .line 534
    check-cast v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@37
    .end local v7    # "targetNameObj":Ljava/lang/Object;
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    #@3a
    move-result-object v4

    #@3b
    .local v4, "property":Landroid/util/Property;
    goto :goto_1

    #@3c
    .line 540
    .end local v4    # "property":Landroid/util/Property;
    :cond_3
    if-nez p3, :cond_1

    #@3e
    .line 541
    new-instance v8, Ljava/lang/RuntimeException;

    #@40
    new-instance v9, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v10, "Wrong valueType for Property: "

    #@48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v9

    #@50
    .line 542
    const-string/jumbo v10, ".  Expected type: "

    #@53
    .line 541
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    .line 542
    invoke-virtual {v4}, Landroid/util/Property;->getType()Ljava/lang/Class;

    #@5a
    move-result-object v10

    #@5b
    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@5e
    move-result-object v10

    #@5f
    .line 541
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v9

    #@63
    .line 542
    const-string/jumbo v10, ". Actual "

    #@66
    .line 541
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v9

    #@6a
    .line 543
    const-string/jumbo v10, "type defined in resources: "

    #@6d
    .line 541
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v9

    #@71
    .line 543
    invoke-virtual {v6}, Landroid/animation/PropertyValuesHolder;->getValueType()Ljava/lang/Class;

    #@74
    move-result-object v10

    #@75
    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@78
    move-result-object v10

    #@79
    .line 541
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v9

    #@81
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@84
    throw v8

    #@85
    .line 548
    .end local v2    # "holders":[Landroid/animation/PropertyValuesHolder;
    .end local v3    # "i":I
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "pvh":Landroid/animation/PropertyValuesHolder;
    .restart local p0    # "animator":Landroid/animation/Animator;
    :cond_4
    instance-of v8, p0, Landroid/animation/AnimatorSet;

    #@87
    if-eqz v8, :cond_5

    #@89
    .line 549
    check-cast p0, Landroid/animation/AnimatorSet;

    #@8b
    .end local p0    # "animator":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    #@8e
    move-result-object v8

    #@8f
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@92
    move-result-object v1

    #@93
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@96
    move-result v8

    #@97
    if-eqz v8, :cond_5

    #@99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9c
    move-result-object v0

    #@9d
    check-cast v0, Landroid/animation/Animator;

    #@9f
    .line 550
    .local v0, "anim":Landroid/animation/Animator;
    invoke-static {v0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    #@a2
    goto :goto_2

    #@a3
    .line 519
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    :cond_5
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
    .line 605
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@4
    .line 607
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@6
    iget-object v0, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@8
    .line 608
    .local v0, "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->canApplyTheme()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 609
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@13
    .line 612
    :cond_0
    if-eqz p1, :cond_1

    #@15
    .line 613
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@17
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    #@1e
    .line 618
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@20
    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@22
    if-nez v1, :cond_2

    #@24
    .line 619
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@26
    .line 604
    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 599
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
    .line 600
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@f
    move-result v0

    #@10
    .line 599
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
    .line 890
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@2
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->canReverse()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public clearAnimationCallbacks()V
    .locals 1

    #@0
    .prologue
    .line 974
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->removeAnimatorSetListener()V

    #@3
    .line 975
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 976
    return-void

    #@8
    .line 979
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@d
    .line 973
    return-void
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 277
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 278
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@5
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 279
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@b
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@d
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->clearMutated()V

    #@10
    .line 281
    :cond_0
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    #@13
    .line 276
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@8
    instance-of v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 329
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@e
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isRunning()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 330
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@16
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    #@18
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-get1(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/util/IntArray;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    #@1f
    move-result v0

    #@20
    if-lez v0, :cond_0

    #@22
    .line 331
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->fallbackOntoUI()V

    #@25
    .line 334
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@27
    invoke-interface {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->onDraw(Landroid/graphics/Canvas;)V

    #@2a
    .line 335
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2c
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@2e
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    #@31
    .line 325
    return-void
.end method

.method public forceAnimationOnUI()V
    .locals 3

    #@0
    .prologue
    .line 572
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@2
    instance-of v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 573
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@8
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    #@a
    .line 574
    .local v0, "animator":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->isRunning()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 575
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@12
    const-string/jumbo v2, "Cannot force Animated Vector Drawable to run on UI thread when the animation has started on RenderThread."

    #@15
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 578
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->fallbackOntoUI()V

    #@1c
    .line 571
    .end local v0    # "animator":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 367
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
    .line 310
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

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    #@8
    .line 305
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@a
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 437
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
    .line 432
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
    .line 427
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    #@0
    .prologue
    .line 448
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
    .line 442
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->getOutline(Landroid/graphics/Outline;)V

    #@7
    .line 441
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
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
    .line 454
    move-object/from16 v0, p0

    #@2
    iget-object v10, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@4
    .line 456
    .local v10, "state":Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@7
    move-result v7

    #@8
    .line 457
    .local v7, "eventType":I
    const/high16 v9, 0x3f800000    # 1.0f

    #@a
    .line 458
    .local v9, "pathErrorScale":F
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@d
    move-result v14

    #@e
    add-int/lit8 v8, v14, 0x1

    #@10
    .line 461
    .local v8, "innerDepth":I
    :goto_0
    const/4 v14, 0x1

    #@11
    if-eq v7, v14, :cond_7

    #@13
    .line 462
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v14

    #@17
    if-ge v14, v8, :cond_0

    #@19
    const/4 v14, 0x3

    #@1a
    if-eq v7, v14, :cond_7

    #@1c
    .line 463
    :cond_0
    const/4 v14, 0x2

    #@1d
    if-ne v7, v14, :cond_3

    #@1f
    .line 464
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@22
    move-result-object v11

    #@23
    .line 465
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "animated-vector"

    #@26
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v14

    #@2a
    if-eqz v14, :cond_4

    #@2c
    .line 467
    sget-object v14, Lcom/android/internal/R$styleable;->AnimatedVectorDrawable:[I

    #@2e
    .line 466
    move-object/from16 v0, p1

    #@30
    move-object/from16 v1, p4

    #@32
    move-object/from16 v2, p3

    #@34
    invoke-static {v0, v1, v2, v14}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@37
    move-result-object v3

    #@38
    .line 469
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    #@39
    const/4 v15, 0x0

    #@3a
    .line 468
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3d
    move-result v6

    #@3e
    .line 470
    .local v6, "drawableRes":I
    if-eqz v6, :cond_2

    #@40
    .line 471
    move-object/from16 v0, p1

    #@42
    move-object/from16 v1, p4

    #@44
    invoke-virtual {v0, v6, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@47
    move-result-object v14

    #@48
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@4b
    move-result-object v13

    #@4c
    check-cast v13, Landroid/graphics/drawable/VectorDrawable;

    #@4e
    .line 473
    .local v13, "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    const/4 v14, 0x0

    #@4f
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/VectorDrawable;->setAllowCaching(Z)V

    #@52
    .line 474
    move-object/from16 v0, p0

    #@54
    iget-object v14, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@56
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@59
    .line 475
    invoke-virtual {v13}, Landroid/graphics/drawable/VectorDrawable;->getPixelSize()F

    #@5c
    move-result v9

    #@5d
    .line 476
    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@5f
    if-eqz v14, :cond_1

    #@61
    .line 477
    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@63
    const/4 v15, 0x0

    #@64
    invoke-virtual {v14, v15}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@67
    .line 479
    :cond_1
    iput-object v13, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@69
    .line 481
    .end local v13    # "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@6c
    .line 510
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "drawableRes":I
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6f
    move-result v7

    #@70
    goto :goto_0

    #@71
    .line 482
    .restart local v11    # "tagName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v14, "target"

    #@74
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v14

    #@78
    if-eqz v14, :cond_3

    #@7a
    .line 484
    sget-object v14, Lcom/android/internal/R$styleable;->AnimatedVectorDrawableTarget:[I

    #@7c
    .line 483
    move-object/from16 v0, p1

    #@7e
    move-object/from16 v1, p4

    #@80
    move-object/from16 v2, p3

    #@82
    invoke-static {v0, v1, v2, v14}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@85
    move-result-object v3

    #@86
    .line 486
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    #@87
    .line 485
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@8a
    move-result-object v12

    #@8b
    .line 488
    .local v12, "target":Ljava/lang/String;
    const/4 v14, 0x1

    #@8c
    const/4 v15, 0x0

    #@8d
    .line 487
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@90
    move-result v4

    #@91
    .line 489
    .local v4, "animResId":I
    if-eqz v4, :cond_5

    #@93
    .line 490
    if-eqz p4, :cond_6

    #@95
    .line 492
    move-object/from16 v0, p1

    #@97
    move-object/from16 v1, p4

    #@99
    invoke-static {v0, v1, v4, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    #@9c
    move-result-object v5

    #@9d
    .line 494
    .local v5, "animator":Landroid/animation/Animator;
    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@9f
    .line 495
    invoke-static {v10}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    #@a2
    move-result v15

    #@a3
    .line 494
    invoke-static {v5, v12, v14, v15}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    #@a6
    .line 496
    invoke-virtual {v10, v12, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V

    #@a9
    .line 506
    .end local v5    # "animator":Landroid/animation/Animator;
    :cond_5
    :goto_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@ac
    goto :goto_1

    #@ad
    .line 502
    :cond_6
    invoke-virtual {v10, v4, v9, v12}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addPendingAnimator(IFLjava/lang/String;)V

    #@b0
    goto :goto_2

    #@b1
    .line 515
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "animResId":I
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "target":Ljava/lang/String;
    :cond_7
    iget-object v14, v10, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@b3
    if-nez v14, :cond_8

    #@b5
    const/16 p1, 0x0

    #@b7
    .end local p1    # "res":Landroid/content/res/Resources;
    :cond_8
    move-object/from16 v0, p1

    #@b9
    move-object/from16 v1, p0

    #@bb
    iput-object v0, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@bd
    .line 453
    return-void
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 815
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@2
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isRunning()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 422
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
    .line 265
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
    .line 266
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@c
    .line 267
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@e
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    #@10
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    #@12
    .line 266
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    #@15
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@17
    .line 268
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    #@1a
    .line 270
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    #@7
    .line 339
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 355
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
    .line 350
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
    .line 345
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
    .line 912
    if-nez p1, :cond_0

    #@2
    .line 913
    return-void

    #@3
    .line 917
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 918
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@e
    .line 921
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 923
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@15
    if-nez v0, :cond_2

    #@17
    .line 926
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;

    #@19
    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$2;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    #@1c
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@1e
    .line 946
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@20
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    #@22
    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    #@25
    .line 911
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 822
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    #@3
    .line 829
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@5
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reset()V

    #@8
    .line 821
    return-void
.end method

.method public reverse()V
    .locals 2

    #@0
    .prologue
    .line 875
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    #@3
    .line 878
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 879
    const-string/jumbo v0, "AnimatedVectorDrawable"

    #@c
    const-string/jumbo v1, "AnimatedVectorDrawable can\'t reverse()"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 880
    return-void

    #@13
    .line 883
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@15
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reverse()V

    #@18
    .line 874
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    #@7
    .line 371
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@7
    .line 376
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setHotspot(FF)V

    #@7
    .line 391
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
    .line 397
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->setHotspotBounds(IIII)V

    #@7
    .line 396
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@7
    .line 386
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@7
    .line 401
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@2
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isInfinite()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@a
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isStarted()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 408
    if-eqz p1, :cond_1

    #@12
    .line 410
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@14
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->resume()V

    #@17
    .line 416
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    #@19
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@1b
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setVisible(ZZ)Z

    #@1e
    .line 417
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@21
    move-result v0

    #@22
    return v0

    #@23
    .line 413
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@25
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->pause()V

    #@28
    goto :goto_0
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 834
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    #@3
    .line 841
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@5
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->start()V

    #@8
    .line 833
    return-void
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 864
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    #@2
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->end()V

    #@5
    .line 857
    return-void
.end method

.method public unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 959
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    if-nez p1, :cond_1

    #@7
    .line 961
    :cond_0
    return v2

    #@8
    .line 963
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 966
    .local v0, "removed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_2

    #@16
    .line 967
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->removeAnimatorSetListener()V

    #@19
    .line 969
    :cond_2
    return v0
.end method
