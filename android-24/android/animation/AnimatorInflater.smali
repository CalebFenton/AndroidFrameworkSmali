.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 79
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    #@7
    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 638
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object v3

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v2, p2

    #@9
    move v6, p3

    #@a
    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 24
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .param p6, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 645
    const/4 v14, 0x0

    #@1
    .line 646
    .local v14, "anim":Landroid/animation/Animator;
    const/16 v16, 0x0

    #@3
    .line 650
    .local v16, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v17

    #@7
    .line 652
    .end local v14    # "anim":Landroid/animation/Animator;
    .end local v16    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v17, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a
    move-result v22

    #@b
    .local v22, "type":I
    const/4 v4, 0x3

    #@c
    move/from16 v0, v22

    #@e
    if-ne v0, v4, :cond_1

    #@10
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@13
    move-result v4

    #@14
    move/from16 v0, v17

    #@16
    if-le v4, v0, :cond_9

    #@18
    .line 653
    :cond_1
    const/4 v4, 0x1

    #@19
    move/from16 v0, v22

    #@1b
    if-eq v0, v4, :cond_9

    #@1d
    .line 655
    const/4 v4, 0x2

    #@1e
    move/from16 v0, v22

    #@20
    if-ne v0, v4, :cond_0

    #@22
    .line 659
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@25
    move-result-object v21

    #@26
    .line 660
    .local v21, "name":Ljava/lang/String;
    const/16 v18, 0x0

    #@28
    .line 662
    .local v18, "gotValues":Z
    const-string/jumbo v4, "objectAnimator"

    #@2b
    move-object/from16 v0, v21

    #@2d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_3

    #@33
    .line 663
    move-object/from16 v0, p0

    #@35
    move-object/from16 v1, p1

    #@37
    move-object/from16 v2, p3

    #@39
    move/from16 v3, p6

    #@3b
    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    #@3e
    move-result-object v14

    #@3f
    .line 690
    :goto_1
    if-eqz p4, :cond_0

    #@41
    if-nez v18, :cond_0

    #@43
    .line 691
    if-nez v16, :cond_2

    #@45
    .line 692
    new-instance v16, Ljava/util/ArrayList;

    #@47
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@4a
    .line 694
    :cond_2
    move-object/from16 v0, v16

    #@4c
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    goto :goto_0

    #@50
    .line 664
    :cond_3
    const-string/jumbo v4, "animator"

    #@53
    move-object/from16 v0, v21

    #@55
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_4

    #@5b
    .line 665
    const/4 v4, 0x0

    #@5c
    move-object/from16 v0, p0

    #@5e
    move-object/from16 v1, p1

    #@60
    move-object/from16 v2, p3

    #@62
    move/from16 v3, p6

    #@64
    invoke-static {v0, v1, v2, v4, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    #@67
    move-result-object v14

    #@68
    .local v14, "anim":Landroid/animation/Animator;
    goto :goto_1

    #@69
    .line 666
    .end local v14    # "anim":Landroid/animation/Animator;
    :cond_4
    const-string/jumbo v4, "set"

    #@6c
    move-object/from16 v0, v21

    #@6e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v4

    #@72
    if-eqz v4, :cond_6

    #@74
    .line 667
    new-instance v14, Landroid/animation/AnimatorSet;

    #@76
    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    #@79
    .line 669
    .restart local v14    # "anim":Landroid/animation/Animator;
    if-eqz p1, :cond_5

    #@7b
    .line 670
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    #@7d
    const/4 v5, 0x0

    #@7e
    const/4 v6, 0x0

    #@7f
    move-object/from16 v0, p1

    #@81
    move-object/from16 v1, p3

    #@83
    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@86
    move-result-object v12

    #@87
    .line 674
    .local v12, "a":Landroid/content/res/TypedArray;
    :goto_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@8a
    move-result v4

    #@8b
    invoke-virtual {v14, v4}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    #@8e
    .line 675
    const/4 v4, 0x0

    #@8f
    const/4 v5, 0x0

    #@90
    invoke-virtual {v12, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@93
    move-result v9

    #@94
    .local v9, "ordering":I
    move-object v8, v14

    #@95
    .line 676
    check-cast v8, Landroid/animation/AnimatorSet;

    #@97
    move-object/from16 v4, p0

    #@99
    move-object/from16 v5, p1

    #@9b
    move-object/from16 v6, p2

    #@9d
    move-object/from16 v7, p3

    #@9f
    move/from16 v10, p6

    #@a1
    invoke-static/range {v4 .. v10}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    #@a4
    .line 678
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    #@a7
    goto :goto_1

    #@a8
    .line 672
    .end local v9    # "ordering":I
    .end local v12    # "a":Landroid/content/res/TypedArray;
    :cond_5
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    #@aa
    move-object/from16 v0, p0

    #@ac
    move-object/from16 v1, p3

    #@ae
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@b1
    move-result-object v12

    #@b2
    .restart local v12    # "a":Landroid/content/res/TypedArray;
    goto :goto_2

    #@b3
    .line 679
    .end local v12    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "anim":Landroid/animation/Animator;
    :cond_6
    const-string/jumbo v4, "propertyValuesHolder"

    #@b6
    move-object/from16 v0, v21

    #@b8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v4

    #@bc
    if-eqz v4, :cond_8

    #@be
    .line 681
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@c1
    move-result-object v4

    #@c2
    .line 680
    move-object/from16 v0, p0

    #@c4
    move-object/from16 v1, p1

    #@c6
    move-object/from16 v2, p2

    #@c8
    invoke-static {v0, v1, v2, v4}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    #@cb
    move-result-object v23

    #@cc
    .line 682
    .local v23, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v23, :cond_7

    #@ce
    if-eqz v14, :cond_7

    #@d0
    instance-of v4, v14, Landroid/animation/ValueAnimator;

    #@d2
    if-eqz v4, :cond_7

    #@d4
    move-object v4, v14

    #@d5
    .line 683
    check-cast v4, Landroid/animation/ValueAnimator;

    #@d7
    move-object/from16 v0, v23

    #@d9
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@dc
    .line 685
    :cond_7
    const/16 v18, 0x1

    #@de
    goto/16 :goto_1

    #@e0
    .line 687
    .end local v23    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    #@e2
    new-instance v5, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v6, "Unknown animator name: "

    #@ea
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v5

    #@ee
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@f1
    move-result-object v6

    #@f2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v5

    #@f6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v5

    #@fa
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@fd
    throw v4

    #@fe
    .line 697
    .end local v18    # "gotValues":Z
    .end local v21    # "name":Ljava/lang/String;
    :cond_9
    if-eqz p4, :cond_b

    #@100
    if-eqz v16, :cond_b

    #@102
    .line 698
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@105
    move-result v4

    #@106
    new-array v15, v4, [Landroid/animation/Animator;

    #@108
    .line 699
    .local v15, "animsArray":[Landroid/animation/Animator;
    const/16 v19, 0x0

    #@10a
    .line 700
    .local v19, "index":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10d
    move-result-object v13

    #@10e
    .local v13, "a$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@111
    move-result v4

    #@112
    if-eqz v4, :cond_a

    #@114
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@117
    move-result-object v11

    #@118
    check-cast v11, Landroid/animation/Animator;

    #@11a
    .line 701
    .local v11, "a":Landroid/animation/Animator;
    add-int/lit8 v20, v19, 0x1

    #@11c
    .end local v19    # "index":I
    .local v20, "index":I
    aput-object v11, v15, v19

    #@11e
    move/from16 v19, v20

    #@120
    .end local v20    # "index":I
    .restart local v19    # "index":I
    goto :goto_3

    #@121
    .line 703
    .end local v11    # "a":Landroid/animation/Animator;
    :cond_a
    if-nez p5, :cond_c

    #@123
    .line 704
    move-object/from16 v0, p4

    #@125
    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@128
    .line 709
    .end local v13    # "a$iterator":Ljava/util/Iterator;
    .end local v15    # "animsArray":[Landroid/animation/Animator;
    .end local v19    # "index":I
    :cond_b
    :goto_4
    return-object v14

    #@129
    .line 706
    .restart local v13    # "a$iterator":Ljava/util/Iterator;
    .restart local v15    # "animsArray":[Landroid/animation/Animator;
    .restart local v19    # "index":I
    :cond_c
    move-object/from16 v0, p4

    #@12b
    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    #@12e
    goto :goto_4
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 915
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 916
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    #@b
    move-result-object v0

    #@c
    .line 915
    :goto_0
    return-object v0

    #@d
    .line 917
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    #@10
    move-result-object v0

    #@11
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 918
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    #@18
    move-result-object v0

    #@19
    goto :goto_0

    #@1a
    .line 919
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    #@1d
    move-result-object v0

    #@1e
    goto :goto_0
.end method

.method private static createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    new-instance v7, Landroid/animation/StateListAnimator;

    #@2
    invoke-direct {v7}, Landroid/animation/StateListAnimator;-><init>()V

    #@5
    .line 212
    .local v7, "stateListAnimator":Landroid/animation/StateListAnimator;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v9

    #@9
    .line 213
    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    #@c
    goto :goto_0

    #@d
    .line 216
    :pswitch_0
    return-object v7

    #@e
    .line 220
    :pswitch_1
    const/4 v1, 0x0

    #@f
    .line 221
    .local v1, "animator":Landroid/animation/Animator;
    const-string/jumbo v10, "item"

    #@12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@15
    move-result-object v11

    #@16
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v10

    #@1a
    if-eqz v10, :cond_0

    #@1c
    .line 222
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@1f
    move-result v3

    #@20
    .line 223
    .local v3, "attributeCount":I
    new-array v8, v3, [I

    #@22
    .line 224
    .local v8, "states":[I
    const/4 v5, 0x0

    #@23
    .line 225
    .local v5, "stateIndex":I
    const/4 v4, 0x0

    #@24
    .local v4, "i":I
    move v6, v5

    #@25
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v5    # "stateIndex":I
    .local v6, "stateIndex":I
    :goto_1
    if-ge v4, v3, :cond_3

    #@27
    .line 226
    invoke-interface {p2, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    #@2a
    move-result v2

    #@2b
    .line 227
    .local v2, "attrName":I
    const v10, 0x10101cd

    #@2e
    if-ne v2, v10, :cond_1

    #@30
    .line 228
    const/4 v10, 0x0

    #@31
    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    #@34
    move-result v0

    #@35
    .line 229
    .local v0, "animId":I
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    #@38
    move-result-object v1

    #@39
    .local v1, "animator":Landroid/animation/Animator;
    move v5, v6

    #@3a
    .line 225
    .end local v0    # "animId":I
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v2    # "attrName":I
    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@3c
    move v6, v5

    #@3d
    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    goto :goto_1

    #@3e
    .line 231
    .restart local v2    # "attrName":I
    :cond_1
    add-int/lit8 v5, v6, 0x1

    #@40
    .line 232
    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    const/4 v10, 0x0

    #@41
    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    #@44
    move-result v10

    #@45
    if-eqz v10, :cond_2

    #@47
    .line 231
    .end local v2    # "attrName":I
    :goto_3
    aput v2, v8, v6

    #@49
    goto :goto_2

    #@4a
    .line 233
    .restart local v2    # "attrName":I
    :cond_2
    neg-int v2, v2

    #@4b
    goto :goto_3

    #@4c
    .line 236
    .end local v2    # "attrName":I
    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    :cond_3
    if-nez v1, :cond_4

    #@4e
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@51
    move-result-object v10

    #@52
    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@55
    move-result-object v11

    #@56
    const/high16 v12, 0x3f800000    # 1.0f

    #@58
    .line 237
    invoke-static {v10, v11, p1, v12}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    #@5b
    move-result-object v1

    #@5c
    .line 241
    :cond_4
    if-nez v1, :cond_5

    #@5e
    .line 242
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    #@60
    .line 243
    const-string/jumbo v11, "animation state item must have a valid animation"

    #@63
    .line 242
    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@66
    throw v10

    #@67
    .line 246
    :cond_5
    invoke-static {v8, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    #@6a
    move-result-object v10

    #@6b
    .line 245
    invoke-virtual {v7, v10, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@6e
    goto :goto_0

    #@6f
    .line 213
    nop

    #@70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 5
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    #@0
    .prologue
    .line 942
    sub-int v3, p3, p2

    #@2
    add-int/lit8 v0, v3, 0x2

    #@4
    .line 943
    .local v0, "count":I
    int-to-float v3, v0

    #@5
    div-float v2, p1, v3

    #@7
    .line 944
    .local v2, "increment":F
    move v1, p2

    #@8
    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    #@a
    .line 945
    aget-object v3, p0, v1

    #@c
    add-int/lit8 v4, v1, -0x1

    #@e
    aget-object v4, p0, v4

    #@10
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    #@13
    move-result v4

    #@14
    add-float/2addr v4, v2

    #@15
    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    #@18
    .line 944
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 941
    :cond_0
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    #@0
    .prologue
    .line 812
    if-eqz p0, :cond_0

    #@2
    array-length v3, p0

    #@3
    if-nez v3, :cond_1

    #@5
    .line 813
    :cond_0
    return-void

    #@6
    .line 815
    :cond_1
    const-string/jumbo v3, "AnimatorInflater"

    #@9
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 816
    array-length v0, p0

    #@d
    .line 817
    .local v0, "count":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@10
    .line 818
    aget-object v2, p0, v1

    #@12
    check-cast v2, Landroid/animation/Keyframe;

    #@14
    .line 819
    .local v2, "keyframe":Landroid/animation/Keyframe;
    const-string/jumbo v4, "AnimatorInflater"

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Keyframe "

    #@1f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v5, ": fraction "

    #@2a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    .line 820
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    #@31
    move-result v3

    #@32
    const/4 v6, 0x0

    #@33
    cmpg-float v3, v3, v6

    #@35
    if-gez v3, :cond_2

    #@37
    const-string/jumbo v3, "null"

    #@3a
    .line 819
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 820
    const-string/jumbo v5, ", "

    #@41
    .line 819
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    .line 821
    const-string/jumbo v5, ", value : "

    #@48
    .line 819
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    .line 821
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_3

    #@52
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@55
    move-result-object v3

    #@56
    .line 819
    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 817
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0

    #@64
    .line 820
    :cond_2
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    #@67
    move-result v3

    #@68
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@6b
    move-result-object v3

    #@6c
    goto :goto_1

    #@6d
    .line 821
    :cond_3
    const-string/jumbo v3, "null"

    #@70
    goto :goto_2

    #@71
    .line 811
    .end local v2    # "keyframe":Landroid/animation/Keyframe;
    :cond_4
    return-void
.end method

.method private static getChangingConfigs(Landroid/content/res/Resources;I)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1069
    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    #@2
    monitor-enter v1

    #@3
    .line 1070
    :try_start_0
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@9
    .line 1071
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    #@b
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 1069
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 23
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p2

    #@4
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@7
    move-result-object v14

    #@8
    .line 276
    .local v14, "tvFrom":Landroid/util/TypedValue;
    if-eqz v14, :cond_4

    #@a
    const/4 v7, 0x1

    #@b
    .line 277
    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_5

    #@d
    iget v5, v14, Landroid/util/TypedValue;->type:I

    #@f
    .line 278
    .local v5, "fromType":I
    :goto_1
    move-object/from16 v0, p0

    #@11
    move/from16 v1, p3

    #@13
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@16
    move-result-object v15

    #@17
    .line 279
    .local v15, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    #@19
    const/4 v8, 0x1

    #@1a
    .line 280
    .local v8, "hasTo":Z
    :goto_2
    if-eqz v8, :cond_7

    #@1c
    iget v13, v15, Landroid/util/TypedValue;->type:I

    #@1e
    .line 282
    .local v13, "toType":I
    :goto_3
    const/16 v20, 0x4

    #@20
    move/from16 v0, p1

    #@22
    move/from16 v1, v20

    #@24
    if-ne v0, v1, :cond_2

    #@26
    .line 284
    if-eqz v7, :cond_0

    #@28
    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@2b
    move-result v20

    #@2c
    if-nez v20, :cond_1

    #@2e
    :cond_0
    if-eqz v8, :cond_8

    #@30
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@33
    move-result v20

    #@34
    if-eqz v20, :cond_8

    #@36
    .line 285
    :cond_1
    const/16 p1, 0x3

    #@38
    .line 291
    :cond_2
    :goto_4
    if-nez p1, :cond_9

    #@3a
    const/4 v6, 0x1

    #@3b
    .line 293
    .local v6, "getFloats":Z
    :goto_5
    const/4 v11, 0x0

    #@3c
    .line 295
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/16 v20, 0x2

    #@3e
    move/from16 v0, p1

    #@40
    move/from16 v1, v20

    #@42
    if-ne v0, v1, :cond_10

    #@44
    .line 296
    move-object/from16 v0, p0

    #@46
    move/from16 v1, p2

    #@48
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    .line 297
    .local v4, "fromString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4e
    move/from16 v1, p3

    #@50
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@53
    move-result-object v12

    #@54
    .line 298
    .local v12, "toString":Ljava/lang/String;
    if-nez v4, :cond_a

    #@56
    .line 299
    const/4 v9, 0x0

    #@57
    .line 300
    :goto_6
    if-nez v12, :cond_b

    #@59
    .line 301
    const/4 v10, 0x0

    #@5a
    .line 303
    :goto_7
    if-nez v9, :cond_3

    #@5c
    if-eqz v10, :cond_d

    #@5e
    .line 304
    :cond_3
    if-eqz v9, :cond_f

    #@60
    .line 305
    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    #@62
    const/16 v20, 0x0

    #@64
    move-object/from16 v0, v20

    #@66
    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    #@69
    .line 306
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v10, :cond_e

    #@6b
    .line 307
    invoke-static {v9, v10}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    #@6e
    move-result v20

    #@6f
    if-nez v20, :cond_c

    #@71
    .line 308
    new-instance v20, Landroid/view/InflateException;

    #@73
    new-instance v21, Ljava/lang/StringBuilder;

    #@75
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v22, " Can\'t morph from "

    #@7b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v21

    #@7f
    move-object/from16 v0, v21

    #@81
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v21

    #@85
    const-string/jumbo v22, " to "

    #@88
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v21

    #@8c
    move-object/from16 v0, v21

    #@8e
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v21

    #@92
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v21

    #@96
    invoke-direct/range {v20 .. v21}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@99
    throw v20

    #@9a
    .line 276
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v5    # "fromType":I
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "hasTo":Z
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    .end local v13    # "toType":I
    .end local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v7, 0x0

    #@9b
    goto/16 :goto_0

    #@9d
    .line 277
    .restart local v7    # "hasFrom":Z
    :cond_5
    const/4 v5, 0x0

    #@9e
    .restart local v5    # "fromType":I
    goto/16 :goto_1

    #@a0
    .line 279
    .restart local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_6
    const/4 v8, 0x0

    #@a1
    goto/16 :goto_2

    #@a3
    .line 280
    .restart local v8    # "hasTo":Z
    :cond_7
    const/4 v13, 0x0

    #@a4
    .restart local v13    # "toType":I
    goto/16 :goto_3

    #@a6
    .line 287
    :cond_8
    const/16 p1, 0x0

    #@a8
    goto :goto_4

    #@a9
    .line 291
    :cond_9
    const/4 v6, 0x0

    #@aa
    .restart local v6    # "getFloats":Z
    goto :goto_5

    #@ab
    .line 299
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_a
    new-instance v9, Landroid/util/PathParser$PathData;

    #@ad
    invoke-direct {v9, v4}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    #@b0
    .local v9, "nodesFrom":Landroid/util/PathParser$PathData;
    goto :goto_6

    #@b1
    .line 301
    .end local v9    # "nodesFrom":Landroid/util/PathParser$PathData;
    :cond_b
    new-instance v10, Landroid/util/PathParser$PathData;

    #@b3
    invoke-direct {v10, v12}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    #@b6
    .local v10, "nodesTo":Landroid/util/PathParser$PathData;
    goto :goto_7

    #@b7
    .line 311
    .end local v10    # "nodesTo":Landroid/util/PathParser$PathData;
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_c
    const/16 v20, 0x2

    #@b9
    move/from16 v0, v20

    #@bb
    new-array v0, v0, [Ljava/lang/Object;

    #@bd
    move-object/from16 v20, v0

    #@bf
    .line 312
    const/16 v21, 0x0

    #@c1
    aput-object v9, v20, v21

    #@c3
    const/16 v21, 0x1

    #@c5
    aput-object v10, v20, v21

    #@c7
    .line 311
    move-object/from16 v0, p4

    #@c9
    move-object/from16 v1, v20

    #@cb
    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@ce
    move-result-object v11

    #@cf
    .line 399
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_d
    :goto_8
    return-object v11

    #@d0
    .line 314
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_e
    const/16 v20, 0x1

    #@d2
    move/from16 v0, v20

    #@d4
    new-array v0, v0, [Ljava/lang/Object;

    #@d6
    move-object/from16 v20, v0

    #@d8
    .line 315
    const/16 v21, 0x0

    #@da
    aput-object v9, v20, v21

    #@dc
    .line 314
    move-object/from16 v0, p4

    #@de
    move-object/from16 v1, v20

    #@e0
    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@e3
    move-result-object v11

    #@e4
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_8

    #@e5
    .line 317
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_f
    if-eqz v10, :cond_d

    #@e7
    .line 318
    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    #@e9
    const/16 v20, 0x0

    #@eb
    move-object/from16 v0, v20

    #@ed
    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    #@f0
    .line 319
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v20, 0x1

    #@f2
    move/from16 v0, v20

    #@f4
    new-array v0, v0, [Ljava/lang/Object;

    #@f6
    move-object/from16 v20, v0

    #@f8
    .line 320
    const/16 v21, 0x0

    #@fa
    aput-object v10, v20, v21

    #@fc
    .line 319
    move-object/from16 v0, p4

    #@fe
    move-object/from16 v1, v20

    #@100
    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@103
    move-result-object v11

    #@104
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_8

    #@105
    .line 324
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v12    # "toString":Ljava/lang/String;
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_10
    const/4 v3, 0x0

    #@106
    .line 326
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v20, 0x3

    #@108
    move/from16 v0, p1

    #@10a
    move/from16 v1, v20

    #@10c
    if-ne v0, v1, :cond_11

    #@10e
    .line 328
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    #@111
    move-result-object v3

    #@112
    .line 330
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_11
    if-eqz v6, :cond_18

    #@114
    .line 333
    if-eqz v7, :cond_16

    #@116
    .line 334
    const/16 v20, 0x5

    #@118
    move/from16 v0, v20

    #@11a
    if-ne v5, v0, :cond_13

    #@11c
    .line 335
    const/16 v20, 0x0

    #@11e
    move-object/from16 v0, p0

    #@120
    move/from16 v1, p2

    #@122
    move/from16 v2, v20

    #@124
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@127
    move-result v16

    #@128
    .line 339
    .local v16, "valueFrom":F
    :goto_9
    if-eqz v8, :cond_15

    #@12a
    .line 340
    const/16 v20, 0x5

    #@12c
    move/from16 v0, v20

    #@12e
    if-ne v13, v0, :cond_14

    #@130
    .line 341
    const/16 v20, 0x0

    #@132
    move-object/from16 v0, p0

    #@134
    move/from16 v1, p3

    #@136
    move/from16 v2, v20

    #@138
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@13b
    move-result v18

    #@13c
    .line 345
    .local v18, "valueTo":F
    :goto_a
    const/16 v20, 0x2

    #@13e
    move/from16 v0, v20

    #@140
    new-array v0, v0, [F

    #@142
    move-object/from16 v20, v0

    #@144
    .line 346
    const/16 v21, 0x0

    #@146
    aput v16, v20, v21

    #@148
    const/16 v21, 0x1

    #@14a
    aput v18, v20, v21

    #@14c
    .line 345
    move-object/from16 v0, p4

    #@14e
    move-object/from16 v1, v20

    #@150
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@153
    move-result-object v11

    #@154
    .line 394
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "valueFrom":F
    .end local v18    # "valueTo":F
    :cond_12
    :goto_b
    if-eqz v11, :cond_d

    #@156
    if-eqz v3, :cond_d

    #@158
    .line 395
    invoke-virtual {v11, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@15b
    goto/16 :goto_8

    #@15d
    .line 337
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_13
    const/16 v20, 0x0

    #@15f
    move-object/from16 v0, p0

    #@161
    move/from16 v1, p2

    #@163
    move/from16 v2, v20

    #@165
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@168
    move-result v16

    #@169
    .restart local v16    # "valueFrom":F
    goto :goto_9

    #@16a
    .line 343
    :cond_14
    const/16 v20, 0x0

    #@16c
    move-object/from16 v0, p0

    #@16e
    move/from16 v1, p3

    #@170
    move/from16 v2, v20

    #@172
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@175
    move-result v18

    #@176
    .restart local v18    # "valueTo":F
    goto :goto_a

    #@177
    .line 348
    .end local v18    # "valueTo":F
    :cond_15
    const/16 v20, 0x1

    #@179
    move/from16 v0, v20

    #@17b
    new-array v0, v0, [F

    #@17d
    move-object/from16 v20, v0

    #@17f
    const/16 v21, 0x0

    #@181
    aput v16, v20, v21

    #@183
    move-object/from16 v0, p4

    #@185
    move-object/from16 v1, v20

    #@187
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@18a
    move-result-object v11

    #@18b
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_b

    #@18c
    .line 351
    .end local v16    # "valueFrom":F
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_16
    const/16 v20, 0x5

    #@18e
    move/from16 v0, v20

    #@190
    if-ne v13, v0, :cond_17

    #@192
    .line 352
    const/16 v20, 0x0

    #@194
    move-object/from16 v0, p0

    #@196
    move/from16 v1, p3

    #@198
    move/from16 v2, v20

    #@19a
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@19d
    move-result v18

    #@19e
    .line 356
    .restart local v18    # "valueTo":F
    :goto_c
    const/16 v20, 0x1

    #@1a0
    move/from16 v0, v20

    #@1a2
    new-array v0, v0, [F

    #@1a4
    move-object/from16 v20, v0

    #@1a6
    const/16 v21, 0x0

    #@1a8
    aput v18, v20, v21

    #@1aa
    move-object/from16 v0, p4

    #@1ac
    move-object/from16 v1, v20

    #@1ae
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@1b1
    move-result-object v11

    #@1b2
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_b

    #@1b3
    .line 354
    .end local v18    # "valueTo":F
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_17
    const/16 v20, 0x0

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    move/from16 v1, p3

    #@1b9
    move/from16 v2, v20

    #@1bb
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1be
    move-result v18

    #@1bf
    .restart local v18    # "valueTo":F
    goto :goto_c

    #@1c0
    .line 361
    .end local v18    # "valueTo":F
    :cond_18
    if-eqz v7, :cond_1e

    #@1c2
    .line 362
    const/16 v20, 0x5

    #@1c4
    move/from16 v0, v20

    #@1c6
    if-ne v5, v0, :cond_19

    #@1c8
    .line 363
    const/16 v20, 0x0

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    move/from16 v1, p2

    #@1ce
    move/from16 v2, v20

    #@1d0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1d3
    move-result v20

    #@1d4
    move/from16 v0, v20

    #@1d6
    float-to-int v0, v0

    #@1d7
    move/from16 v17, v0

    #@1d9
    .line 369
    .local v17, "valueFrom":I
    :goto_d
    if-eqz v8, :cond_1d

    #@1db
    .line 370
    const/16 v20, 0x5

    #@1dd
    move/from16 v0, v20

    #@1df
    if-ne v13, v0, :cond_1b

    #@1e1
    .line 371
    const/16 v20, 0x0

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    move/from16 v1, p3

    #@1e7
    move/from16 v2, v20

    #@1e9
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1ec
    move-result v20

    #@1ed
    move/from16 v0, v20

    #@1ef
    float-to-int v0, v0

    #@1f0
    move/from16 v19, v0

    #@1f2
    .line 377
    .local v19, "valueTo":I
    :goto_e
    const/16 v20, 0x2

    #@1f4
    move/from16 v0, v20

    #@1f6
    new-array v0, v0, [I

    #@1f8
    move-object/from16 v20, v0

    #@1fa
    const/16 v21, 0x0

    #@1fc
    aput v17, v20, v21

    #@1fe
    const/16 v21, 0x1

    #@200
    aput v19, v20, v21

    #@202
    move-object/from16 v0, p4

    #@204
    move-object/from16 v1, v20

    #@206
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@209
    move-result-object v11

    #@20a
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_b

    #@20c
    .line 364
    .end local v17    # "valueFrom":I
    .end local v19    # "valueTo":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_19
    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@20f
    move-result v20

    #@210
    if-eqz v20, :cond_1a

    #@212
    .line 365
    const/16 v20, 0x0

    #@214
    move-object/from16 v0, p0

    #@216
    move/from16 v1, p2

    #@218
    move/from16 v2, v20

    #@21a
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@21d
    move-result v17

    #@21e
    .restart local v17    # "valueFrom":I
    goto :goto_d

    #@21f
    .line 367
    .end local v17    # "valueFrom":I
    :cond_1a
    const/16 v20, 0x0

    #@221
    move-object/from16 v0, p0

    #@223
    move/from16 v1, p2

    #@225
    move/from16 v2, v20

    #@227
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@22a
    move-result v17

    #@22b
    .restart local v17    # "valueFrom":I
    goto :goto_d

    #@22c
    .line 372
    :cond_1b
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@22f
    move-result v20

    #@230
    if-eqz v20, :cond_1c

    #@232
    .line 373
    const/16 v20, 0x0

    #@234
    move-object/from16 v0, p0

    #@236
    move/from16 v1, p3

    #@238
    move/from16 v2, v20

    #@23a
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@23d
    move-result v19

    #@23e
    .restart local v19    # "valueTo":I
    goto :goto_e

    #@23f
    .line 375
    .end local v19    # "valueTo":I
    :cond_1c
    const/16 v20, 0x0

    #@241
    move-object/from16 v0, p0

    #@243
    move/from16 v1, p3

    #@245
    move/from16 v2, v20

    #@247
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@24a
    move-result v19

    #@24b
    .restart local v19    # "valueTo":I
    goto :goto_e

    #@24c
    .line 379
    .end local v19    # "valueTo":I
    :cond_1d
    const/16 v20, 0x1

    #@24e
    move/from16 v0, v20

    #@250
    new-array v0, v0, [I

    #@252
    move-object/from16 v20, v0

    #@254
    const/16 v21, 0x0

    #@256
    aput v17, v20, v21

    #@258
    move-object/from16 v0, p4

    #@25a
    move-object/from16 v1, v20

    #@25c
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@25f
    move-result-object v11

    #@260
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_b

    #@262
    .line 382
    .end local v17    # "valueFrom":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1e
    if-eqz v8, :cond_12

    #@264
    .line 383
    const/16 v20, 0x5

    #@266
    move/from16 v0, v20

    #@268
    if-ne v13, v0, :cond_1f

    #@26a
    .line 384
    const/16 v20, 0x0

    #@26c
    move-object/from16 v0, p0

    #@26e
    move/from16 v1, p3

    #@270
    move/from16 v2, v20

    #@272
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@275
    move-result v20

    #@276
    move/from16 v0, v20

    #@278
    float-to-int v0, v0

    #@279
    move/from16 v19, v0

    #@27b
    .line 390
    .restart local v19    # "valueTo":I
    :goto_f
    const/16 v20, 0x1

    #@27d
    move/from16 v0, v20

    #@27f
    new-array v0, v0, [I

    #@281
    move-object/from16 v20, v0

    #@283
    const/16 v21, 0x0

    #@285
    aput v19, v20, v21

    #@287
    move-object/from16 v0, p4

    #@289
    move-object/from16 v1, v20

    #@28b
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@28e
    move-result-object v11

    #@28f
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_b

    #@291
    .line 385
    .end local v19    # "valueTo":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1f
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@294
    move-result v20

    #@295
    if-eqz v20, :cond_20

    #@297
    .line 386
    const/16 v20, 0x0

    #@299
    move-object/from16 v0, p0

    #@29b
    move/from16 v1, p3

    #@29d
    move/from16 v2, v20

    #@29f
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@2a2
    move-result v19

    #@2a3
    .restart local v19    # "valueTo":I
    goto :goto_f

    #@2a4
    .line 388
    .end local v19    # "valueTo":I
    :cond_20
    const/16 v20, 0x0

    #@2a6
    move-object/from16 v0, p0

    #@2a8
    move/from16 v1, p3

    #@2aa
    move/from16 v2, v20

    #@2ac
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2af
    move-result v19

    #@2b0
    .restart local v19    # "valueTo":I
    goto :goto_f
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 8
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 794
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@5
    move-result-object v4

    #@6
    .line 795
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_2

    #@8
    move v1, v2

    #@9
    .line 796
    .local v1, "hasFrom":Z
    :goto_0
    if-eqz v1, :cond_3

    #@b
    iget v0, v4, Landroid/util/TypedValue;->type:I

    #@d
    .line 797
    .local v0, "fromType":I
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@10
    move-result-object v5

    #@11
    .line 798
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_4

    #@13
    .line 799
    .local v2, "hasTo":Z
    :goto_2
    if-eqz v2, :cond_5

    #@15
    iget v3, v5, Landroid/util/TypedValue;->type:I

    #@17
    .line 803
    .local v3, "toType":I
    :goto_3
    if-eqz v1, :cond_0

    #@19
    invoke-static {v0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@1c
    move-result v7

    #@1d
    if-nez v7, :cond_1

    #@1f
    :cond_0
    if-eqz v2, :cond_6

    #@21
    invoke-static {v3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@24
    move-result v7

    #@25
    if-eqz v7, :cond_6

    #@27
    .line 804
    :cond_1
    const/4 v6, 0x3

    #@28
    .line 808
    .local v6, "valueType":I
    :goto_4
    return v6

    #@29
    .end local v0    # "fromType":I
    .end local v1    # "hasFrom":Z
    .end local v2    # "hasTo":Z
    .end local v3    # "toType":I
    .end local v5    # "tvTo":Landroid/util/TypedValue;
    .end local v6    # "valueType":I
    :cond_2
    move v1, v7

    #@2a
    .line 795
    goto :goto_0

    #@2b
    .line 796
    .restart local v1    # "hasFrom":Z
    :cond_3
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "fromType":I
    goto :goto_1

    #@2d
    .restart local v5    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    move v2, v7

    #@2e
    .line 798
    goto :goto_2

    #@2f
    .line 799
    .restart local v2    # "hasTo":Z
    :cond_5
    const/4 v3, 0x0

    #@30
    .restart local v3    # "toType":I
    goto :goto_3

    #@31
    .line 806
    :cond_6
    const/4 v6, 0x0

    #@32
    .restart local v6    # "valueType":I
    goto :goto_4
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 773
    if-eqz p1, :cond_1

    #@3
    .line 774
    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    #@5
    invoke-virtual {p1, p2, v4, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 779
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@c
    move-result-object v2

    #@d
    .line 780
    .local v2, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    .line 783
    .local v1, "hasValue":Z
    :cond_0
    if-eqz v1, :cond_2

    #@12
    iget v4, v2, Landroid/util/TypedValue;->type:I

    #@14
    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_2

    #@1a
    .line 784
    const/4 v3, 0x3

    #@1b
    .line 788
    .local v3, "valueType":I
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 789
    return v3

    #@1f
    .line 776
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "hasValue":Z
    .end local v2    # "keyframeValue":Landroid/util/TypedValue;
    .end local v3    # "valueType":I
    :cond_1
    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    #@21
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@24
    move-result-object v0

    #@25
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    #@26
    .line 786
    .restart local v1    # "hasValue":Z
    .restart local v2    # "keyframeValue":Landroid/util/TypedValue;
    :cond_2
    const/4 v3, 0x0

    #@27
    .restart local v3    # "valueType":I
    goto :goto_1
.end method

.method private static isColorType(I)Z
    .locals 2
    .param p0, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1076
    const/16 v1, 0x1c

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x1f

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    #@3
    move-result-object v3

    #@4
    .line 114
    .local v3, "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    int-to-long v10, p2

    #@5
    invoke-virtual {v3, v10, v11, p0, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/animation/Animator;

    #@b
    .line 115
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    #@d
    .line 119
    return-object v2

    #@e
    .line 123
    :cond_0
    const/4 v7, 0x0

    #@f
    .line 125
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@12
    move-result-object v7

    #@13
    .line 126
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, p1, v7, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    #@16
    move-result-object v2

    #@17
    .line 127
    if-eqz v2, :cond_1

    #@19
    .line 128
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    #@1c
    move-result v9

    #@1d
    invoke-virtual {v2, v9}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    #@20
    .line 129
    invoke-virtual {v2}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    #@23
    move-result-object v4

    #@24
    .line 130
    .local v4, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    if-eqz v4, :cond_1

    #@26
    .line 134
    int-to-long v10, p2

    #@27
    invoke-virtual {v3, v10, v11, p1, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    #@2a
    .line 136
    invoke-virtual {v4, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@2d
    move-result-object v9

    #@2e
    move-object v0, v9

    #@2f
    check-cast v0, Landroid/animation/Animator;

    #@31
    move-object v2, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 153
    .end local v4    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    :cond_1
    if-eqz v7, :cond_2

    #@34
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@37
    .line 139
    :cond_2
    return-object v2

    #@38
    .line 146
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    #@39
    .line 148
    .local v5, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    #@3b
    new-instance v9, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v10, "Can\'t load animation resource ID #0x"

    #@43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v10

    #@4b
    .line 148
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v9

    #@4f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@56
    .line 150
    .local v8, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@59
    .line 151
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .line 152
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v9

    #@5b
    .line 153
    if-eqz v7, :cond_3

    #@5d
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@60
    .line 152
    :cond_3
    throw v9

    #@61
    .line 140
    :catch_1
    move-exception v6

    #@62
    .line 142
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    #@64
    new-instance v9, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v10, "Can\'t load animation resource ID #0x"

    #@6c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@73
    move-result-object v10

    #@74
    .line 142
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v9

    #@7c
    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@7f
    .line 144
    .restart local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@82
    .line 145
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "anim"    # Landroid/animation/ValueAnimator;
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1024
    const/4 v0, 0x0

    #@2
    .line 1025
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@3
    .line 1027
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-eqz p1, :cond_5

    #@5
    .line 1028
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    #@7
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    .line 1034
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    :goto_0
    if-eqz p3, :cond_0

    #@d
    .line 1035
    if-eqz p1, :cond_6

    #@f
    .line 1037
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    #@11
    .line 1036
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@14
    move-result-object v1

    #@15
    .line 1041
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@18
    move-result v4

    #@19
    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    #@1c
    .line 1044
    .end local v1    # "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :cond_0
    if-nez p3, :cond_1

    #@1e
    .line 1045
    new-instance p3, Landroid/animation/ValueAnimator;

    #@20
    .end local p3    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    #@23
    .line 1047
    .restart local p3    # "anim":Landroid/animation/ValueAnimator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@26
    move-result v4

    #@27
    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    #@2a
    .line 1049
    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    #@2d
    .line 1051
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@30
    move-result v3

    #@31
    .line 1052
    .local v3, "resID":I
    if-lez v3, :cond_3

    #@33
    .line 1053
    invoke-static {p0, p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    #@36
    move-result-object v2

    #@37
    .line 1054
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    instance-of v4, v2, Landroid/view/animation/BaseInterpolator;

    #@39
    if-eqz v4, :cond_2

    #@3b
    move-object v4, v2

    #@3c
    .line 1056
    check-cast v4, Landroid/view/animation/BaseInterpolator;

    #@3e
    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    #@41
    move-result v4

    #@42
    .line 1055
    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    #@45
    .line 1058
    :cond_2
    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@48
    .line 1061
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@4b
    .line 1062
    if-eqz v1, :cond_4

    #@4d
    .line 1063
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@50
    .line 1065
    :cond_4
    return-object p3

    #@51
    .line 1030
    .end local v3    # "resID":I
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :cond_5
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    #@53
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@56
    move-result-object v0

    #@57
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    goto :goto_0

    #@58
    .line 1039
    :cond_6
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    #@5a
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5d
    move-result-object v1

    #@5e
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    goto :goto_1
.end method

.method private static loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 954
    if-eqz p1, :cond_2

    #@3
    .line 955
    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    #@5
    invoke-virtual {p1, p2, v9, v11, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 960
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/4 v5, 0x0

    #@a
    .line 962
    .local v5, "keyframe":Landroid/animation/Keyframe;
    const/high16 v9, -0x40800000    # -1.0f

    #@c
    const/4 v10, 0x3

    #@d
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@10
    move-result v1

    #@11
    .line 964
    .local v1, "fraction":F
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@14
    move-result-object v6

    #@15
    .line 965
    .local v6, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v6, :cond_3

    #@17
    const/4 v2, 0x1

    #@18
    .line 966
    .local v2, "hasValue":Z
    :goto_1
    const/4 v9, 0x4

    #@19
    if-ne p3, v9, :cond_0

    #@1b
    .line 969
    if-eqz v2, :cond_4

    #@1d
    iget v9, v6, Landroid/util/TypedValue;->type:I

    #@1f
    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@22
    move-result v9

    #@23
    if-eqz v9, :cond_4

    #@25
    .line 970
    const/4 p3, 0x3

    #@26
    .line 976
    :cond_0
    :goto_2
    if-eqz v2, :cond_5

    #@28
    .line 977
    packed-switch p3, :pswitch_data_0

    #@2b
    .line 993
    .end local v5    # "keyframe":Landroid/animation/Keyframe;
    :goto_3
    :pswitch_0
    const/4 v9, 0x1

    #@2c
    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2f
    move-result v7

    #@30
    .line 994
    .local v7, "resID":I
    if-lez v7, :cond_1

    #@32
    .line 995
    invoke-static {p0, p1, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    #@35
    move-result-object v4

    #@36
    .line 996
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v5, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@39
    .line 998
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3c
    .line 1000
    return-object v5

    #@3d
    .line 957
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "fraction":F
    .end local v2    # "hasValue":Z
    .end local v6    # "keyframeValue":Landroid/util/TypedValue;
    .end local v7    # "resID":I
    :cond_2
    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    #@3f
    invoke-virtual {p0, p2, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@42
    move-result-object v0

    #@43
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    #@44
    .line 965
    .restart local v1    # "fraction":F
    .restart local v5    # "keyframe":Landroid/animation/Keyframe;
    .restart local v6    # "keyframeValue":Landroid/util/TypedValue;
    :cond_3
    const/4 v2, 0x0

    #@45
    .restart local v2    # "hasValue":Z
    goto :goto_1

    #@46
    .line 972
    :cond_4
    const/4 p3, 0x0

    #@47
    goto :goto_2

    #@48
    .line 979
    :pswitch_1
    const/4 v9, 0x0

    #@49
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4c
    move-result v8

    #@4d
    .line 980
    .local v8, "value":F
    invoke-static {v1, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    #@50
    move-result-object v5

    #@51
    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    #@52
    .line 984
    .end local v8    # "value":F
    .local v5, "keyframe":Landroid/animation/Keyframe;
    :pswitch_2
    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    #@55
    move-result v3

    #@56
    .line 985
    .local v3, "intValue":I
    invoke-static {v1, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    #@59
    move-result-object v5

    #@5a
    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    #@5b
    .line 989
    .end local v3    # "intValue":I
    .local v5, "keyframe":Landroid/animation/Keyframe;
    :cond_5
    if-nez p3, :cond_6

    #@5d
    invoke-static {v1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    #@60
    move-result-object v5

    #@61
    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    #@62
    .line 990
    .local v5, "keyframe":Landroid/animation/Keyframe;
    :cond_6
    invoke-static {v1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    #@65
    move-result-object v5

    #@66
    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    #@67
    .line 977
    nop

    #@68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1005
    new-instance v0, Landroid/animation/ObjectAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    #@5
    .line 1007
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    #@8
    .line 1009
    return-object v0
.end method

.method private static loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 22
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "propertyName"    # Ljava/lang/String;
    .param p4, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 830
    const/16 v19, 0x0

    #@2
    .line 831
    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x0

    #@3
    .line 834
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6
    move-result v18

    #@7
    .local v18, "type":I
    const/16 v20, 0x3

    #@9
    move/from16 v0, v18

    #@b
    move/from16 v1, v20

    #@d
    if-eq v0, v1, :cond_4

    #@f
    .line 835
    const/16 v20, 0x1

    #@11
    move/from16 v0, v18

    #@13
    move/from16 v1, v20

    #@15
    if-eq v0, v1, :cond_4

    #@17
    .line 836
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a
    move-result-object v15

    #@1b
    .line 837
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v20, "keyframe"

    #@1e
    move-object/from16 v0, v20

    #@20
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v20

    #@24
    if-eqz v20, :cond_0

    #@26
    .line 838
    const/16 v20, 0x4

    #@28
    move/from16 v0, p4

    #@2a
    move/from16 v1, v20

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    .line 839
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@31
    move-result-object v20

    #@32
    move-object/from16 v0, p0

    #@34
    move-object/from16 v1, p1

    #@36
    move-object/from16 v2, v20

    #@38
    invoke-static {v0, v1, v2}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    #@3b
    move-result p4

    #@3c
    .line 841
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3f
    move-result-object v20

    #@40
    move-object/from16 v0, p0

    #@42
    move-object/from16 v1, p1

    #@44
    move-object/from16 v2, v20

    #@46
    move/from16 v3, p4

    #@48
    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    #@4b
    move-result-object v11

    #@4c
    .line 842
    .local v11, "keyframe":Landroid/animation/Keyframe;
    if-eqz v11, :cond_3

    #@4e
    .line 843
    if-nez v13, :cond_2

    #@50
    .line 844
    new-instance v13, Ljava/util/ArrayList;

    #@52
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@55
    .line 846
    :cond_2
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 848
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@5b
    goto :goto_0

    #@5c
    .line 853
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v15    # "name":Ljava/lang/String;
    :cond_4
    if-eqz v13, :cond_f

    #@5e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v4

    #@62
    .local v4, "count":I
    if-lez v4, :cond_f

    #@64
    .line 859
    const/16 v20, 0x0

    #@66
    move/from16 v0, v20

    #@68
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v7

    #@6c
    check-cast v7, Landroid/animation/Keyframe;

    #@6e
    .line 860
    .local v7, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v20, v4, -0x1

    #@70
    move/from16 v0, v20

    #@72
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v14

    #@76
    check-cast v14, Landroid/animation/Keyframe;

    #@78
    .line 861
    .local v14, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v14}, Landroid/animation/Keyframe;->getFraction()F

    #@7b
    move-result v5

    #@7c
    .line 862
    .local v5, "endFraction":F
    const/high16 v20, 0x3f800000    # 1.0f

    #@7e
    cmpg-float v20, v5, v20

    #@80
    if-gez v20, :cond_5

    #@82
    .line 863
    const/16 v20, 0x0

    #@84
    cmpg-float v20, v5, v20

    #@86
    if-gez v20, :cond_8

    #@88
    .line 864
    const/high16 v20, 0x3f800000    # 1.0f

    #@8a
    move/from16 v0, v20

    #@8c
    invoke-virtual {v14, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    #@8f
    .line 870
    :cond_5
    :goto_1
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    #@92
    move-result v16

    #@93
    .line 871
    .local v16, "startFraction":F
    const/16 v20, 0x0

    #@95
    cmpl-float v20, v16, v20

    #@97
    if-eqz v20, :cond_6

    #@99
    .line 872
    const/16 v20, 0x0

    #@9b
    cmpg-float v20, v16, v20

    #@9d
    if-gez v20, :cond_9

    #@9f
    .line 873
    const/16 v20, 0x0

    #@a1
    move/from16 v0, v20

    #@a3
    invoke-virtual {v7, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    #@a6
    .line 879
    :cond_6
    :goto_2
    new-array v12, v4, [Landroid/animation/Keyframe;

    #@a8
    .line 880
    .local v12, "keyframeArray":[Landroid/animation/Keyframe;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@ab
    .line 881
    const/4 v9, 0x0

    #@ac
    .local v9, "i":I
    :goto_3
    if-ge v9, v4, :cond_e

    #@ae
    .line 882
    aget-object v11, v12, v9

    #@b0
    .line 883
    .restart local v11    # "keyframe":Landroid/animation/Keyframe;
    invoke-virtual {v11}, Landroid/animation/Keyframe;->getFraction()F

    #@b3
    move-result v20

    #@b4
    const/16 v21, 0x0

    #@b6
    cmpg-float v20, v20, v21

    #@b8
    if-gez v20, :cond_7

    #@ba
    .line 884
    if-nez v9, :cond_a

    #@bc
    .line 885
    const/16 v20, 0x0

    #@be
    move/from16 v0, v20

    #@c0
    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    #@c3
    .line 881
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    #@c5
    goto :goto_3

    #@c6
    .line 866
    .end local v9    # "i":I
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v16    # "startFraction":F
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@c9
    move-result v20

    #@ca
    const/high16 v21, 0x3f800000    # 1.0f

    #@cc
    move/from16 v0, v21

    #@ce
    invoke-static {v14, v0}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    #@d1
    move-result-object v21

    #@d2
    move/from16 v0, v20

    #@d4
    move-object/from16 v1, v21

    #@d6
    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@d9
    .line 867
    add-int/lit8 v4, v4, 0x1

    #@db
    goto :goto_1

    #@dc
    .line 875
    .restart local v16    # "startFraction":F
    :cond_9
    const/16 v20, 0x0

    #@de
    move/from16 v0, v20

    #@e0
    invoke-static {v7, v0}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    #@e3
    move-result-object v20

    #@e4
    const/16 v21, 0x0

    #@e6
    move/from16 v0, v21

    #@e8
    move-object/from16 v1, v20

    #@ea
    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@ed
    .line 876
    add-int/lit8 v4, v4, 0x1

    #@ef
    goto :goto_2

    #@f0
    .line 886
    .restart local v9    # "i":I
    .restart local v11    # "keyframe":Landroid/animation/Keyframe;
    .restart local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    :cond_a
    add-int/lit8 v20, v4, -0x1

    #@f2
    move/from16 v0, v20

    #@f4
    if-ne v9, v0, :cond_b

    #@f6
    .line 887
    const/high16 v20, 0x3f800000    # 1.0f

    #@f8
    move/from16 v0, v20

    #@fa
    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    #@fd
    goto :goto_4

    #@fe
    .line 891
    :cond_b
    move/from16 v17, v9

    #@100
    .line 892
    .local v17, "startIndex":I
    move v6, v9

    #@101
    .line 893
    .local v6, "endIndex":I
    add-int/lit8 v10, v9, 0x1

    #@103
    .local v10, "j":I
    :goto_5
    add-int/lit8 v20, v4, -0x1

    #@105
    move/from16 v0, v20

    #@107
    if-ge v10, v0, :cond_c

    #@109
    .line 894
    aget-object v20, v12, v10

    #@10b
    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    #@10e
    move-result v20

    #@10f
    const/16 v21, 0x0

    #@111
    cmpl-float v20, v20, v21

    #@113
    if-ltz v20, :cond_d

    #@115
    .line 899
    :cond_c
    add-int/lit8 v20, v6, 0x1

    #@117
    aget-object v20, v12, v20

    #@119
    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    #@11c
    move-result v20

    #@11d
    .line 900
    add-int/lit8 v21, v17, -0x1

    #@11f
    aget-object v21, v12, v21

    #@121
    invoke-virtual/range {v21 .. v21}, Landroid/animation/Keyframe;->getFraction()F

    #@124
    move-result v21

    #@125
    .line 899
    sub-float v8, v20, v21

    #@127
    .line 901
    .local v8, "gap":F
    move/from16 v0, v17

    #@129
    invoke-static {v12, v8, v0, v6}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    #@12c
    goto :goto_4

    #@12d
    .line 897
    .end local v8    # "gap":F
    :cond_d
    move v6, v10

    #@12e
    .line 893
    add-int/lit8 v10, v10, 0x1

    #@130
    goto :goto_5

    #@131
    .line 905
    .end local v6    # "endIndex":I
    .end local v10    # "j":I
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v17    # "startIndex":I
    :cond_e
    move-object/from16 v0, p3

    #@133
    invoke-static {v0, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    #@136
    move-result-object v19

    #@137
    .line 906
    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    const/16 v20, 0x3

    #@139
    move/from16 v0, p4

    #@13b
    move/from16 v1, v20

    #@13d
    if-ne v0, v1, :cond_f

    #@13f
    .line 907
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    #@142
    move-result-object v20

    #@143
    invoke-virtual/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@146
    .line 911
    .end local v4    # "count":I
    .end local v5    # "endFraction":F
    .end local v7    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v9    # "i":I
    .end local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v14    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v16    # "startFraction":F
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    :cond_f
    return-object v19
.end method

.method public static loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v8

    #@4
    .line 160
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    #@7
    move-result-object v3

    #@8
    .line 162
    .local v3, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@b
    move-result-object v10

    #@c
    .line 163
    .local v10, "theme":Landroid/content/res/Resources$Theme;
    int-to-long v12, p1

    #@d
    invoke-virtual {v3, v12, v13, v8, v10}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/animation/StateListAnimator;

    #@13
    .line 164
    .local v2, "animator":Landroid/animation/StateListAnimator;
    if-eqz v2, :cond_0

    #@15
    .line 165
    return-object v2

    #@16
    .line 167
    :cond_0
    const/4 v7, 0x0

    #@17
    .line 169
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@1a
    move-result-object v7

    #@1b
    .line 170
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@1e
    move-result-object v11

    #@1f
    invoke-static {p0, v7, v11}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    #@22
    move-result-object v2

    #@23
    .line 171
    if-eqz v2, :cond_1

    #@25
    .line 172
    invoke-static {v8, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    #@28
    move-result v11

    #@29
    invoke-virtual {v2, v11}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    #@2c
    .line 173
    invoke-virtual {v2}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    #@2f
    move-result-object v4

    #@30
    .line 175
    .local v4, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    if-eqz v4, :cond_1

    #@32
    .line 176
    int-to-long v12, p1

    #@33
    invoke-virtual {v3, v12, v13, v10, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    #@36
    .line 178
    invoke-virtual {v4, v8, v10}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@39
    move-result-object v11

    #@3a
    move-object v0, v11

    #@3b
    check-cast v0, Landroid/animation/StateListAnimator;

    #@3d
    move-object v2, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 199
    .end local v4    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    :cond_1
    if-eqz v7, :cond_2

    #@40
    .line 200
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@43
    .line 181
    :cond_2
    return-object v2

    #@44
    .line 190
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    #@45
    .line 192
    .local v5, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    #@47
    .line 193
    new-instance v11, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v12, "Can\'t load state list animator resource ID #0x"

    #@4f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v11

    #@53
    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@56
    move-result-object v12

    #@57
    .line 193
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v11

    #@5b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v11

    #@5f
    .line 192
    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@62
    .line 196
    .local v9, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@65
    .line 197
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    .line 198
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v11

    #@67
    .line 199
    if-eqz v7, :cond_3

    #@69
    .line 200
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@6c
    .line 198
    :cond_3
    throw v11

    #@6d
    .line 182
    :catch_1
    move-exception v6

    #@6e
    .line 184
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    #@70
    .line 185
    new-instance v11, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v12, "Can\'t load state list animator resource ID #0x"

    #@78
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v11

    #@7c
    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7f
    move-result-object v12

    #@80
    .line 185
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v11

    #@84
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v11

    #@88
    .line 184
    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@8b
    .line 188
    .restart local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8e
    .line 189
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 714
    const/4 v9, 0x0

    #@1
    .line 717
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@4
    move-result v7

    #@5
    .local v7, "type":I
    const/4 v11, 0x3

    #@6
    if-eq v7, v11, :cond_6

    #@8
    .line 718
    const/4 v11, 0x1

    #@9
    if-eq v7, v11, :cond_6

    #@b
    .line 720
    const/4 v11, 0x2

    #@c
    if-eq v7, v11, :cond_0

    #@e
    .line 721
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@11
    goto :goto_0

    #@12
    .line 725
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 727
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v11, "propertyValuesHolder"

    #@19
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v11

    #@1d
    if-eqz v11, :cond_4

    #@1f
    .line 729
    if-eqz p1, :cond_5

    #@21
    .line 730
    sget-object v11, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    #@23
    const/4 v12, 0x0

    #@24
    const/4 v13, 0x0

    #@25
    move-object/from16 v0, p3

    #@27
    invoke-virtual {p1, v0, v11, v12, v13}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2a
    move-result-object v1

    #@2b
    .line 734
    .local v1, "a":Landroid/content/res/TypedArray;
    :goto_1
    const/4 v11, 0x3

    #@2c
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    .line 735
    .local v5, "propertyName":Ljava/lang/String;
    const/4 v11, 0x2

    #@31
    .line 736
    const/4 v12, 0x4

    #@32
    .line 735
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    #@35
    move-result v8

    #@36
    .line 738
    .local v8, "valueType":I
    move-object/from16 v0, p2

    #@38
    invoke-static {p0, p1, v0, v5, v8}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    #@3b
    move-result-object v6

    #@3c
    .line 739
    .local v6, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v6, :cond_1

    #@3e
    .line 741
    const/4 v11, 0x0

    #@3f
    .line 742
    const/4 v12, 0x1

    #@40
    .line 740
    invoke-static {v1, v8, v11, v12, v5}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    #@43
    move-result-object v6

    #@44
    .line 744
    :cond_1
    if-eqz v6, :cond_3

    #@46
    .line 745
    if-nez v9, :cond_2

    #@48
    .line 746
    new-instance v9, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@4d
    .line 748
    :cond_2
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    .line 750
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@53
    .line 753
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "pvh":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "valueType":I
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@56
    goto :goto_0

    #@57
    .line 732
    :cond_5
    sget-object v11, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    #@59
    move-object/from16 v0, p3

    #@5b
    invoke-virtual {p0, v0, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5e
    move-result-object v1

    #@5f
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    goto :goto_1

    #@60
    .line 756
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    #@61
    .line 757
    .local v10, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v9, :cond_7

    #@63
    .line 758
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@66
    move-result v2

    #@67
    .line 759
    .local v2, "count":I
    new-array v10, v2, [Landroid/animation/PropertyValuesHolder;

    #@69
    .line 760
    .local v10, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    #@6a
    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_7

    #@6c
    .line 761
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f
    move-result-object v11

    #@70
    check-cast v11, Landroid/animation/PropertyValuesHolder;

    #@72
    aput-object v11, v10, v3

    #@74
    .line 760
    add-int/lit8 v3, v3, 0x1

    #@76
    goto :goto_2

    #@77
    .line 764
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v10    # "valuesArray":[Landroid/animation/PropertyValuesHolder;
    :cond_7
    return-object v10
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .locals 9
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F

    #@0
    .prologue
    .line 412
    const/4 v6, 0x1

    #@1
    const/16 v7, 0x12c

    #@3
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@6
    move-result v6

    #@7
    int-to-long v0, v6

    #@8
    .line 414
    .local v0, "duration":J
    const/4 v6, 0x2

    #@9
    const/4 v7, 0x0

    #@a
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@d
    move-result v6

    #@e
    int-to-long v4, v6

    #@f
    .line 416
    .local v4, "startDelay":J
    const/4 v6, 0x7

    #@10
    const/4 v7, 0x4

    #@11
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@14
    move-result v3

    #@15
    .line 418
    .local v3, "valueType":I
    const/4 v6, 0x4

    #@16
    if-ne v3, v6, :cond_0

    #@18
    .line 419
    const/4 v6, 0x5

    #@19
    .line 420
    const/4 v7, 0x6

    #@1a
    .line 419
    invoke-static {p1, v6, v7}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    #@1d
    move-result v3

    #@1e
    .line 423
    :cond_0
    const-string/jumbo v6, ""

    #@21
    const/4 v7, 0x5

    #@22
    const/4 v8, 0x6

    #@23
    .line 422
    invoke-static {p1, v3, v7, v8, v6}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    #@26
    move-result-object v2

    #@27
    .line 424
    .local v2, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_1

    #@29
    .line 425
    const/4 v6, 0x1

    #@2a
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    #@2c
    const/4 v7, 0x0

    #@2d
    aput-object v2, v6, v7

    #@2f
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@32
    .line 428
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@35
    .line 429
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    #@38
    .line 431
    const/4 v6, 0x3

    #@39
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 433
    const/4 v6, 0x3

    #@40
    const/4 v7, 0x0

    #@41
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@44
    move-result v6

    #@45
    .line 432
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    #@48
    .line 435
    :cond_2
    const/4 v6, 0x4

    #@49
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_3

    #@4f
    .line 437
    const/4 v6, 0x4

    #@50
    .line 438
    const/4 v7, 0x1

    #@51
    .line 437
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@54
    move-result v6

    #@55
    .line 436
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    #@58
    .line 441
    :cond_3
    if-eqz p2, :cond_4

    #@5a
    .line 442
    if-nez v3, :cond_5

    #@5c
    const/4 v6, 0x1

    #@5d
    :goto_0
    invoke-static {p0, p2, v6, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V

    #@60
    .line 411
    :cond_4
    return-void

    #@61
    .line 442
    :cond_5
    const/4 v6, 0x0

    #@62
    goto :goto_0
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .locals 9
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 456
    const/4 v0, 0x0

    #@4
    .line 457
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v5, 0x5

    #@5
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 458
    .local v1, "fromString":Ljava/lang/String;
    const/4 v5, 0x6

    #@a
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    .line 459
    .local v4, "toString":Ljava/lang/String;
    if-nez v1, :cond_0

    #@10
    .line 460
    const/4 v2, 0x0

    #@11
    .line 461
    :goto_0
    if-nez v4, :cond_1

    #@13
    .line 462
    const/4 v3, 0x0

    #@14
    .line 464
    :goto_1
    if-eqz v2, :cond_5

    #@16
    .line 465
    if-eqz v3, :cond_2

    #@18
    .line 466
    const/4 v5, 0x2

    #@19
    new-array v5, v5, [Ljava/lang/Object;

    #@1b
    aput-object v2, v5, v7

    #@1d
    aput-object v3, v5, v8

    #@1f
    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@22
    .line 467
    invoke-static {v2, v3}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    #@25
    move-result v5

    #@26
    if-nez v5, :cond_3

    #@28
    .line 468
    new-instance v5, Landroid/view/InflateException;

    #@2a
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    .line 469
    const-string/jumbo v7, " Can\'t morph from "

    #@3a
    .line 468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    .line 469
    const-string/jumbo v7, " to "

    #@45
    .line 468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@54
    throw v5

    #@55
    .line 460
    :cond_0
    new-instance v2, Landroid/util/PathParser$PathData;

    #@57
    invoke-direct {v2, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    #@5a
    .local v2, "pathDataFrom":Landroid/util/PathParser$PathData;
    goto :goto_0

    #@5b
    .line 462
    .end local v2    # "pathDataFrom":Landroid/util/PathParser$PathData;
    :cond_1
    new-instance v3, Landroid/util/PathParser$PathData;

    #@5d
    invoke-direct {v3, v4}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    #@60
    .local v3, "pathDataTo":Landroid/util/PathParser$PathData;
    goto :goto_1

    #@61
    .line 472
    .end local v3    # "pathDataTo":Landroid/util/PathParser$PathData;
    :cond_2
    new-array v5, v8, [Ljava/lang/Object;

    #@63
    aput-object v2, v5, v7

    #@65
    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@68
    .line 474
    :cond_3
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    #@6a
    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-direct {v0, v6}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    #@6d
    .line 484
    :cond_4
    :goto_2
    return-object v0

    #@6e
    .line 475
    .restart local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_5
    if-eqz v3, :cond_4

    #@70
    .line 476
    new-array v5, v8, [Ljava/lang/Object;

    #@72
    aput-object v3, v5, v7

    #@74
    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@77
    .line 477
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    #@79
    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-direct {v0, v6}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator;)V

    #@7c
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    goto :goto_2
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V
    .locals 16
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "pixelSize"    # F

    #@0
    .prologue
    move-object/from16 v3, p0

    #@2
    .line 498
    check-cast v3, Landroid/animation/ObjectAnimator;

    #@4
    .line 499
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    const/4 v13, 0x1

    #@5
    move-object/from16 v0, p1

    #@7
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    .line 509
    .local v5, "pathData":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@d
    .line 511
    const/4 v13, 0x2

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    .line 513
    .local v7, "propertyXName":Ljava/lang/String;
    const/4 v13, 0x3

    #@15
    move-object/from16 v0, p1

    #@17
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1a
    move-result-object v8

    #@1b
    .line 515
    .local v8, "propertyYName":Ljava/lang/String;
    if-nez v7, :cond_0

    #@1d
    if-nez v8, :cond_0

    #@1f
    .line 516
    new-instance v13, Landroid/view/InflateException;

    #@21
    new-instance v14, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@29
    move-result-object v15

    #@2a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v14

    #@2e
    .line 517
    const-string/jumbo v15, " propertyXName or propertyYName is needed for PathData"

    #@31
    .line 516
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v14

    #@35
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v14

    #@39
    invoke-direct {v13, v14}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v13

    #@3d
    .line 519
    :cond_0
    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    #@40
    move-result-object v4

    #@41
    .line 520
    .local v4, "path":Landroid/graphics/Path;
    const/high16 v13, 0x3f000000    # 0.5f

    #@43
    mul-float v1, v13, p3

    #@45
    .line 521
    .local v1, "error":F
    invoke-static {v4, v1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    #@48
    move-result-object v2

    #@49
    .line 524
    .local v2, "keyframeSet":Landroid/animation/PathKeyframes;
    if-eqz p2, :cond_3

    #@4b
    .line 525
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    #@4e
    move-result-object v10

    #@4f
    .line 526
    .local v10, "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    #@52
    move-result-object v12

    #@53
    .line 531
    .local v12, "yKeyframes":Landroid/animation/Keyframes;
    :goto_0
    const/4 v9, 0x0

    #@54
    .line 532
    .local v9, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x0

    #@55
    .line 533
    .local v11, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_1

    #@57
    .line 534
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@5a
    move-result-object v9

    #@5b
    .line 536
    .end local v9    # "x":Landroid/animation/PropertyValuesHolder;
    :cond_1
    if-eqz v8, :cond_2

    #@5d
    .line 537
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@60
    move-result-object v11

    #@61
    .line 539
    .end local v11    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_2
    if-nez v9, :cond_4

    #@63
    .line 540
    const/4 v13, 0x1

    #@64
    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    #@66
    const/4 v14, 0x0

    #@67
    aput-object v11, v13, v14

    #@69
    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@6c
    .line 497
    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :goto_1
    return-void

    #@6d
    .line 528
    .restart local v1    # "error":F
    .restart local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .restart local v4    # "path":Landroid/graphics/Path;
    .restart local v7    # "propertyXName":Ljava/lang/String;
    .restart local v8    # "propertyYName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    #@70
    move-result-object v10

    #@71
    .line 529
    .restart local v10    # "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    #@74
    move-result-object v12

    #@75
    .restart local v12    # "yKeyframes":Landroid/animation/Keyframes;
    goto :goto_0

    #@76
    .line 541
    :cond_4
    if-nez v11, :cond_5

    #@78
    .line 542
    const/4 v13, 0x1

    #@79
    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    #@7b
    const/4 v14, 0x0

    #@7c
    aput-object v9, v13, v14

    #@7e
    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@81
    goto :goto_1

    #@82
    .line 544
    :cond_5
    const/4 v13, 0x2

    #@83
    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    #@85
    const/4 v14, 0x0

    #@86
    aput-object v9, v13, v14

    #@88
    const/4 v14, 0x1

    #@89
    aput-object v11, v13, v14

    #@8b
    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@8e
    goto :goto_1

    #@8f
    .line 549
    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :cond_6
    const/4 v13, 0x0

    #@90
    move-object/from16 v0, p1

    #@92
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@95
    move-result-object v6

    #@96
    .line 550
    .local v6, "propertyName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    #@99
    goto :goto_1
.end method

.method private static setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .locals 8
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "hasFrom"    # Z
    .param p4, "fromType"    # I
    .param p5, "hasTo"    # Z
    .param p6, "toType"    # I

    #@0
    .prologue
    .line 568
    const/4 v2, 0x5

    #@1
    .line 569
    .local v2, "valueFromIndex":I
    const/4 v5, 0x6

    #@2
    .line 570
    .local v5, "valueToIndex":I
    if-eqz p2, :cond_6

    #@4
    .line 573
    if-eqz p3, :cond_4

    #@6
    .line 574
    const/4 v6, 0x5

    #@7
    if-ne p4, v6, :cond_1

    #@9
    .line 575
    const/4 v6, 0x0

    #@a
    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@d
    move-result v0

    #@e
    .line 579
    .local v0, "valueFrom":F
    :goto_0
    if-eqz p5, :cond_3

    #@10
    .line 580
    const/4 v6, 0x5

    #@11
    if-ne p6, v6, :cond_2

    #@13
    .line 581
    const/4 v6, 0x0

    #@14
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@17
    move-result v3

    #@18
    .line 585
    .local v3, "valueTo":F
    :goto_1
    const/4 v6, 0x2

    #@19
    new-array v6, v6, [F

    #@1b
    const/4 v7, 0x0

    #@1c
    aput v0, v6, v7

    #@1e
    const/4 v7, 0x1

    #@1f
    aput v3, v6, v7

    #@21
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@24
    .line 567
    .end local v0    # "valueFrom":F
    .end local v3    # "valueTo":F
    :cond_0
    :goto_2
    return-void

    #@25
    .line 577
    :cond_1
    const/4 v6, 0x0

    #@26
    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@29
    move-result v0

    #@2a
    .restart local v0    # "valueFrom":F
    goto :goto_0

    #@2b
    .line 583
    :cond_2
    const/4 v6, 0x0

    #@2c
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2f
    move-result v3

    #@30
    .restart local v3    # "valueTo":F
    goto :goto_1

    #@31
    .line 587
    .end local v3    # "valueTo":F
    :cond_3
    const/4 v6, 0x1

    #@32
    new-array v6, v6, [F

    #@34
    const/4 v7, 0x0

    #@35
    aput v0, v6, v7

    #@37
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@3a
    goto :goto_2

    #@3b
    .line 590
    .end local v0    # "valueFrom":F
    :cond_4
    const/4 v6, 0x5

    #@3c
    if-ne p6, v6, :cond_5

    #@3e
    .line 591
    const/4 v6, 0x0

    #@3f
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@42
    move-result v3

    #@43
    .line 595
    .restart local v3    # "valueTo":F
    :goto_3
    const/4 v6, 0x1

    #@44
    new-array v6, v6, [F

    #@46
    const/4 v7, 0x0

    #@47
    aput v3, v6, v7

    #@49
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@4c
    goto :goto_2

    #@4d
    .line 593
    .end local v3    # "valueTo":F
    :cond_5
    const/4 v6, 0x0

    #@4e
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@51
    move-result v3

    #@52
    .restart local v3    # "valueTo":F
    goto :goto_3

    #@53
    .line 600
    .end local v3    # "valueTo":F
    :cond_6
    if-eqz p3, :cond_c

    #@55
    .line 601
    const/4 v6, 0x5

    #@56
    if-ne p4, v6, :cond_7

    #@58
    .line 602
    const/4 v6, 0x0

    #@59
    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@5c
    move-result v6

    #@5d
    float-to-int v1, v6

    #@5e
    .line 608
    .local v1, "valueFrom":I
    :goto_4
    if-eqz p5, :cond_b

    #@60
    .line 609
    const/4 v6, 0x5

    #@61
    if-ne p6, v6, :cond_9

    #@63
    .line 610
    const/4 v6, 0x0

    #@64
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@67
    move-result v6

    #@68
    float-to-int v4, v6

    #@69
    .line 616
    .local v4, "valueTo":I
    :goto_5
    const/4 v6, 0x2

    #@6a
    new-array v6, v6, [I

    #@6c
    const/4 v7, 0x0

    #@6d
    aput v1, v6, v7

    #@6f
    const/4 v7, 0x1

    #@70
    aput v4, v6, v7

    #@72
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@75
    goto :goto_2

    #@76
    .line 603
    .end local v1    # "valueFrom":I
    .end local v4    # "valueTo":I
    :cond_7
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@79
    move-result v6

    #@7a
    if-eqz v6, :cond_8

    #@7c
    .line 604
    const/4 v6, 0x0

    #@7d
    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@80
    move-result v1

    #@81
    .restart local v1    # "valueFrom":I
    goto :goto_4

    #@82
    .line 606
    .end local v1    # "valueFrom":I
    :cond_8
    const/4 v6, 0x0

    #@83
    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@86
    move-result v1

    #@87
    .restart local v1    # "valueFrom":I
    goto :goto_4

    #@88
    .line 611
    :cond_9
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@8b
    move-result v6

    #@8c
    if-eqz v6, :cond_a

    #@8e
    .line 612
    const/4 v6, 0x0

    #@8f
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@92
    move-result v4

    #@93
    .restart local v4    # "valueTo":I
    goto :goto_5

    #@94
    .line 614
    .end local v4    # "valueTo":I
    :cond_a
    const/4 v6, 0x0

    #@95
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@98
    move-result v4

    #@99
    .restart local v4    # "valueTo":I
    goto :goto_5

    #@9a
    .line 618
    .end local v4    # "valueTo":I
    :cond_b
    const/4 v6, 0x1

    #@9b
    new-array v6, v6, [I

    #@9d
    const/4 v7, 0x0

    #@9e
    aput v1, v6, v7

    #@a0
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@a3
    goto :goto_2

    #@a4
    .line 621
    .end local v1    # "valueFrom":I
    :cond_c
    if-eqz p5, :cond_0

    #@a6
    .line 622
    const/4 v6, 0x5

    #@a7
    if-ne p6, v6, :cond_d

    #@a9
    .line 623
    const/4 v6, 0x0

    #@aa
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@ad
    move-result v6

    #@ae
    float-to-int v4, v6

    #@af
    .line 629
    .restart local v4    # "valueTo":I
    :goto_6
    const/4 v6, 0x1

    #@b0
    new-array v6, v6, [I

    #@b2
    const/4 v7, 0x0

    #@b3
    aput v4, v6, v7

    #@b5
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    #@b8
    goto/16 :goto_2

    #@ba
    .line 624
    .end local v4    # "valueTo":I
    :cond_d
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@bd
    move-result v6

    #@be
    if-eqz v6, :cond_e

    #@c0
    .line 625
    const/4 v6, 0x0

    #@c1
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@c4
    move-result v4

    #@c5
    .restart local v4    # "valueTo":I
    goto :goto_6

    #@c6
    .line 627
    .end local v4    # "valueTo":I
    :cond_e
    const/4 v6, 0x0

    #@c7
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@ca
    move-result v4

    #@cb
    .restart local v4    # "valueTo":I
    goto :goto_6
.end method
