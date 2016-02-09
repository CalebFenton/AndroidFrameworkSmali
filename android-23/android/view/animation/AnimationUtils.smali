.class public Landroid/view/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TOGETHER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, p1, v1, v0}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/animation/AnimationSet;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    .line 105
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 107
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .local v1, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v3

    #@9
    .local v3, "type":I
    const/4 v4, 0x3

    #@a
    if-ne v3, v4, :cond_1

    #@c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f
    move-result v4

    #@10
    if-le v4, v1, :cond_7

    #@12
    .line 108
    :cond_1
    const/4 v4, 0x1

    #@13
    if-eq v3, v4, :cond_7

    #@15
    .line 110
    const/4 v4, 0x2

    #@16
    if-ne v3, v4, :cond_0

    #@18
    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 116
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "set"

    #@1f
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 117
    new-instance v0, Landroid/view/animation/AnimationSet;

    #@27
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@2a
    .local v0, "anim":Landroid/view/animation/Animation;
    move-object v4, v0

    #@2b
    .line 118
    check-cast v4, Landroid/view/animation/AnimationSet;

    #@2d
    invoke-static {p0, p1, v4, p3}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    #@30
    .line 131
    :goto_1
    if-eqz p2, :cond_0

    #@32
    .line 132
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@35
    goto :goto_0

    #@36
    .line 119
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    const-string/jumbo v4, "alpha"

    #@39
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_3

    #@3f
    .line 120
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@41
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@44
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    #@45
    .line 121
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_3
    const-string/jumbo v4, "scale"

    #@48
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_4

    #@4e
    .line 122
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    #@50
    invoke-direct {v0, p0, p3}, Landroid/view/animation/ScaleAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@53
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    #@54
    .line 123
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_4
    const-string/jumbo v4, "rotate"

    #@57
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_5

    #@5d
    .line 124
    new-instance v0, Landroid/view/animation/RotateAnimation;

    #@5f
    invoke-direct {v0, p0, p3}, Landroid/view/animation/RotateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@62
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    #@63
    .line 125
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_5
    const-string/jumbo v4, "translate"

    #@66
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v4

    #@6a
    if-eqz v4, :cond_6

    #@6c
    .line 126
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    #@6e
    invoke-direct {v0, p0, p3}, Landroid/view/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@71
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    #@72
    .line 128
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    #@74
    new-instance v5, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v6, "Unknown animation name: "

    #@7c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v4

    #@90
    .line 136
    .end local v2    # "name":Ljava/lang/String;
    :cond_7
    return-object v0
.end method

.method private static createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    const/4 v2, 0x0

    #@1
    .line 331
    .local v2, "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 333
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    .local v1, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v4

    #@9
    .local v4, "type":I
    const/4 v5, 0x3

    #@a
    if-ne v4, v5, :cond_1

    #@c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f
    move-result v5

    #@10
    if-le v5, v1, :cond_c

    #@12
    .line 334
    :cond_1
    const/4 v5, 0x1

    #@13
    if-eq v4, v5, :cond_c

    #@15
    .line 336
    const/4 v5, 0x2

    #@16
    if-ne v4, v5, :cond_0

    #@18
    .line 340
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@1b
    move-result-object v0

    #@1c
    .line 342
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 344
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "linearInterpolator"

    #@23
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_2

    #@29
    .line 345
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    #@2b
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@2e
    .local v2, "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_0

    #@2f
    .line 346
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_2
    const-string/jumbo v5, "accelerateInterpolator"

    #@32
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_3

    #@38
    .line 347
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    #@3a
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@3d
    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_0

    #@3e
    .line 348
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_3
    const-string/jumbo v5, "decelerateInterpolator"

    #@41
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_4

    #@47
    .line 349
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    #@49
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@4c
    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_0

    #@4d
    .line 350
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_4
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    #@50
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_5

    #@56
    .line 351
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@58
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@5b
    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_0

    #@5c
    .line 352
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_5
    const-string/jumbo v5, "cycleInterpolator"

    #@5f
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v5

    #@63
    if-eqz v5, :cond_6

    #@65
    .line 353
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    #@67
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@6a
    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_0

    #@6b
    .line 354
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_6
    const-string/jumbo v5, "anticipateInterpolator"

    #@6e
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v5

    #@72
    if-eqz v5, :cond_7

    #@74
    .line 355
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    #@76
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@79
    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_0

    #@7a
    .line 356
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_7
    const-string/jumbo v5, "overshootInterpolator"

    #@7d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v5

    #@81
    if-eqz v5, :cond_8

    #@83
    .line 357
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    #@85
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@88
    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_0

    #@8a
    .line 358
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_8
    const-string/jumbo v5, "anticipateOvershootInterpolator"

    #@8d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v5

    #@91
    if-eqz v5, :cond_9

    #@93
    .line 359
    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    #@95
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@98
    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_0

    #@9a
    .line 360
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_9
    const-string/jumbo v5, "bounceInterpolator"

    #@9d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v5

    #@a1
    if-eqz v5, :cond_a

    #@a3
    .line 361
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    #@a5
    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    #@a8
    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_0

    #@aa
    .line 362
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_a
    const-string/jumbo v5, "pathInterpolator"

    #@ad
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v5

    #@b1
    if-eqz v5, :cond_b

    #@b3
    .line 363
    new-instance v2, Landroid/view/animation/PathInterpolator;

    #@b5
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@b8
    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_0

    #@ba
    .line 365
    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    :cond_b
    new-instance v5, Ljava/lang/RuntimeException;

    #@bc
    new-instance v6, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v7, "Unknown interpolator name: "

    #@c4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v6

    #@c8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@cb
    move-result-object v7

    #@cc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v6

    #@d0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v6

    #@d4
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d7
    throw v5

    #@d8
    .line 368
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "name":Ljava/lang/String;
    :cond_c
    return-object v2
.end method

.method private static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    const/4 v0, 0x0

    #@1
    .line 182
    .local v0, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 184
    .end local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    .local v1, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v3

    #@9
    .local v3, "type":I
    const/4 v4, 0x3

    #@a
    if-ne v3, v4, :cond_1

    #@c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f
    move-result v4

    #@10
    if-le v4, v1, :cond_4

    #@12
    .line 185
    :cond_1
    const/4 v4, 0x1

    #@13
    if-eq v3, v4, :cond_4

    #@15
    .line 187
    const/4 v4, 0x2

    #@16
    if-ne v3, v4, :cond_0

    #@18
    .line 191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 193
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "layoutAnimation"

    #@1f
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 194
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    #@27
    invoke-direct {v0, p0, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@2a
    .local v0, "controller":Landroid/view/animation/LayoutAnimationController;
    goto :goto_0

    #@2b
    .line 195
    .end local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_2
    const-string/jumbo v4, "gridLayoutAnimation"

    #@2e
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_3

    #@34
    .line 196
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController;

    #@36
    invoke-direct {v0, p0, p2}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@39
    .restart local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    goto :goto_0

    #@3a
    .line 198
    .end local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    #@3c
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v6, "Unknown layout animation name: "

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4

    #@54
    .line 202
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public static currentAnimationTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    const/4 v2, 0x0

    #@1
    .line 75
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@8
    move-result-object v2

    #@9
    .line 76
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v4

    #@d
    .line 88
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@12
    .line 76
    :cond_0
    return-object v4

    #@13
    .line 82
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    #@14
    .line 83
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "Can\'t load animation resource ID #0x"

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@31
    .line 85
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@34
    .line 86
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 87
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v4

    #@36
    .line 88
    if-eqz v2, :cond_1

    #@38
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@3b
    .line 87
    :cond_1
    throw v4

    #@3c
    .line 77
    :catch_1
    move-exception v1

    #@3d
    .line 78
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@3f
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "Can\'t load animation resource ID #0x"

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@5a
    .line 80
    .restart local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@5d
    .line 81
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    const/4 v2, 0x0

    #@1
    .line 275
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@8
    move-result-object v2

    #@9
    .line 276
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@10
    move-result-object v5

    #@11
    invoke-static {v4, v5, v2}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v4

    #@15
    .line 288
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@1a
    .line 276
    :cond_0
    return-object v4

    #@1b
    .line 282
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    #@1c
    .line 283
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "Can\'t load animation resource ID #0x"

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@39
    .line 285
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3c
    .line 286
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 287
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v4

    #@3e
    .line 288
    if-eqz v2, :cond_1

    #@40
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@43
    .line 287
    :cond_1
    throw v4

    #@44
    .line 277
    :catch_1
    move-exception v1

    #@45
    .line 278
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@47
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "Can\'t load animation resource ID #0x"

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@62
    .line 280
    .restart local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@65
    .line 281
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    const/4 v2, 0x0

    #@1
    .line 305
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@4
    move-result-object v2

    #@5
    .line 306
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, p1, v2}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v4

    #@9
    .line 318
    if-eqz v2, :cond_0

    #@b
    .line 319
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@e
    .line 306
    :cond_0
    return-object v4

    #@f
    .line 312
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    #@10
    .line 313
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Can\'t load animation resource ID #0x"

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    .line 314
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@2d
    .line 315
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@30
    .line 316
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 317
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v4

    #@32
    .line 318
    if-eqz v2, :cond_1

    #@34
    .line 319
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@37
    .line 317
    :cond_1
    throw v4

    #@38
    .line 307
    :catch_1
    move-exception v1

    #@39
    .line 308
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@3b
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "Can\'t load animation resource ID #0x"

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 309
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    .line 308
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@56
    .line 310
    .restart local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@59
    .line 311
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    const/4 v2, 0x0

    #@1
    .line 153
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@8
    move-result-object v2

    #@9
    .line 154
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v4

    #@d
    .line 166
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@12
    .line 154
    :cond_0
    return-object v4

    #@13
    .line 160
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    #@14
    .line 161
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "Can\'t load animation resource ID #0x"

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@31
    .line 163
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@34
    .line 164
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 165
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v4

    #@36
    .line 166
    if-eqz v2, :cond_1

    #@38
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@3b
    .line 165
    :cond_1
    throw v4

    #@3c
    .line 155
    :catch_1
    move-exception v1

    #@3d
    .line 156
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@3f
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "Can\'t load animation resource ID #0x"

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@5a
    .line 158
    .restart local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@5d
    .line 159
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fromLeft"    # Z

    #@0
    .prologue
    .line 215
    if-eqz p1, :cond_0

    #@2
    .line 216
    const v1, 0x10a0002

    #@5
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@8
    move-result-object v0

    #@9
    .line 221
    .local v0, "a":Landroid/view/animation/Animation;
    :goto_0
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    #@b
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@e
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@11
    .line 222
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@14
    move-result-wide v2

    #@15
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@18
    .line 223
    return-object v0

    #@19
    .line 218
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    const v1, 0x10a006a

    #@1c
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@1f
    move-result-object v0

    #@20
    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public static makeInChildBottomAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    #@0
    .prologue
    .line 257
    const v1, 0x10a0068

    #@3
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@6
    move-result-object v0

    #@7
    .line 258
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    #@9
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@c
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@f
    .line 259
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@12
    move-result-wide v2

    #@13
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@16
    .line 260
    return-object v0
.end method

.method public static makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "toRight"    # Z

    #@0
    .prologue
    .line 236
    if-eqz p1, :cond_0

    #@2
    .line 237
    const v1, 0x10a0003

    #@5
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@8
    move-result-object v0

    #@9
    .line 242
    .local v0, "a":Landroid/view/animation/Animation;
    :goto_0
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    #@b
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@e
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@11
    .line 243
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@14
    move-result-wide v2

    #@15
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    #@18
    .line 244
    return-object v0

    #@19
    .line 239
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    const v1, 0x10a006d

    #@1c
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@1f
    move-result-object v0

    #@20
    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_0
.end method
