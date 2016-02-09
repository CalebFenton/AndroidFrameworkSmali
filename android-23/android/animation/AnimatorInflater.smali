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
    .line 76
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    #@7
    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
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
    .line 664
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
    .line 671
    const/4 v14, 0x0

    #@1
    .line 672
    .local v14, "anim":Landroid/animation/Animator;
    const/16 v16, 0x0

    #@3
    .line 676
    .local v16, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@6
    move-result v17

    #@7
    .line 678
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
    .line 679
    :cond_1
    const/4 v4, 0x1

    #@19
    move/from16 v0, v22

    #@1b
    if-eq v0, v4, :cond_9

    #@1d
    .line 681
    const/4 v4, 0x2

    #@1e
    move/from16 v0, v22

    #@20
    if-ne v0, v4, :cond_0

    #@22
    .line 685
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@25
    move-result-object v21

    #@26
    .line 686
    .local v21, "name":Ljava/lang/String;
    const/16 v18, 0x0

    #@28
    .line 688
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
    .line 689
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
    .line 716
    :goto_1
    if-eqz p4, :cond_0

    #@41
    if-nez v18, :cond_0

    #@43
    .line 717
    if-nez v16, :cond_2

    #@45
    .line 718
    new-instance v16, Ljava/util/ArrayList;

    #@47
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@4a
    .line 720
    :cond_2
    move-object/from16 v0, v16

    #@4c
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    goto :goto_0

    #@50
    .line 690
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
    .line 691
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
    .line 692
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
    .line 693
    new-instance v14, Landroid/animation/AnimatorSet;

    #@76
    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    #@79
    .line 695
    .restart local v14    # "anim":Landroid/animation/Animator;
    if-eqz p1, :cond_5

    #@7b
    .line 696
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
    .line 700
    .local v12, "a":Landroid/content/res/TypedArray;
    :goto_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@8a
    move-result v4

    #@8b
    invoke-virtual {v14, v4}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    #@8e
    .line 701
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
    .line 702
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
    .line 704
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    #@a7
    goto :goto_1

    #@a8
    .line 698
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
    .line 705
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
    .line 707
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@c1
    move-result-object v4

    #@c2
    .line 706
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
    .line 708
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
    .line 709
    check-cast v4, Landroid/animation/ValueAnimator;

    #@d7
    move-object/from16 v0, v23

    #@d9
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    #@dc
    .line 711
    :cond_7
    const/16 v18, 0x1

    #@de
    goto/16 :goto_1

    #@e0
    .line 713
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
    .line 723
    .end local v18    # "gotValues":Z
    .end local v21    # "name":Ljava/lang/String;
    :cond_9
    if-eqz p4, :cond_b

    #@100
    if-eqz v16, :cond_b

    #@102
    .line 724
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@105
    move-result v4

    #@106
    new-array v15, v4, [Landroid/animation/Animator;

    #@108
    .line 725
    .local v15, "animsArray":[Landroid/animation/Animator;
    const/16 v19, 0x0

    #@10a
    .line 726
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
    .line 727
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
    .line 729
    .end local v11    # "a":Landroid/animation/Animator;
    :cond_a
    if-nez p5, :cond_c

    #@123
    .line 730
    move-object/from16 v0, p4

    #@125
    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@128
    .line 735
    .end local v13    # "a$iterator":Ljava/util/Iterator;
    .end local v15    # "animsArray":[Landroid/animation/Animator;
    .end local v19    # "index":I
    :cond_b
    :goto_4
    return-object v14

    #@129
    .line 732
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
    .line 941
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 942
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    #@b
    move-result-object v0

    #@c
    .line 941
    :goto_0
    return-object v0

    #@d
    .line 943
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    #@10
    move-result-object v0

    #@11
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 944
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    #@18
    move-result-object v0

    #@19
    goto :goto_0

    #@1a
    .line 945
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
    .line 206
    new-instance v7, Landroid/animation/StateListAnimator;

    #@2
    invoke-direct {v7}, Landroid/animation/StateListAnimator;-><init>()V

    #@5
    .line 209
    .local v7, "stateListAnimator":Landroid/animation/StateListAnimator;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v9

    #@9
    .line 210
    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    #@c
    goto :goto_0

    #@d
    .line 213
    :pswitch_0
    return-object v7

    #@e
    .line 217
    :pswitch_1
    const/4 v1, 0x0

    #@f
    .line 218
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
    .line 219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@1f
    move-result v3

    #@20
    .line 220
    .local v3, "attributeCount":I
    new-array v8, v3, [I

    #@22
    .line 221
    .local v8, "states":[I
    const/4 v5, 0x0

    #@23
    .line 222
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
    .line 223
    invoke-interface {p2, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    #@2a
    move-result v2

    #@2b
    .line 224
    .local v2, "attrName":I
    const v10, 0x10101cd

    #@2e
    if-ne v2, v10, :cond_1

    #@30
    .line 225
    const/4 v10, 0x0

    #@31
    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    #@34
    move-result v0

    #@35
    .line 226
    .local v0, "animId":I
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    #@38
    move-result-object v1

    #@39
    .local v1, "animator":Landroid/animation/Animator;
    move v5, v6

    #@3a
    .line 222
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
    .line 228
    .restart local v2    # "attrName":I
    :cond_1
    add-int/lit8 v5, v6, 0x1

    #@40
    .line 229
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
    .line 228
    .end local v2    # "attrName":I
    :goto_3
    aput v2, v8, v6

    #@49
    goto :goto_2

    #@4a
    .line 230
    .restart local v2    # "attrName":I
    :cond_2
    neg-int v2, v2

    #@4b
    goto :goto_3

    #@4c
    .line 233
    .end local v2    # "attrName":I
    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    :cond_3
    if-nez v1, :cond_4

    #@4e
    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@51
    move-result-object v10

    #@52
    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@55
    move-result-object v11

    #@56
    const/high16 v12, 0x3f800000    # 1.0f

    #@58
    .line 234
    invoke-static {v10, v11, p1, v12}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    #@5b
    move-result-object v1

    #@5c
    .line 238
    :cond_4
    if-nez v1, :cond_5

    #@5e
    .line 239
    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    #@60
    .line 240
    const-string/jumbo v11, "animation state item must have a valid animation"

    #@63
    .line 239
    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@66
    throw v10

    #@67
    .line 243
    :cond_5
    invoke-static {v8, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    #@6a
    move-result-object v10

    #@6b
    .line 242
    invoke-virtual {v7, v10, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@6e
    goto :goto_0

    #@6f
    .line 210
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
    .line 968
    sub-int v3, p3, p2

    #@2
    add-int/lit8 v0, v3, 0x2

    #@4
    .line 969
    .local v0, "count":I
    int-to-float v3, v0

    #@5
    div-float v2, p1, v3

    #@7
    .line 970
    .local v2, "increment":F
    move v1, p2

    #@8
    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    #@a
    .line 971
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
    .line 970
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 967
    :cond_0
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    #@0
    .prologue
    .line 838
    if-eqz p0, :cond_0

    #@2
    array-length v3, p0

    #@3
    if-nez v3, :cond_1

    #@5
    .line 839
    :cond_0
    return-void

    #@6
    .line 841
    :cond_1
    const-string/jumbo v3, "AnimatorInflater"

    #@9
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 842
    array-length v0, p0

    #@d
    .line 843
    .local v0, "count":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@10
    .line 844
    aget-object v2, p0, v1

    #@12
    check-cast v2, Landroid/animation/Keyframe;

    #@14
    .line 845
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
    .line 846
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
    .line 845
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 846
    const-string/jumbo v5, ", "

    #@41
    .line 845
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    .line 847
    const-string/jumbo v5, ", value : "

    #@48
    .line 845
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    .line 847
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
    .line 845
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
    .line 843
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0

    #@64
    .line 846
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
    .line 847
    :cond_3
    const-string/jumbo v3, "null"

    #@70
    goto :goto_2

    #@71
    .line 837
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
    .line 1095
    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    #@2
    monitor-enter v1

    #@3
    .line 1096
    :try_start_0
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@9
    .line 1097
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
    .line 1095
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
    .line 303
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p2

    #@4
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@7
    move-result-object v14

    #@8
    .line 304
    .local v14, "tvFrom":Landroid/util/TypedValue;
    if-eqz v14, :cond_4

    #@a
    const/4 v7, 0x1

    #@b
    .line 305
    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_5

    #@d
    iget v5, v14, Landroid/util/TypedValue;->type:I

    #@f
    .line 306
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
    .line 307
    .local v15, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    #@19
    const/4 v8, 0x1

    #@1a
    .line 308
    .local v8, "hasTo":Z
    :goto_2
    if-eqz v8, :cond_7

    #@1c
    iget v13, v15, Landroid/util/TypedValue;->type:I

    #@1e
    .line 310
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
    .line 312
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
    .line 313
    :cond_1
    const/16 p1, 0x3

    #@38
    .line 319
    :cond_2
    :goto_4
    if-nez p1, :cond_9

    #@3a
    const/4 v6, 0x1

    #@3b
    .line 321
    .local v6, "getFloats":Z
    :goto_5
    const/4 v11, 0x0

    #@3c
    .line 323
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/16 v20, 0x2

    #@3e
    move/from16 v0, p1

    #@40
    move/from16 v1, v20

    #@42
    if-ne v0, v1, :cond_e

    #@44
    .line 324
    move-object/from16 v0, p0

    #@46
    move/from16 v1, p2

    #@48
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    .line 325
    .local v4, "fromString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4e
    move/from16 v1, p3

    #@50
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@53
    move-result-object v12

    #@54
    .line 326
    .local v12, "toString":Ljava/lang/String;
    invoke-static {v4}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    #@57
    move-result-object v9

    #@58
    .line 327
    .local v9, "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    invoke-static {v12}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    #@5b
    move-result-object v10

    #@5c
    .line 329
    .local v10, "nodesTo":[Landroid/util/PathParser$PathDataNode;
    if-nez v9, :cond_3

    #@5e
    if-eqz v10, :cond_b

    #@60
    .line 330
    :cond_3
    if-eqz v9, :cond_d

    #@62
    .line 332
    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    #@64
    invoke-static {v9}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    #@67
    move-result-object v20

    #@68
    move-object/from16 v0, v20

    #@6a
    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    #@6d
    .line 333
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v10, :cond_c

    #@6f
    .line 334
    invoke-static {v9, v10}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    #@72
    move-result v20

    #@73
    if-nez v20, :cond_a

    #@75
    .line 335
    new-instance v20, Landroid/view/InflateException;

    #@77
    new-instance v21, Ljava/lang/StringBuilder;

    #@79
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v22, " Can\'t morph from "

    #@7f
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v21

    #@83
    move-object/from16 v0, v21

    #@85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v21

    #@89
    const-string/jumbo v22, " to "

    #@8c
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v21

    #@90
    move-object/from16 v0, v21

    #@92
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v21

    #@96
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v21

    #@9a
    invoke-direct/range {v20 .. v21}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v20

    #@9e
    .line 304
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v5    # "fromType":I
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "hasTo":Z
    .end local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    .end local v13    # "toType":I
    .end local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v7, 0x0

    #@9f
    .restart local v7    # "hasFrom":Z
    goto/16 :goto_0

    #@a1
    .line 305
    :cond_5
    const/4 v5, 0x0

    #@a2
    .restart local v5    # "fromType":I
    goto/16 :goto_1

    #@a4
    .line 307
    .restart local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_6
    const/4 v8, 0x0

    #@a5
    .restart local v8    # "hasTo":Z
    goto/16 :goto_2

    #@a7
    .line 308
    :cond_7
    const/4 v13, 0x0

    #@a8
    .restart local v13    # "toType":I
    goto/16 :goto_3

    #@aa
    .line 315
    :cond_8
    const/16 p1, 0x0

    #@ac
    goto :goto_4

    #@ad
    .line 319
    :cond_9
    const/4 v6, 0x0

    #@ae
    .restart local v6    # "getFloats":Z
    goto :goto_5

    #@af
    .line 338
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_a
    const/16 v20, 0x2

    #@b1
    move/from16 v0, v20

    #@b3
    new-array v0, v0, [Ljava/lang/Object;

    #@b5
    move-object/from16 v20, v0

    #@b7
    .line 339
    const/16 v21, 0x0

    #@b9
    aput-object v9, v20, v21

    #@bb
    const/16 v21, 0x1

    #@bd
    aput-object v10, v20, v21

    #@bf
    .line 338
    move-object/from16 v0, p4

    #@c1
    move-object/from16 v1, v20

    #@c3
    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@c6
    move-result-object v11

    #@c7
    .line 427
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_b
    :goto_6
    return-object v11

    #@c8
    .line 341
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_c
    const/16 v20, 0x1

    #@ca
    move/from16 v0, v20

    #@cc
    new-array v0, v0, [Ljava/lang/Object;

    #@ce
    move-object/from16 v20, v0

    #@d0
    .line 342
    const/16 v21, 0x0

    #@d2
    aput-object v9, v20, v21

    #@d4
    .line 341
    move-object/from16 v0, p4

    #@d6
    move-object/from16 v1, v20

    #@d8
    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@db
    move-result-object v11

    #@dc
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_6

    #@dd
    .line 344
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_d
    if-eqz v10, :cond_b

    #@df
    .line 346
    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    #@e1
    invoke-static {v10}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    #@e4
    move-result-object v20

    #@e5
    move-object/from16 v0, v20

    #@e7
    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    #@ea
    .line 347
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v20, 0x1

    #@ec
    move/from16 v0, v20

    #@ee
    new-array v0, v0, [Ljava/lang/Object;

    #@f0
    move-object/from16 v20, v0

    #@f2
    .line 348
    const/16 v21, 0x0

    #@f4
    aput-object v10, v20, v21

    #@f6
    .line 347
    move-object/from16 v0, p4

    #@f8
    move-object/from16 v1, v20

    #@fa
    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    #@fd
    move-result-object v11

    #@fe
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_6

    #@ff
    .line 352
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .end local v12    # "toString":Ljava/lang/String;
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_e
    const/4 v3, 0x0

    #@100
    .line 354
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v20, 0x3

    #@102
    move/from16 v0, p1

    #@104
    move/from16 v1, v20

    #@106
    if-ne v0, v1, :cond_f

    #@108
    .line 356
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    #@10b
    move-result-object v3

    #@10c
    .line 358
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_f
    if-eqz v6, :cond_16

    #@10e
    .line 361
    if-eqz v7, :cond_14

    #@110
    .line 362
    const/16 v20, 0x5

    #@112
    move/from16 v0, v20

    #@114
    if-ne v5, v0, :cond_11

    #@116
    .line 363
    const/16 v20, 0x0

    #@118
    move-object/from16 v0, p0

    #@11a
    move/from16 v1, p2

    #@11c
    move/from16 v2, v20

    #@11e
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@121
    move-result v16

    #@122
    .line 367
    .local v16, "valueFrom":F
    :goto_7
    if-eqz v8, :cond_13

    #@124
    .line 368
    const/16 v20, 0x5

    #@126
    move/from16 v0, v20

    #@128
    if-ne v13, v0, :cond_12

    #@12a
    .line 369
    const/16 v20, 0x0

    #@12c
    move-object/from16 v0, p0

    #@12e
    move/from16 v1, p3

    #@130
    move/from16 v2, v20

    #@132
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@135
    move-result v18

    #@136
    .line 373
    .local v18, "valueTo":F
    :goto_8
    const/16 v20, 0x2

    #@138
    move/from16 v0, v20

    #@13a
    new-array v0, v0, [F

    #@13c
    move-object/from16 v20, v0

    #@13e
    .line 374
    const/16 v21, 0x0

    #@140
    aput v16, v20, v21

    #@142
    const/16 v21, 0x1

    #@144
    aput v18, v20, v21

    #@146
    .line 373
    move-object/from16 v0, p4

    #@148
    move-object/from16 v1, v20

    #@14a
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@14d
    move-result-object v11

    #@14e
    .line 422
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "valueFrom":F
    .end local v18    # "valueTo":F
    :cond_10
    :goto_9
    if-eqz v11, :cond_b

    #@150
    if-eqz v3, :cond_b

    #@152
    .line 423
    invoke-virtual {v11, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@155
    goto/16 :goto_6

    #@157
    .line 365
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_11
    const/16 v20, 0x0

    #@159
    move-object/from16 v0, p0

    #@15b
    move/from16 v1, p2

    #@15d
    move/from16 v2, v20

    #@15f
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@162
    move-result v16

    #@163
    .restart local v16    # "valueFrom":F
    goto :goto_7

    #@164
    .line 371
    :cond_12
    const/16 v20, 0x0

    #@166
    move-object/from16 v0, p0

    #@168
    move/from16 v1, p3

    #@16a
    move/from16 v2, v20

    #@16c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@16f
    move-result v18

    #@170
    .restart local v18    # "valueTo":F
    goto :goto_8

    #@171
    .line 376
    .end local v18    # "valueTo":F
    :cond_13
    const/16 v20, 0x1

    #@173
    move/from16 v0, v20

    #@175
    new-array v0, v0, [F

    #@177
    move-object/from16 v20, v0

    #@179
    const/16 v21, 0x0

    #@17b
    aput v16, v20, v21

    #@17d
    move-object/from16 v0, p4

    #@17f
    move-object/from16 v1, v20

    #@181
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@184
    move-result-object v11

    #@185
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_9

    #@186
    .line 379
    .end local v16    # "valueFrom":F
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_14
    const/16 v20, 0x5

    #@188
    move/from16 v0, v20

    #@18a
    if-ne v13, v0, :cond_15

    #@18c
    .line 380
    const/16 v20, 0x0

    #@18e
    move-object/from16 v0, p0

    #@190
    move/from16 v1, p3

    #@192
    move/from16 v2, v20

    #@194
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@197
    move-result v18

    #@198
    .line 384
    .restart local v18    # "valueTo":F
    :goto_a
    const/16 v20, 0x1

    #@19a
    move/from16 v0, v20

    #@19c
    new-array v0, v0, [F

    #@19e
    move-object/from16 v20, v0

    #@1a0
    const/16 v21, 0x0

    #@1a2
    aput v18, v20, v21

    #@1a4
    move-object/from16 v0, p4

    #@1a6
    move-object/from16 v1, v20

    #@1a8
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@1ab
    move-result-object v11

    #@1ac
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_9

    #@1ad
    .line 382
    .end local v18    # "valueTo":F
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_15
    const/16 v20, 0x0

    #@1af
    move-object/from16 v0, p0

    #@1b1
    move/from16 v1, p3

    #@1b3
    move/from16 v2, v20

    #@1b5
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1b8
    move-result v18

    #@1b9
    .restart local v18    # "valueTo":F
    goto :goto_a

    #@1ba
    .line 389
    .end local v18    # "valueTo":F
    :cond_16
    if-eqz v7, :cond_1c

    #@1bc
    .line 390
    const/16 v20, 0x5

    #@1be
    move/from16 v0, v20

    #@1c0
    if-ne v5, v0, :cond_17

    #@1c2
    .line 391
    const/16 v20, 0x0

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    move/from16 v1, p2

    #@1c8
    move/from16 v2, v20

    #@1ca
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1cd
    move-result v20

    #@1ce
    move/from16 v0, v20

    #@1d0
    float-to-int v0, v0

    #@1d1
    move/from16 v17, v0

    #@1d3
    .line 397
    .local v17, "valueFrom":I
    :goto_b
    if-eqz v8, :cond_1b

    #@1d5
    .line 398
    const/16 v20, 0x5

    #@1d7
    move/from16 v0, v20

    #@1d9
    if-ne v13, v0, :cond_19

    #@1db
    .line 399
    const/16 v20, 0x0

    #@1dd
    move-object/from16 v0, p0

    #@1df
    move/from16 v1, p3

    #@1e1
    move/from16 v2, v20

    #@1e3
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@1e6
    move-result v20

    #@1e7
    move/from16 v0, v20

    #@1e9
    float-to-int v0, v0

    #@1ea
    move/from16 v19, v0

    #@1ec
    .line 405
    .local v19, "valueTo":I
    :goto_c
    const/16 v20, 0x2

    #@1ee
    move/from16 v0, v20

    #@1f0
    new-array v0, v0, [I

    #@1f2
    move-object/from16 v20, v0

    #@1f4
    const/16 v21, 0x0

    #@1f6
    aput v17, v20, v21

    #@1f8
    const/16 v21, 0x1

    #@1fa
    aput v19, v20, v21

    #@1fc
    move-object/from16 v0, p4

    #@1fe
    move-object/from16 v1, v20

    #@200
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@203
    move-result-object v11

    #@204
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_9

    #@206
    .line 392
    .end local v17    # "valueFrom":I
    .end local v19    # "valueTo":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_17
    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@209
    move-result v20

    #@20a
    if-eqz v20, :cond_18

    #@20c
    .line 393
    const/16 v20, 0x0

    #@20e
    move-object/from16 v0, p0

    #@210
    move/from16 v1, p2

    #@212
    move/from16 v2, v20

    #@214
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@217
    move-result v17

    #@218
    .restart local v17    # "valueFrom":I
    goto :goto_b

    #@219
    .line 395
    .end local v17    # "valueFrom":I
    :cond_18
    const/16 v20, 0x0

    #@21b
    move-object/from16 v0, p0

    #@21d
    move/from16 v1, p2

    #@21f
    move/from16 v2, v20

    #@221
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@224
    move-result v17

    #@225
    .restart local v17    # "valueFrom":I
    goto :goto_b

    #@226
    .line 400
    :cond_19
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@229
    move-result v20

    #@22a
    if-eqz v20, :cond_1a

    #@22c
    .line 401
    const/16 v20, 0x0

    #@22e
    move-object/from16 v0, p0

    #@230
    move/from16 v1, p3

    #@232
    move/from16 v2, v20

    #@234
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@237
    move-result v19

    #@238
    .restart local v19    # "valueTo":I
    goto :goto_c

    #@239
    .line 403
    .end local v19    # "valueTo":I
    :cond_1a
    const/16 v20, 0x0

    #@23b
    move-object/from16 v0, p0

    #@23d
    move/from16 v1, p3

    #@23f
    move/from16 v2, v20

    #@241
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@244
    move-result v19

    #@245
    .restart local v19    # "valueTo":I
    goto :goto_c

    #@246
    .line 407
    .end local v19    # "valueTo":I
    :cond_1b
    const/16 v20, 0x1

    #@248
    move/from16 v0, v20

    #@24a
    new-array v0, v0, [I

    #@24c
    move-object/from16 v20, v0

    #@24e
    const/16 v21, 0x0

    #@250
    aput v17, v20, v21

    #@252
    move-object/from16 v0, p4

    #@254
    move-object/from16 v1, v20

    #@256
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@259
    move-result-object v11

    #@25a
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_9

    #@25c
    .line 410
    .end local v17    # "valueFrom":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1c
    if-eqz v8, :cond_10

    #@25e
    .line 411
    const/16 v20, 0x5

    #@260
    move/from16 v0, v20

    #@262
    if-ne v13, v0, :cond_1d

    #@264
    .line 412
    const/16 v20, 0x0

    #@266
    move-object/from16 v0, p0

    #@268
    move/from16 v1, p3

    #@26a
    move/from16 v2, v20

    #@26c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@26f
    move-result v20

    #@270
    move/from16 v0, v20

    #@272
    float-to-int v0, v0

    #@273
    move/from16 v19, v0

    #@275
    .line 418
    .restart local v19    # "valueTo":I
    :goto_d
    const/16 v20, 0x1

    #@277
    move/from16 v0, v20

    #@279
    new-array v0, v0, [I

    #@27b
    move-object/from16 v20, v0

    #@27d
    const/16 v21, 0x0

    #@27f
    aput v19, v20, v21

    #@281
    move-object/from16 v0, p4

    #@283
    move-object/from16 v1, v20

    #@285
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@288
    move-result-object v11

    #@289
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_9

    #@28b
    .line 413
    .end local v19    # "valueTo":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1d
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@28e
    move-result v20

    #@28f
    if-eqz v20, :cond_1e

    #@291
    .line 414
    const/16 v20, 0x0

    #@293
    move-object/from16 v0, p0

    #@295
    move/from16 v1, p3

    #@297
    move/from16 v2, v20

    #@299
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@29c
    move-result v19

    #@29d
    .restart local v19    # "valueTo":I
    goto :goto_d

    #@29e
    .line 416
    .end local v19    # "valueTo":I
    :cond_1e
    const/16 v20, 0x0

    #@2a0
    move-object/from16 v0, p0

    #@2a2
    move/from16 v1, p3

    #@2a4
    move/from16 v2, v20

    #@2a6
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2a9
    move-result v19

    #@2aa
    .restart local v19    # "valueTo":I
    goto :goto_d
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 8
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    #@0
    .prologue
    .line 820
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@3
    move-result-object v4

    #@4
    .line 821
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_2

    #@6
    const/4 v1, 0x1

    #@7
    .line 822
    .local v1, "hasFrom":Z
    :goto_0
    if-eqz v1, :cond_3

    #@9
    iget v0, v4, Landroid/util/TypedValue;->type:I

    #@b
    .line 823
    .local v0, "fromType":I
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@e
    move-result-object v5

    #@f
    .line 824
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_4

    #@11
    const/4 v2, 0x1

    #@12
    .line 825
    .local v2, "hasTo":Z
    :goto_2
    if-eqz v2, :cond_5

    #@14
    iget v3, v5, Landroid/util/TypedValue;->type:I

    #@16
    .line 829
    .local v3, "toType":I
    :goto_3
    if-eqz v1, :cond_0

    #@18
    invoke-static {v0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@1b
    move-result v7

    #@1c
    if-nez v7, :cond_1

    #@1e
    :cond_0
    if-eqz v2, :cond_6

    #@20
    invoke-static {v3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_6

    #@26
    .line 830
    :cond_1
    const/4 v6, 0x3

    #@27
    .line 834
    .local v6, "valueType":I
    :goto_4
    return v6

    #@28
    .line 821
    .end local v0    # "fromType":I
    .end local v1    # "hasFrom":Z
    .end local v2    # "hasTo":Z
    .end local v3    # "toType":I
    .end local v5    # "tvTo":Landroid/util/TypedValue;
    .end local v6    # "valueType":I
    :cond_2
    const/4 v1, 0x0

    #@29
    .restart local v1    # "hasFrom":Z
    goto :goto_0

    #@2a
    .line 822
    :cond_3
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "fromType":I
    goto :goto_1

    #@2c
    .line 824
    .restart local v5    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v2, 0x0

    #@2d
    .restart local v2    # "hasTo":Z
    goto :goto_2

    #@2e
    .line 825
    :cond_5
    const/4 v3, 0x0

    #@2f
    .restart local v3    # "toType":I
    goto :goto_3

    #@30
    .line 832
    :cond_6
    const/4 v6, 0x0

    #@31
    .restart local v6    # "valueType":I
    goto :goto_4
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 799
    if-eqz p1, :cond_0

    #@3
    .line 800
    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    #@5
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 805
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@c
    move-result-object v2

    #@d
    .line 806
    .local v2, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_1

    #@f
    const/4 v1, 0x1

    #@10
    .line 809
    .local v1, "hasValue":Z
    :goto_1
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
    .line 810
    const/4 v3, 0x3

    #@1b
    .line 814
    .local v3, "valueType":I
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1e
    .line 815
    return v3

    #@1f
    .line 802
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "hasValue":Z
    .end local v2    # "keyframeValue":Landroid/util/TypedValue;
    .end local v3    # "valueType":I
    :cond_0
    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    #@21
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@24
    move-result-object v0

    #@25
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    #@26
    .line 806
    .restart local v2    # "keyframeValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    #@27
    .restart local v1    # "hasValue":Z
    goto :goto_1

    #@28
    .line 812
    :cond_2
    const/4 v3, 0x0

    #@29
    .restart local v3    # "valueType":I
    goto :goto_2
.end method

.method private static isColorType(I)Z
    .locals 2
    .param p0, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1102
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
    .line 88
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
    .line 103
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
    .line 109
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    #@3
    move-result-object v3

    #@4
    .line 111
    .local v3, "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    int-to-long v10, p2

    #@5
    invoke-virtual {v3, v10, v11, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/animation/Animator;

    #@b
    .line 112
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    #@d
    .line 116
    return-object v2

    #@e
    .line 120
    :cond_0
    const/4 v7, 0x0

    #@f
    .line 122
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@12
    move-result-object v7

    #@13
    .line 123
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, p1, v7, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    #@16
    move-result-object v2

    #@17
    .line 124
    if-eqz v2, :cond_1

    #@19
    .line 125
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    #@1c
    move-result v9

    #@1d
    invoke-virtual {v2, v9}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    #@20
    .line 126
    invoke-virtual {v2}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    #@23
    move-result-object v4

    #@24
    .line 127
    .local v4, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    if-eqz v4, :cond_1

    #@26
    .line 131
    int-to-long v10, p2

    #@27
    invoke-virtual {v3, v10, v11, p1, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    #@2a
    .line 133
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
    .line 150
    .end local v4    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    :cond_1
    if-eqz v7, :cond_2

    #@34
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@37
    .line 136
    :cond_2
    return-object v2

    #@38
    .line 143
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    #@39
    .line 145
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
    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v10

    #@4b
    .line 145
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
    .line 147
    .local v8, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@59
    .line 148
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .line 149
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v9

    #@5b
    .line 150
    if-eqz v7, :cond_3

    #@5d
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@60
    .line 149
    :cond_3
    throw v9

    #@61
    .line 137
    :catch_1
    move-exception v6

    #@62
    .line 139
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
    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@73
    move-result-object v10

    #@74
    .line 139
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
    .line 141
    .restart local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@82
    .line 142
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
    .line 1050
    const/4 v0, 0x0

    #@2
    .line 1051
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@3
    .line 1053
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-eqz p1, :cond_5

    #@5
    .line 1054
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    #@7
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@a
    move-result-object v0

    #@b
    .line 1060
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    :goto_0
    if-eqz p3, :cond_0

    #@d
    .line 1061
    if-eqz p1, :cond_6

    #@f
    .line 1063
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    #@11
    .line 1062
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@14
    move-result-object v1

    #@15
    .line 1067
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@18
    move-result v4

    #@19
    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    #@1c
    .line 1070
    .end local v1    # "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :cond_0
    if-nez p3, :cond_1

    #@1e
    .line 1071
    new-instance p3, Landroid/animation/ValueAnimator;

    #@20
    .end local p3    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    #@23
    .line 1073
    .restart local p3    # "anim":Landroid/animation/ValueAnimator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@26
    move-result v4

    #@27
    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    #@2a
    .line 1075
    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    #@2d
    .line 1077
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@30
    move-result v3

    #@31
    .line 1078
    .local v3, "resID":I
    if-lez v3, :cond_3

    #@33
    .line 1079
    invoke-static {p0, p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    #@36
    move-result-object v2

    #@37
    .line 1080
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    instance-of v4, v2, Landroid/view/animation/BaseInterpolator;

    #@39
    if-eqz v4, :cond_2

    #@3b
    move-object v4, v2

    #@3c
    .line 1082
    check-cast v4, Landroid/view/animation/BaseInterpolator;

    #@3e
    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    #@41
    move-result v4

    #@42
    .line 1081
    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    #@45
    .line 1084
    :cond_2
    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@48
    .line 1087
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@4b
    .line 1088
    if-eqz v1, :cond_4

    #@4d
    .line 1089
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@50
    .line 1091
    :cond_4
    return-object p3

    #@51
    .line 1056
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
    .line 1065
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
    .line 980
    if-eqz p1, :cond_2

    #@3
    .line 981
    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    #@5
    invoke-virtual {p1, p2, v9, v11, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 986
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/4 v5, 0x0

    #@a
    .line 988
    .local v5, "keyframe":Landroid/animation/Keyframe;
    const/high16 v9, -0x40800000    # -1.0f

    #@c
    const/4 v10, 0x3

    #@d
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@10
    move-result v1

    #@11
    .line 990
    .local v1, "fraction":F
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@14
    move-result-object v6

    #@15
    .line 991
    .local v6, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v6, :cond_3

    #@17
    const/4 v2, 0x1

    #@18
    .line 992
    .local v2, "hasValue":Z
    :goto_1
    const/4 v9, 0x4

    #@19
    if-ne p3, v9, :cond_0

    #@1b
    .line 995
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
    .line 996
    const/4 p3, 0x3

    #@26
    .line 1002
    :cond_0
    :goto_2
    if-eqz v2, :cond_5

    #@28
    .line 1003
    packed-switch p3, :pswitch_data_0

    #@2b
    .line 1019
    .end local v5    # "keyframe":Landroid/animation/Keyframe;
    :goto_3
    :pswitch_0
    const/4 v9, 0x1

    #@2c
    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2f
    move-result v7

    #@30
    .line 1020
    .local v7, "resID":I
    if-lez v7, :cond_1

    #@32
    .line 1021
    invoke-static {p0, p1, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    #@35
    move-result-object v4

    #@36
    .line 1022
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v5, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@39
    .line 1024
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3c
    .line 1026
    return-object v5

    #@3d
    .line 983
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
    .line 991
    .restart local v1    # "fraction":F
    .restart local v5    # "keyframe":Landroid/animation/Keyframe;
    .restart local v6    # "keyframeValue":Landroid/util/TypedValue;
    :cond_3
    const/4 v2, 0x0

    #@45
    .restart local v2    # "hasValue":Z
    goto :goto_1

    #@46
    .line 998
    :cond_4
    const/4 p3, 0x0

    #@47
    goto :goto_2

    #@48
    .line 1005
    :pswitch_1
    const/4 v9, 0x0

    #@49
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4c
    move-result v8

    #@4d
    .line 1006
    .local v8, "value":F
    invoke-static {v1, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    #@50
    move-result-object v5

    #@51
    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    #@52
    .line 1010
    .end local v8    # "value":F
    .local v5, "keyframe":Landroid/animation/Keyframe;
    :pswitch_2
    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    #@55
    move-result v3

    #@56
    .line 1011
    .local v3, "intValue":I
    invoke-static {v1, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    #@59
    move-result-object v5

    #@5a
    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    #@5b
    .line 1015
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
    .line 1016
    .local v5, "keyframe":Landroid/animation/Keyframe;
    :cond_6
    invoke-static {v1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    #@65
    move-result-object v5

    #@66
    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    #@67
    .line 1003
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
    .line 1031
    new-instance v0, Landroid/animation/ObjectAnimator;

    #@2
    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    #@5
    .line 1033
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    #@8
    .line 1035
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
    .line 856
    const/16 v19, 0x0

    #@2
    .line 857
    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x0

    #@3
    .line 860
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
    .line 861
    const/16 v20, 0x1

    #@11
    move/from16 v0, v18

    #@13
    move/from16 v1, v20

    #@15
    if-eq v0, v1, :cond_4

    #@17
    .line 862
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a
    move-result-object v15

    #@1b
    .line 863
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
    .line 864
    const/16 v20, 0x4

    #@28
    move/from16 v0, p4

    #@2a
    move/from16 v1, v20

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    .line 865
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
    .line 867
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
    .line 868
    .local v11, "keyframe":Landroid/animation/Keyframe;
    if-eqz v11, :cond_3

    #@4e
    .line 869
    if-nez v13, :cond_2

    #@50
    .line 870
    new-instance v13, Ljava/util/ArrayList;

    #@52
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@55
    .line 872
    :cond_2
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 874
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@5b
    goto :goto_0

    #@5c
    .line 879
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
    .line 885
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
    .line 886
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
    .line 887
    .local v14, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v14}, Landroid/animation/Keyframe;->getFraction()F

    #@7b
    move-result v5

    #@7c
    .line 888
    .local v5, "endFraction":F
    const/high16 v20, 0x3f800000    # 1.0f

    #@7e
    cmpg-float v20, v5, v20

    #@80
    if-gez v20, :cond_5

    #@82
    .line 889
    const/16 v20, 0x0

    #@84
    cmpg-float v20, v5, v20

    #@86
    if-gez v20, :cond_8

    #@88
    .line 890
    const/high16 v20, 0x3f800000    # 1.0f

    #@8a
    move/from16 v0, v20

    #@8c
    invoke-virtual {v14, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    #@8f
    .line 896
    :cond_5
    :goto_1
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    #@92
    move-result v16

    #@93
    .line 897
    .local v16, "startFraction":F
    const/16 v20, 0x0

    #@95
    cmpl-float v20, v16, v20

    #@97
    if-eqz v20, :cond_6

    #@99
    .line 898
    const/16 v20, 0x0

    #@9b
    cmpg-float v20, v16, v20

    #@9d
    if-gez v20, :cond_9

    #@9f
    .line 899
    const/16 v20, 0x0

    #@a1
    move/from16 v0, v20

    #@a3
    invoke-virtual {v7, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    #@a6
    .line 905
    :cond_6
    :goto_2
    new-array v12, v4, [Landroid/animation/Keyframe;

    #@a8
    .line 906
    .local v12, "keyframeArray":[Landroid/animation/Keyframe;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@ab
    .line 907
    const/4 v9, 0x0

    #@ac
    .local v9, "i":I
    :goto_3
    if-ge v9, v4, :cond_e

    #@ae
    .line 908
    aget-object v11, v12, v9

    #@b0
    .line 909
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
    .line 910
    if-nez v9, :cond_a

    #@bc
    .line 911
    const/16 v20, 0x0

    #@be
    move/from16 v0, v20

    #@c0
    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    #@c3
    .line 907
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    #@c5
    goto :goto_3

    #@c6
    .line 892
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
    .line 893
    add-int/lit8 v4, v4, 0x1

    #@db
    goto :goto_1

    #@dc
    .line 901
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
    .line 902
    add-int/lit8 v4, v4, 0x1

    #@ef
    goto :goto_2

    #@f0
    .line 912
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
    .line 913
    const/high16 v20, 0x3f800000    # 1.0f

    #@f8
    move/from16 v0, v20

    #@fa
    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    #@fd
    goto :goto_4

    #@fe
    .line 917
    :cond_b
    move/from16 v17, v9

    #@100
    .line 918
    .local v17, "startIndex":I
    move v6, v9

    #@101
    .line 919
    .local v6, "endIndex":I
    add-int/lit8 v10, v17, 0x1

    #@103
    .local v10, "j":I
    :goto_5
    add-int/lit8 v20, v4, -0x1

    #@105
    move/from16 v0, v20

    #@107
    if-ge v10, v0, :cond_c

    #@109
    .line 920
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
    .line 925
    :cond_c
    add-int/lit8 v20, v6, 0x1

    #@117
    aget-object v20, v12, v20

    #@119
    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    #@11c
    move-result v20

    #@11d
    .line 926
    add-int/lit8 v21, v17, -0x1

    #@11f
    aget-object v21, v12, v21

    #@121
    invoke-virtual/range {v21 .. v21}, Landroid/animation/Keyframe;->getFraction()F

    #@124
    move-result v21

    #@125
    .line 925
    sub-float v8, v20, v21

    #@127
    .line 927
    .local v8, "gap":F
    move/from16 v0, v17

    #@129
    invoke-static {v12, v8, v0, v6}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    #@12c
    goto :goto_4

    #@12d
    .line 923
    .end local v8    # "gap":F
    :cond_d
    move v6, v10

    #@12e
    .line 919
    add-int/lit8 v10, v10, 0x1

    #@130
    goto :goto_5

    #@131
    .line 931
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
    .line 932
    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    const/16 v20, 0x3

    #@139
    move/from16 v0, p4

    #@13b
    move/from16 v1, v20

    #@13d
    if-ne v0, v1, :cond_f

    #@13f
    .line 933
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    #@142
    move-result-object v20

    #@143
    invoke-virtual/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@146
    .line 937
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
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v8

    #@4
    .line 157
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    #@7
    move-result-object v3

    #@8
    .line 159
    .local v3, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@b
    move-result-object v10

    #@c
    .line 160
    .local v10, "theme":Landroid/content/res/Resources$Theme;
    int-to-long v12, p1

    #@d
    invoke-virtual {v3, v12, v13, v10}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/animation/StateListAnimator;

    #@13
    .line 161
    .local v2, "animator":Landroid/animation/StateListAnimator;
    if-eqz v2, :cond_0

    #@15
    .line 162
    return-object v2

    #@16
    .line 164
    :cond_0
    const/4 v7, 0x0

    #@17
    .line 166
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    #@1a
    move-result-object v7

    #@1b
    .line 167
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@1e
    move-result-object v11

    #@1f
    invoke-static {p0, v7, v11}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    #@22
    move-result-object v2

    #@23
    .line 168
    if-eqz v2, :cond_1

    #@25
    .line 169
    invoke-static {v8, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    #@28
    move-result v11

    #@29
    invoke-virtual {v2, v11}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    #@2c
    .line 170
    invoke-virtual {v2}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    #@2f
    move-result-object v4

    #@30
    .line 172
    .local v4, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    if-eqz v4, :cond_1

    #@32
    .line 173
    int-to-long v12, p1

    #@33
    invoke-virtual {v3, v12, v13, v10, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    #@36
    .line 175
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
    .line 196
    .end local v4    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    :cond_1
    if-eqz v7, :cond_2

    #@40
    .line 197
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@43
    .line 178
    :cond_2
    return-object v2

    #@44
    .line 187
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    #@45
    .line 189
    .local v5, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    #@47
    .line 190
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
    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@56
    move-result-object v12

    #@57
    .line 190
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v11

    #@5b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v11

    #@5f
    .line 189
    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@62
    .line 193
    .local v9, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@65
    .line 194
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    .line 195
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v11

    #@67
    .line 196
    if-eqz v7, :cond_3

    #@69
    .line 197
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@6c
    .line 195
    :cond_3
    throw v11

    #@6d
    .line 179
    :catch_1
    move-exception v6

    #@6e
    .line 181
    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    #@70
    .line 182
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
    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7f
    move-result-object v12

    #@80
    .line 182
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v11

    #@84
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v11

    #@88
    .line 181
    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@8b
    .line 185
    .restart local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8e
    .line 186
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
    .line 740
    const/4 v9, 0x0

    #@1
    .line 743
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
    .line 744
    const/4 v11, 0x1

    #@9
    if-eq v7, v11, :cond_6

    #@b
    .line 746
    const/4 v11, 0x2

    #@c
    if-eq v7, v11, :cond_0

    #@e
    .line 747
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@11
    goto :goto_0

    #@12
    .line 751
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 753
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v11, "propertyValuesHolder"

    #@19
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v11

    #@1d
    if-eqz v11, :cond_4

    #@1f
    .line 755
    if-eqz p1, :cond_5

    #@21
    .line 756
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
    .line 760
    .local v1, "a":Landroid/content/res/TypedArray;
    :goto_1
    const/4 v11, 0x3

    #@2c
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    .line 761
    .local v5, "propertyName":Ljava/lang/String;
    const/4 v11, 0x2

    #@31
    .line 762
    const/4 v12, 0x4

    #@32
    .line 761
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    #@35
    move-result v8

    #@36
    .line 764
    .local v8, "valueType":I
    move-object/from16 v0, p2

    #@38
    invoke-static {p0, p1, v0, v5, v8}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    #@3b
    move-result-object v6

    #@3c
    .line 765
    .local v6, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v6, :cond_1

    #@3e
    .line 767
    const/4 v11, 0x0

    #@3f
    .line 768
    const/4 v12, 0x1

    #@40
    .line 766
    invoke-static {v1, v8, v11, v12, v5}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    #@43
    move-result-object v6

    #@44
    .line 770
    :cond_1
    if-eqz v6, :cond_3

    #@46
    .line 771
    if-nez v9, :cond_2

    #@48
    .line 772
    new-instance v9, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@4d
    .line 774
    :cond_2
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    .line 776
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@53
    .line 779
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "pvh":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "valueType":I
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@56
    goto :goto_0

    #@57
    .line 758
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
    .line 782
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    #@61
    .line 783
    .local v10, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v9, :cond_7

    #@63
    .line 784
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@66
    move-result v2

    #@67
    .line 785
    .local v2, "count":I
    new-array v10, v2, [Landroid/animation/PropertyValuesHolder;

    #@69
    .line 786
    .local v10, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    #@6a
    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_7

    #@6c
    .line 787
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f
    move-result-object v11

    #@70
    check-cast v11, Landroid/animation/PropertyValuesHolder;

    #@72
    aput-object v11, v10, v3

    #@74
    .line 786
    add-int/lit8 v3, v3, 0x1

    #@76
    goto :goto_2

    #@77
    .line 790
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
    .line 440
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
    .line 442
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
    .line 444
    .local v4, "startDelay":J
    const/4 v6, 0x7

    #@10
    const/4 v7, 0x4

    #@11
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@14
    move-result v3

    #@15
    .line 446
    .local v3, "valueType":I
    const/4 v6, 0x4

    #@16
    if-ne v3, v6, :cond_0

    #@18
    .line 447
    const/4 v6, 0x5

    #@19
    .line 448
    const/4 v7, 0x6

    #@1a
    .line 447
    invoke-static {p1, v6, v7}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    #@1d
    move-result v3

    #@1e
    .line 451
    :cond_0
    const-string/jumbo v6, ""

    #@21
    const/4 v7, 0x5

    #@22
    const/4 v8, 0x6

    #@23
    .line 450
    invoke-static {p1, v3, v7, v8, v6}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    #@26
    move-result-object v2

    #@27
    .line 452
    .local v2, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_1

    #@29
    .line 453
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
    .line 456
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@35
    .line 457
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    #@38
    .line 459
    const/4 v6, 0x3

    #@39
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 461
    const/4 v6, 0x3

    #@40
    const/4 v7, 0x0

    #@41
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@44
    move-result v6

    #@45
    .line 460
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    #@48
    .line 463
    :cond_2
    const/4 v6, 0x4

    #@49
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_3

    #@4f
    .line 465
    const/4 v6, 0x4

    #@50
    .line 466
    const/4 v7, 0x1

    #@51
    .line 465
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@54
    move-result v6

    #@55
    .line 464
    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    #@58
    .line 469
    :cond_3
    if-eqz p2, :cond_4

    #@5a
    .line 470
    if-nez v3, :cond_5

    #@5c
    const/4 v6, 0x1

    #@5d
    :goto_0
    invoke-static {p0, p2, v6, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V

    #@60
    .line 439
    :cond_4
    return-void

    #@61
    .line 470
    :cond_5
    const/4 v6, 0x0

    #@62
    goto :goto_0
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .locals 8
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 484
    const/4 v0, 0x0

    #@3
    .line 485
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v5, 0x5

    #@4
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 486
    .local v1, "fromString":Ljava/lang/String;
    const/4 v5, 0x6

    #@9
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 487
    .local v4, "toString":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    #@10
    move-result-object v2

    #@11
    .line 488
    .local v2, "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    invoke-static {v4}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    #@14
    move-result-object v3

    #@15
    .line 490
    .local v3, "nodesTo":[Landroid/util/PathParser$PathDataNode;
    if-eqz v2, :cond_3

    #@17
    .line 491
    if-eqz v3, :cond_0

    #@19
    .line 492
    const/4 v5, 0x2

    #@1a
    new-array v5, v5, [Ljava/lang/Object;

    #@1c
    aput-object v2, v5, v6

    #@1e
    aput-object v3, v5, v7

    #@20
    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@23
    .line 493
    invoke-static {v2, v3}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    #@26
    move-result v5

    #@27
    if-nez v5, :cond_1

    #@29
    .line 494
    new-instance v5, Landroid/view/InflateException;

    #@2b
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 495
    const-string/jumbo v7, " Can\'t morph from "

    #@3b
    .line 494
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    .line 495
    const-string/jumbo v7, " to "

    #@46
    .line 494
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@55
    throw v5

    #@56
    .line 498
    :cond_0
    new-array v5, v7, [Ljava/lang/Object;

    #@58
    aput-object v2, v5, v6

    #@5a
    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@5d
    .line 500
    :cond_1
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    #@5f
    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-static {v2}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    #@62
    move-result-object v5

    #@63
    invoke-direct {v0, v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    #@66
    .line 510
    :cond_2
    :goto_0
    return-object v0

    #@67
    .line 501
    .restart local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_3
    if-eqz v3, :cond_2

    #@69
    .line 502
    new-array v5, v7, [Ljava/lang/Object;

    #@6b
    aput-object v3, v5, v6

    #@6d
    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    #@70
    .line 503
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    #@72
    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-static {v3}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    #@75
    move-result-object v5

    #@76
    invoke-direct {v0, v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    #@79
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    goto :goto_0
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
    .line 524
    check-cast v3, Landroid/animation/ObjectAnimator;

    #@4
    .line 525
    .local v3, "oa":Landroid/animation/ObjectAnimator;
    const/4 v13, 0x1

    #@5
    move-object/from16 v0, p1

    #@7
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    .line 535
    .local v5, "pathData":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@d
    .line 537
    const/4 v13, 0x2

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    .line 539
    .local v7, "propertyXName":Ljava/lang/String;
    const/4 v13, 0x3

    #@15
    move-object/from16 v0, p1

    #@17
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1a
    move-result-object v8

    #@1b
    .line 541
    .local v8, "propertyYName":Ljava/lang/String;
    if-nez v7, :cond_0

    #@1d
    if-nez v8, :cond_0

    #@1f
    .line 542
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
    .line 543
    const-string/jumbo v15, " propertyXName or propertyYName is needed for PathData"

    #@31
    .line 542
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
    .line 545
    :cond_0
    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    #@40
    move-result-object v4

    #@41
    .line 546
    .local v4, "path":Landroid/graphics/Path;
    const/high16 v13, 0x3f000000    # 0.5f

    #@43
    mul-float v1, v13, p3

    #@45
    .line 547
    .local v1, "error":F
    invoke-static {v4, v1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    #@48
    move-result-object v2

    #@49
    .line 550
    .local v2, "keyframeSet":Landroid/animation/PathKeyframes;
    if-eqz p2, :cond_3

    #@4b
    .line 551
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    #@4e
    move-result-object v10

    #@4f
    .line 552
    .local v10, "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    #@52
    move-result-object v12

    #@53
    .line 557
    .local v12, "yKeyframes":Landroid/animation/Keyframes;
    :goto_0
    const/4 v9, 0x0

    #@54
    .line 558
    .local v9, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x0

    #@55
    .line 559
    .local v11, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_1

    #@57
    .line 560
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@5a
    move-result-object v9

    #@5b
    .line 562
    .end local v9    # "x":Landroid/animation/PropertyValuesHolder;
    :cond_1
    if-eqz v8, :cond_2

    #@5d
    .line 563
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@60
    move-result-object v11

    #@61
    .line 565
    .end local v11    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_2
    if-nez v9, :cond_4

    #@63
    .line 566
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
    .line 523
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
    .line 554
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
    .line 555
    .restart local v10    # "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    #@74
    move-result-object v12

    #@75
    .restart local v12    # "yKeyframes":Landroid/animation/Keyframes;
    goto :goto_0

    #@76
    .line 567
    :cond_4
    if-nez v11, :cond_5

    #@78
    .line 568
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
    .line 570
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
    .line 575
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
    .line 576
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
    .line 594
    const/4 v2, 0x5

    #@1
    .line 595
    .local v2, "valueFromIndex":I
    const/4 v5, 0x6

    #@2
    .line 596
    .local v5, "valueToIndex":I
    if-eqz p2, :cond_6

    #@4
    .line 599
    if-eqz p3, :cond_4

    #@6
    .line 600
    const/4 v6, 0x5

    #@7
    if-ne p4, v6, :cond_1

    #@9
    .line 601
    const/4 v6, 0x0

    #@a
    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@d
    move-result v0

    #@e
    .line 605
    .local v0, "valueFrom":F
    :goto_0
    if-eqz p5, :cond_3

    #@10
    .line 606
    const/4 v6, 0x5

    #@11
    if-ne p6, v6, :cond_2

    #@13
    .line 607
    const/4 v6, 0x0

    #@14
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@17
    move-result v3

    #@18
    .line 611
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
    .line 593
    .end local v0    # "valueFrom":F
    .end local v3    # "valueTo":F
    :cond_0
    :goto_2
    return-void

    #@25
    .line 603
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
    .line 609
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
    .line 613
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
    .line 616
    .end local v0    # "valueFrom":F
    :cond_4
    const/4 v6, 0x5

    #@3c
    if-ne p6, v6, :cond_5

    #@3e
    .line 617
    const/4 v6, 0x0

    #@3f
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@42
    move-result v3

    #@43
    .line 621
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
    .line 619
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
    .line 626
    .end local v3    # "valueTo":F
    :cond_6
    if-eqz p3, :cond_c

    #@55
    .line 627
    const/4 v6, 0x5

    #@56
    if-ne p4, v6, :cond_7

    #@58
    .line 628
    const/4 v6, 0x0

    #@59
    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@5c
    move-result v6

    #@5d
    float-to-int v1, v6

    #@5e
    .line 634
    .local v1, "valueFrom":I
    :goto_4
    if-eqz p5, :cond_b

    #@60
    .line 635
    const/4 v6, 0x5

    #@61
    if-ne p6, v6, :cond_9

    #@63
    .line 636
    const/4 v6, 0x0

    #@64
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@67
    move-result v6

    #@68
    float-to-int v4, v6

    #@69
    .line 642
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
    .line 629
    .end local v1    # "valueFrom":I
    .end local v4    # "valueTo":I
    :cond_7
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@79
    move-result v6

    #@7a
    if-eqz v6, :cond_8

    #@7c
    .line 630
    const/4 v6, 0x0

    #@7d
    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@80
    move-result v1

    #@81
    .restart local v1    # "valueFrom":I
    goto :goto_4

    #@82
    .line 632
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
    .line 637
    :cond_9
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@8b
    move-result v6

    #@8c
    if-eqz v6, :cond_a

    #@8e
    .line 638
    const/4 v6, 0x0

    #@8f
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@92
    move-result v4

    #@93
    .restart local v4    # "valueTo":I
    goto :goto_5

    #@94
    .line 640
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
    .line 644
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
    .line 647
    .end local v1    # "valueFrom":I
    :cond_c
    if-eqz p5, :cond_0

    #@a6
    .line 648
    const/4 v6, 0x5

    #@a7
    if-ne p6, v6, :cond_d

    #@a9
    .line 649
    const/4 v6, 0x0

    #@aa
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@ad
    move-result v6

    #@ae
    float-to-int v4, v6

    #@af
    .line 655
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
    .line 650
    .end local v4    # "valueTo":I
    :cond_d
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    #@bd
    move-result v6

    #@be
    if-eqz v6, :cond_e

    #@c0
    .line 651
    const/4 v6, 0x0

    #@c1
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    #@c4
    move-result v4

    #@c5
    .restart local v4    # "valueTo":I
    goto :goto_6

    #@c6
    .line 653
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
