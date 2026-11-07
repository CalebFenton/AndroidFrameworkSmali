.class public Landroid/view/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/AnimationUtils$AnimationState;
    }
.end annotation


# static fields
.field private static final greylist-max-o SEQUENTIALLY:I = 0x1

.field private static final greylist-max-o TOGETHER:I

.field private static greylist-max-o sAnimationState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/animation/AnimationUtils$AnimationState;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sExpectedPresentationTimeFlagValue:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    invoke-static {}, Landroid/view/flags/Flags;->expectedPresentationTimeReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/view/animation/AnimationUtils;->sExpectedPresentationTimeFlagValue:Z

    .line 67
    new-instance v0, Landroid/view/animation/AnimationUtils$1;

    invoke-direct {v0}, Landroid/view/animation/AnimationUtils$1;-><init>()V

    sput-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static greylist createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 11
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/animation/AnimationSet;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    .line 246
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 248
    .local v1, "depth":I
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_13

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_b4

    :cond_13
    const/4 v2, 0x1

    if-eq v3, v2, :cond_b4

    .line 251
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1a

    .line 252
    goto :goto_5

    .line 255
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 258
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 259
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .local v4, "anim":Landroid/view/animation/Animation;
    move-object v0, v4

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-static {p0, p1, v0, p3}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-object v0, v4

    goto :goto_90

    .line 260
    .end local v4    # "anim":Landroid/view/animation/Animation;
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :cond_34
    const-string v4, "alpha"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 261
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .end local v0    # "anim":Landroid/view/animation/Animation;
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    goto :goto_90

    .line 262
    .end local v4    # "anim":Landroid/view/animation/Animation;
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :cond_43
    const-string/jumbo v4, "scale"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 263
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/ScaleAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .end local v0    # "anim":Landroid/view/animation/Animation;
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    goto :goto_90

    .line 264
    .end local v4    # "anim":Landroid/view/animation/Animation;
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :cond_53
    const-string/jumbo v4, "rotate"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 265
    new-instance v4, Landroid/view/animation/RotateAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/RotateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .end local v0    # "anim":Landroid/view/animation/Animation;
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    goto :goto_90

    .line 266
    .end local v4    # "anim":Landroid/view/animation/Animation;
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :cond_63
    const-string/jumbo v4, "translate"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 267
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .end local v0    # "anim":Landroid/view/animation/Animation;
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    goto :goto_90

    .line 268
    .end local v4    # "anim":Landroid/view/animation/Animation;
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :cond_73
    const-string v4, "cliprect"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 269
    new-instance v4, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .end local v0    # "anim":Landroid/view/animation/Animation;
    .restart local v4    # "anim":Landroid/view/animation/Animation;
    goto :goto_90

    .line 270
    .end local v4    # "anim":Landroid/view/animation/Animation;
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :cond_82
    const-string v4, "extend"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 271
    new-instance v4, Landroid/view/animation/ExtendAnimation;

    invoke-direct {v4, p0, p3}, Landroid/view/animation/ExtendAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .line 276
    :goto_90
    if-eqz p2, :cond_95

    .line 277
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 279
    .end local v2    # "name":Ljava/lang/String;
    :cond_95
    goto/16 :goto_5

    .line 273
    .restart local v2    # "name":Ljava/lang/String;
    :cond_97
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 281
    .end local v2    # "name":Ljava/lang/String;
    :cond_b4
    return-object v0
.end method

.method private static greylist-max-o createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .registers 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    .line 460
    .local v0, "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 462
    .local v1, "depth":I
    :goto_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_13

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_d9

    :cond_13
    const/4 v2, 0x1

    if-eq v3, v2, :cond_d9

    .line 465
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1a

    .line 466
    goto :goto_5

    .line 469
    :cond_1a
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 471
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "name":Ljava/lang/String;
    const-string v5, "linearInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 474
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .local v5, "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_ba

    .line 475
    .end local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_32
    const-string v5, "accelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 476
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_ba

    .line 477
    .end local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_42
    const-string v5, "decelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 478
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_ba

    .line 479
    .end local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_52
    const-string v5, "accelerateDecelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 480
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_ba

    .line 481
    .end local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_61
    const-string v5, "cycleInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 482
    new-instance v5, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_ba

    .line 483
    .end local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_70
    const-string v5, "anticipateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 484
    new-instance v5, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_ba

    .line 485
    .end local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_7f
    const-string v5, "overshootInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 486
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_ba

    .line 487
    .end local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_8e
    const-string v5, "anticipateOvershootInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 488
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_ba

    .line 489
    .end local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_9d
    const-string v5, "bounceInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 490
    new-instance v5, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v5}, Landroid/view/animation/BounceInterpolator;-><init>()V

    move-object v0, v5

    .end local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_ba

    .line 491
    .end local v5    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .restart local v0    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_ac
    const-string v5, "pathInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 492
    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, p0, p1, v2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .line 496
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :goto_ba
    goto/16 :goto_5

    .line 494
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_bc
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown interpolator name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 497
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :cond_d9
    return-object v0
.end method

.method private static greylist-max-o createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 312
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;
    .registers 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    .line 322
    .local v0, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 324
    .local v1, "depth":I
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_13

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_55

    :cond_13
    const/4 v2, 0x1

    if-eq v3, v2, :cond_55

    .line 327
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1a

    .line 328
    goto :goto_5

    .line 331
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "name":Ljava/lang/String;
    const-string v4, "layoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 334
    new-instance v4, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v4, p0, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .end local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    .local v4, "controller":Landroid/view/animation/LayoutAnimationController;
    goto :goto_3b

    .line 335
    .end local v4    # "controller":Landroid/view/animation/LayoutAnimationController;
    .restart local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_2d
    const-string v4, "gridLayoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 336
    new-instance v4, Landroid/view/animation/GridLayoutAnimationController;

    invoke-direct {v4, p0, p2}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v4

    .line 340
    .end local v2    # "name":Ljava/lang/String;
    :goto_3b
    goto :goto_5

    .line 338
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3c
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown layout animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 342
    .end local v2    # "name":Ljava/lang/String;
    :cond_55
    return-object v0
.end method

.method public static whitelist currentAnimationTimeMillis()J
    .registers 5

    .line 167
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    .line 168
    .local v0, "state":Landroid/view/animation/AnimationUtils$AnimationState;
    iget-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    if-eqz v1, :cond_15

    .line 170
    iget-wide v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->currentVsyncTimeMillis:J

    iget-wide v3, v0, Landroid/view/animation/AnimationUtils$AnimationState;->lastReportedTimeMillis:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    return-wide v1

    .line 173
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->lastReportedTimeMillis:J

    .line 174
    iget-wide v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->lastReportedTimeMillis:J

    return-wide v1
.end method

.method public static blacklist getExpectedPresentationTimeMillis()J
    .registers 4

    .line 205
    invoke-static {}, Landroid/view/animation/AnimationUtils;->getExpectedPresentationTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist getExpectedPresentationTimeNanos()J
    .registers 4

    .line 187
    sget-boolean v0, Landroid/view/animation/AnimationUtils;->sExpectedPresentationTimeFlagValue:Z

    if-nez v0, :cond_d

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0

    .line 191
    :cond_d
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    .line 192
    .local v0, "state":Landroid/view/animation/AnimationUtils$AnimationState;
    iget-wide v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->mExpectedPresentationTimeNanos:J

    return-wide v1
.end method

.method public static whitelist loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 222
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;

    move-result-object v1
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_e} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_16
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    .line 227
    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 222
    :cond_13
    return-object v1

    .line 227
    :catchall_14
    move-exception v1

    goto :goto_34

    .line 223
    :catch_16
    move-exception v1

    .line 224
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_17
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v2
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_14

    .line 227
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :goto_34
    if-eqz v0, :cond_39

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 228
    :cond_39
    throw v1
.end method

.method public static whitelist loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 413
    const/4 v0, 0x0

    .line 415
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;

    move-result-object v1
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_16} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_1e
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_16} :catch_1e
    .catchall {:try_start_1 .. :try_end_16} :catchall_1c

    .line 421
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 416
    :cond_1b
    return-object v1

    .line 421
    :catchall_1c
    move-exception v1

    goto :goto_3c

    .line 417
    :catch_1e
    move-exception v1

    .line 418
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1f
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v2
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_1c

    .line 421
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :goto_3c
    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 422
    :cond_41
    throw v1
.end method

.method public static greylist-max-o loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 440
    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;

    move-result-object v1
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_a} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_12
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_a} :catch_12
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 445
    if-eqz v0, :cond_f

    .line 446
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 440
    :cond_f
    return-object v1

    .line 445
    :catchall_10
    move-exception v1

    goto :goto_30

    .line 441
    :catch_12
    move-exception v1

    .line 442
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_13
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 443
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "res":Landroid/content/res/Resources;
    .end local p1    # "theme":Landroid/content/res/Resources$Theme;
    .end local p2    # "id":I
    throw v2
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_10

    .line 445
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "res":Landroid/content/res/Resources;
    .restart local p1    # "theme":Landroid/content/res/Resources$Theme;
    .restart local p2    # "id":I
    :goto_30
    if-eqz v0, :cond_35

    .line 446
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 448
    :cond_35
    throw v1
.end method

.method public static whitelist loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 299
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_e} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_16
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_e} :catch_16
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    .line 304
    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 299
    :cond_13
    return-object v1

    .line 304
    :catchall_14
    move-exception v1

    goto :goto_34

    .line 300
    :catch_16
    move-exception v1

    .line 301
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_17
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 302
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    throw v2
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_14

    .line 304
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    :goto_34
    if-eqz v0, :cond_39

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 305
    :cond_39
    throw v1
.end method

.method public static blacklist lockAnimationClock(J)V
    .registers 4
    .param p0, "vsyncMillis"    # J

    .line 140
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    .line 141
    .local v0, "state":Landroid/view/animation/AnimationUtils$AnimationState;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    .line 142
    iput-wide p0, v0, Landroid/view/animation/AnimationUtils$AnimationState;->currentVsyncTimeMillis:J

    .line 143
    return-void
.end method

.method public static blacklist lockAnimationClock(JJ)V
    .registers 6
    .param p0, "vsyncMillis"    # J
    .param p2, "expectedPresentationTimeNanos"    # J

    .line 103
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    .line 104
    .local v0, "state":Landroid/view/animation/AnimationUtils$AnimationState;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    .line 105
    iput-wide p0, v0, Landroid/view/animation/AnimationUtils$AnimationState;->currentVsyncTimeMillis:J

    .line 106
    sget-boolean v1, Landroid/view/animation/AnimationUtils;->sExpectedPresentationTimeFlagValue:Z

    if-nez v1, :cond_13

    .line 107
    iput-wide p2, v0, Landroid/view/animation/AnimationUtils$AnimationState;->mExpectedPresentationTimeNanos:J

    .line 109
    :cond_13
    return-void
.end method

.method public static whitelist makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fromLeft"    # Z

    .line 355
    if-eqz p1, :cond_a

    .line 356
    const v0, 0x10a0002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_11

    .line 358
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_a
    const v0, 0x10a00a7

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 361
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :goto_11
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 362
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 363
    return-object v0
.end method

.method public static whitelist makeInChildBottomAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;

    .line 397
    const v0, 0x10a00a4

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 398
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 399
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 400
    return-object v0
.end method

.method public static whitelist makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "toRight"    # Z

    .line 376
    if-eqz p1, :cond_a

    .line 377
    const v0, 0x10a0003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_11

    .line 379
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_a
    const v0, 0x10a00aa

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 382
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :goto_11
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 383
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 384
    return-object v0
.end method

.method public static blacklist unlockAnimationClock()V
    .registers 2

    .line 153
    sget-object v0, Landroid/view/animation/AnimationUtils;->sAnimationState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtils$AnimationState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/animation/AnimationUtils$AnimationState;->animationClockLocked:Z

    .line 154
    return-void
.end method
