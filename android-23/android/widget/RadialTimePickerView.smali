.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;,
        Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;,
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$IntHolder;
    }
.end annotation


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final ALPHA_TRANSPARENT:I = 0x0

.field private static final AM:I = 0x0

.field private static final COS_30:[F

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field private static final FADE_IN_DURATION:I = 0x1f4

.field private static final FADE_OUT_DURATION:I = 0x1f4

.field private static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_IN_CIRCLE:I = 0xc

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field private static final MINUTES:I = 0x1

.field private static final MINUTES_IN_CIRCLE:I = 0x3c

.field private static final MINUTES_NUMBERS:[I

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I

.field private static final TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

.field private mAmOrPm:I

.field private mCenterDotRadius:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:I

.field private mDisabledAlpha:F

.field private mHalfwayDist:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private final mHoursToMinutesAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private final mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxDistForOuterNumber:I

.field private mMinDistForInnerNumber:I

.field private final mMinuteToHoursAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mMinutesText:[Ljava/lang/String;

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintSelector:[[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private final mSelectorColor:I

.field private final mSelectorDotColor:I

.field private mSelectorDotRadius:I

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mSelectorRadius:I

.field private mSelectorStroke:I

.field private mShowHours:Z

.field private final mTextColor:[Landroid/content/res/ColorStateList;

.field private final mTextInset:[I

.field private final mTextSize:[I

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private mTransition:Landroid/animation/AnimatorSet;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method static synthetic -get0(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/RadialTimePickerView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/RadialTimePickerView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/widget/RadialTimePickerView;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/RadialTimePickerView;I)Z
    .locals 1
    .param p1, "hour"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/RadialTimePickerView;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p1, "hour"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p1, "minute"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/RadialTimePickerView;FFZ)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 1
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p1, "degrees"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(II)I
    .locals 1
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0xc

    #@2
    .line 87
    new-array v3, v8, [I

    #@4
    fill-array-data v3, :array_0

    #@7
    sput-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    #@9
    .line 88
    new-array v3, v8, [I

    #@b
    fill-array-data v3, :array_1

    #@e
    sput-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    #@10
    .line 89
    new-array v3, v8, [I

    #@12
    fill-array-data v3, :array_2

    #@15
    sput-object v3, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    #@17
    .line 94
    const/16 v3, 0x169

    #@19
    new-array v3, v3, [I

    #@1b
    sput-object v3, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    #@1d
    .line 97
    new-array v3, v8, [F

    #@1f
    sput-object v3, Landroid/widget/RadialTimePickerView;->COS_30:[F

    #@21
    .line 98
    new-array v3, v8, [F

    #@23
    sput-object v3, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    #@25
    .line 102
    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    #@28
    .line 104
    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    #@2d
    .line 105
    .local v4, "increment":D
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@32
    .line 106
    .local v0, "angle":D
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    #@35
    .line 107
    sget-object v3, Landroid/widget/RadialTimePickerView;->COS_30:[F

    #@37
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@3a
    move-result-wide v6

    #@3b
    double-to-float v6, v6

    #@3c
    aput v6, v3, v2

    #@3e
    .line 108
    sget-object v3, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    #@40
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@43
    move-result-wide v6

    #@44
    double-to-float v6, v6

    #@45
    aput v6, v3, v2

    #@47
    .line 109
    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    #@4c
    add-double/2addr v0, v6

    #@4d
    .line 106
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 62
    :cond_0
    return-void

    #@51
    .line 87
    nop

    #@52
    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    #@6e
    .line 88
    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    #@8a
    .line 89
    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 292
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 296
    const v0, 0x101049d

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 300
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 305
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 114
    new-instance v13, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    #@5
    const/4 v14, 0x0

    #@6
    move-object/from16 v0, p0

    #@8
    invoke-direct {v13, v0, v14}, Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;-><init>(Landroid/widget/RadialTimePickerView;Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;)V

    #@b
    .line 113
    move-object/from16 v0, p0

    #@d
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    #@f
    .line 116
    const/16 v13, 0xc

    #@11
    new-array v13, v13, [Ljava/lang/String;

    #@13
    move-object/from16 v0, p0

    #@15
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    #@17
    .line 117
    const/16 v13, 0xc

    #@19
    new-array v13, v13, [Ljava/lang/String;

    #@1b
    move-object/from16 v0, p0

    #@1d
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    #@1f
    .line 118
    const/16 v13, 0xc

    #@21
    new-array v13, v13, [Ljava/lang/String;

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    #@27
    .line 119
    const/16 v13, 0xc

    #@29
    new-array v13, v13, [Ljava/lang/String;

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    #@2f
    .line 121
    const/4 v13, 0x2

    #@30
    new-array v13, v13, [Landroid/graphics/Paint;

    #@32
    move-object/from16 v0, p0

    #@34
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@36
    .line 122
    const/4 v13, 0x2

    #@37
    new-array v13, v13, [Landroid/widget/RadialTimePickerView$IntHolder;

    #@39
    move-object/from16 v0, p0

    #@3b
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@3d
    .line 124
    new-instance v13, Landroid/graphics/Paint;

    #@3f
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    #@42
    move-object/from16 v0, p0

    #@44
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    #@46
    .line 126
    const-class v13, Landroid/graphics/Paint;

    #@48
    const/4 v14, 0x2

    #@49
    const/4 v15, 0x3

    #@4a
    filled-new-array {v14, v15}, [I

    #@4d
    move-result-object v14

    #@4e
    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@51
    move-result-object v13

    #@52
    check-cast v13, [[Landroid/graphics/Paint;

    #@54
    move-object/from16 v0, p0

    #@56
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@58
    .line 131
    new-instance v13, Landroid/graphics/Paint;

    #@5a
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    #@5d
    move-object/from16 v0, p0

    #@5f
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    #@61
    .line 135
    const/4 v13, 0x3

    #@62
    new-array v13, v13, [Landroid/content/res/ColorStateList;

    #@64
    move-object/from16 v0, p0

    #@66
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@68
    .line 136
    const/4 v13, 0x3

    #@69
    new-array v13, v13, [I

    #@6b
    move-object/from16 v0, p0

    #@6d
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@6f
    .line 137
    const/4 v13, 0x3

    #@70
    new-array v13, v13, [I

    #@72
    move-object/from16 v0, p0

    #@74
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@76
    .line 139
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@78
    const/4 v14, 0x2

    #@79
    const/16 v15, 0xc

    #@7b
    filled-new-array {v14, v15}, [I

    #@7e
    move-result-object v14

    #@7f
    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@82
    move-result-object v13

    #@83
    check-cast v13, [[F

    #@85
    move-object/from16 v0, p0

    #@87
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    #@89
    .line 140
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@8b
    const/4 v14, 0x2

    #@8c
    const/16 v15, 0xc

    #@8e
    filled-new-array {v14, v15}, [I

    #@91
    move-result-object v14

    #@92
    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@95
    move-result-object v13

    #@96
    check-cast v13, [[F

    #@98
    move-object/from16 v0, p0

    #@9a
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    #@9c
    .line 142
    const/16 v13, 0xc

    #@9e
    new-array v13, v13, [F

    #@a0
    move-object/from16 v0, p0

    #@a2
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    #@a4
    .line 143
    const/16 v13, 0xc

    #@a6
    new-array v13, v13, [F

    #@a8
    move-object/from16 v0, p0

    #@aa
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    #@ac
    .line 145
    const/4 v13, 0x2

    #@ad
    new-array v13, v13, [I

    #@af
    move-object/from16 v0, p0

    #@b1
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@b3
    .line 147
    new-instance v13, Ljava/util/ArrayList;

    #@b5
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@b8
    move-object/from16 v0, p0

    #@ba
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    #@bc
    .line 148
    new-instance v13, Ljava/util/ArrayList;

    #@be
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@c1
    move-object/from16 v0, p0

    #@c3
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    #@c5
    .line 152
    new-instance v13, Landroid/graphics/Path;

    #@c7
    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    #@ca
    move-object/from16 v0, p0

    #@cc
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    #@ce
    .line 187
    const/4 v13, 0x1

    #@cf
    move-object/from16 v0, p0

    #@d1
    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    #@d3
    .line 952
    const/4 v13, 0x0

    #@d4
    move-object/from16 v0, p0

    #@d6
    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    #@d8
    .line 308
    new-instance v9, Landroid/util/TypedValue;

    #@da
    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    #@dd
    .line 309
    .local v9, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@e0
    move-result-object v13

    #@e1
    const v14, 0x1010033

    #@e4
    const/4 v15, 0x1

    #@e5
    invoke-virtual {v13, v14, v9, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@e8
    .line 310
    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    #@eb
    move-result v13

    #@ec
    move-object/from16 v0, p0

    #@ee
    iput v13, v0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    #@f0
    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    #@f3
    move-result-object v10

    #@f4
    .line 314
    .local v10, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    #@f6
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mContext:Landroid/content/Context;

    #@f8
    sget-object v14, Lcom/android/internal/R$styleable;->TimePicker:[I

    #@fa
    move-object/from16 v0, p2

    #@fc
    move/from16 v1, p3

    #@fe
    move/from16 v2, p4

    #@100
    invoke-virtual {v13, v0, v14, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@103
    move-result-object v3

    #@104
    .line 317
    .local v3, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v13, "sans-serif"

    #@107
    const/4 v14, 0x0

    #@108
    invoke-static {v13, v14}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@10b
    move-result-object v13

    #@10c
    move-object/from16 v0, p0

    #@10e
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    #@110
    .line 320
    const/4 v8, 0x0

    #@111
    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@113
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@115
    array-length v13, v13

    #@116
    if-ge v8, v13, :cond_0

    #@118
    .line 321
    move-object/from16 v0, p0

    #@11a
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@11c
    new-instance v14, Landroid/widget/RadialTimePickerView$IntHolder;

    #@11e
    const/16 v15, 0xff

    #@120
    invoke-direct {v14, v15}, Landroid/widget/RadialTimePickerView$IntHolder;-><init>(I)V

    #@123
    aput-object v14, v13, v8

    #@125
    .line 320
    add-int/lit8 v8, v8, 0x1

    #@127
    goto :goto_0

    #@128
    .line 324
    :cond_0
    move-object/from16 v0, p0

    #@12a
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@12c
    const/4 v14, 0x3

    #@12d
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@130
    move-result-object v14

    #@131
    const/4 v15, 0x0

    #@132
    aput-object v14, v13, v15

    #@134
    .line 325
    move-object/from16 v0, p0

    #@136
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@138
    const/16 v14, 0x9

    #@13a
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@13d
    move-result-object v14

    #@13e
    const/4 v15, 0x2

    #@13f
    aput-object v14, v13, v15

    #@141
    .line 326
    move-object/from16 v0, p0

    #@143
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@145
    move-object/from16 v0, p0

    #@147
    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@149
    const/4 v15, 0x0

    #@14a
    aget-object v14, v14, v15

    #@14c
    const/4 v15, 0x1

    #@14d
    aput-object v14, v13, v15

    #@14f
    .line 328
    move-object/from16 v0, p0

    #@151
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@153
    new-instance v14, Landroid/graphics/Paint;

    #@155
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    #@158
    const/4 v15, 0x0

    #@159
    aput-object v14, v13, v15

    #@15b
    .line 329
    move-object/from16 v0, p0

    #@15d
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@15f
    const/4 v14, 0x0

    #@160
    aget-object v13, v13, v14

    #@162
    const/4 v14, 0x1

    #@163
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@166
    .line 330
    move-object/from16 v0, p0

    #@168
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@16a
    const/4 v14, 0x0

    #@16b
    aget-object v13, v13, v14

    #@16d
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@16f
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@172
    .line 332
    move-object/from16 v0, p0

    #@174
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@176
    new-instance v14, Landroid/graphics/Paint;

    #@178
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    #@17b
    const/4 v15, 0x1

    #@17c
    aput-object v14, v13, v15

    #@17e
    .line 333
    move-object/from16 v0, p0

    #@180
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@182
    const/4 v14, 0x1

    #@183
    aget-object v13, v13, v14

    #@185
    const/4 v14, 0x1

    #@186
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@189
    .line 334
    move-object/from16 v0, p0

    #@18b
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@18d
    const/4 v14, 0x1

    #@18e
    aget-object v13, v13, v14

    #@190
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@192
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@195
    .line 337
    const/4 v13, 0x5

    #@196
    .line 336
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@199
    move-result-object v12

    #@19a
    .line 339
    .local v12, "selectorColors":Landroid/content/res/ColorStateList;
    const/16 v13, 0x28

    #@19c
    invoke-static {v13}, Landroid/util/StateSet;->get(I)[I

    #@19f
    move-result-object v13

    #@1a0
    const/4 v14, 0x0

    #@1a1
    .line 338
    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1a4
    move-result v11

    #@1a5
    .line 341
    .local v11, "selectorActivatedColor":I
    move-object/from16 v0, p0

    #@1a7
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    #@1a9
    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setColor(I)V

    #@1ac
    .line 342
    move-object/from16 v0, p0

    #@1ae
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    #@1b0
    const/4 v14, 0x1

    #@1b1
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@1b4
    .line 345
    const/16 v13, 0x28

    #@1b6
    .line 344
    invoke-static {v13}, Landroid/util/StateSet;->get(I)[I

    #@1b9
    move-result-object v4

    #@1ba
    .line 347
    .local v4, "activatedStateSet":[I
    move-object/from16 v0, p0

    #@1bc
    iput v11, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    #@1be
    .line 348
    move-object/from16 v0, p0

    #@1c0
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@1c2
    const/4 v14, 0x0

    #@1c3
    aget-object v13, v13, v14

    #@1c5
    const/4 v14, 0x0

    #@1c6
    invoke-virtual {v13, v4, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1c9
    move-result v13

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    iput v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    #@1ce
    .line 350
    move-object/from16 v0, p0

    #@1d0
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@1d2
    const/4 v14, 0x0

    #@1d3
    aget-object v13, v13, v14

    #@1d5
    new-instance v14, Landroid/graphics/Paint;

    #@1d7
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    #@1da
    const/4 v15, 0x0

    #@1db
    aput-object v14, v13, v15

    #@1dd
    .line 351
    move-object/from16 v0, p0

    #@1df
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@1e1
    const/4 v14, 0x0

    #@1e2
    aget-object v13, v13, v14

    #@1e4
    const/4 v14, 0x0

    #@1e5
    aget-object v13, v13, v14

    #@1e7
    const/4 v14, 0x1

    #@1e8
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@1eb
    .line 353
    move-object/from16 v0, p0

    #@1ed
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@1ef
    const/4 v14, 0x0

    #@1f0
    aget-object v13, v13, v14

    #@1f2
    new-instance v14, Landroid/graphics/Paint;

    #@1f4
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    #@1f7
    const/4 v15, 0x1

    #@1f8
    aput-object v14, v13, v15

    #@1fa
    .line 354
    move-object/from16 v0, p0

    #@1fc
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@1fe
    const/4 v14, 0x0

    #@1ff
    aget-object v13, v13, v14

    #@201
    const/4 v14, 0x1

    #@202
    aget-object v13, v13, v14

    #@204
    const/4 v14, 0x1

    #@205
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@208
    .line 356
    move-object/from16 v0, p0

    #@20a
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@20c
    const/4 v14, 0x0

    #@20d
    aget-object v13, v13, v14

    #@20f
    new-instance v14, Landroid/graphics/Paint;

    #@211
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    #@214
    const/4 v15, 0x2

    #@215
    aput-object v14, v13, v15

    #@217
    .line 357
    move-object/from16 v0, p0

    #@219
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@21b
    const/4 v14, 0x0

    #@21c
    aget-object v13, v13, v14

    #@21e
    const/4 v14, 0x2

    #@21f
    aget-object v13, v13, v14

    #@221
    const/4 v14, 0x1

    #@222
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@225
    .line 358
    move-object/from16 v0, p0

    #@227
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@229
    const/4 v14, 0x0

    #@22a
    aget-object v13, v13, v14

    #@22c
    const/4 v14, 0x2

    #@22d
    aget-object v13, v13, v14

    #@22f
    const/high16 v14, 0x40000000    # 2.0f

    #@231
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@234
    .line 360
    move-object/from16 v0, p0

    #@236
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@238
    const/4 v14, 0x1

    #@239
    aget-object v13, v13, v14

    #@23b
    new-instance v14, Landroid/graphics/Paint;

    #@23d
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    #@240
    const/4 v15, 0x0

    #@241
    aput-object v14, v13, v15

    #@243
    .line 361
    move-object/from16 v0, p0

    #@245
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@247
    const/4 v14, 0x1

    #@248
    aget-object v13, v13, v14

    #@24a
    const/4 v14, 0x0

    #@24b
    aget-object v13, v13, v14

    #@24d
    const/4 v14, 0x1

    #@24e
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@251
    .line 363
    move-object/from16 v0, p0

    #@253
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@255
    const/4 v14, 0x1

    #@256
    aget-object v13, v13, v14

    #@258
    new-instance v14, Landroid/graphics/Paint;

    #@25a
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    #@25d
    const/4 v15, 0x1

    #@25e
    aput-object v14, v13, v15

    #@260
    .line 364
    move-object/from16 v0, p0

    #@262
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@264
    const/4 v14, 0x1

    #@265
    aget-object v13, v13, v14

    #@267
    const/4 v14, 0x1

    #@268
    aget-object v13, v13, v14

    #@26a
    const/4 v14, 0x1

    #@26b
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@26e
    .line 366
    move-object/from16 v0, p0

    #@270
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@272
    const/4 v14, 0x1

    #@273
    aget-object v13, v13, v14

    #@275
    new-instance v14, Landroid/graphics/Paint;

    #@277
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    #@27a
    const/4 v15, 0x2

    #@27b
    aput-object v14, v13, v15

    #@27d
    .line 367
    move-object/from16 v0, p0

    #@27f
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@281
    const/4 v14, 0x1

    #@282
    aget-object v13, v13, v14

    #@284
    const/4 v14, 0x2

    #@285
    aget-object v13, v13, v14

    #@287
    const/4 v14, 0x1

    #@288
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@28b
    .line 368
    move-object/from16 v0, p0

    #@28d
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@28f
    const/4 v14, 0x1

    #@290
    aget-object v13, v13, v14

    #@292
    const/4 v14, 0x2

    #@293
    aget-object v13, v13, v14

    #@295
    const/high16 v14, 0x40000000    # 2.0f

    #@297
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@29a
    .line 370
    move-object/from16 v0, p0

    #@29c
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    #@29e
    .line 371
    const v14, 0x10600dc

    #@2a1
    move-object/from16 v0, p1

    #@2a3
    invoke-virtual {v0, v14}, Landroid/content/Context;->getColor(I)I

    #@2a6
    move-result v14

    #@2a7
    .line 370
    const/4 v15, 0x4

    #@2a8
    invoke-virtual {v3, v15, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    #@2ab
    move-result v14

    #@2ac
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    #@2af
    .line 372
    move-object/from16 v0, p0

    #@2b1
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    #@2b3
    const/4 v14, 0x1

    #@2b4
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@2b7
    .line 374
    const v13, 0x105010f

    #@2ba
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2bd
    move-result v13

    #@2be
    move-object/from16 v0, p0

    #@2c0
    iput v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@2c2
    .line 375
    const v13, 0x1050110

    #@2c5
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2c8
    move-result v13

    #@2c9
    move-object/from16 v0, p0

    #@2cb
    iput v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    #@2cd
    .line 376
    const v13, 0x1050112

    #@2d0
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2d3
    move-result v13

    #@2d4
    move-object/from16 v0, p0

    #@2d6
    iput v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    #@2d8
    .line 377
    const v13, 0x1050111

    #@2db
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2de
    move-result v13

    #@2df
    move-object/from16 v0, p0

    #@2e1
    iput v13, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    #@2e3
    .line 379
    move-object/from16 v0, p0

    #@2e5
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@2e7
    const v14, 0x1050114

    #@2ea
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2ed
    move-result v14

    #@2ee
    const/4 v15, 0x0

    #@2ef
    aput v14, v13, v15

    #@2f1
    .line 380
    move-object/from16 v0, p0

    #@2f3
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@2f5
    const v14, 0x1050114

    #@2f8
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2fb
    move-result v14

    #@2fc
    const/4 v15, 0x1

    #@2fd
    aput v14, v13, v15

    #@2ff
    .line 381
    move-object/from16 v0, p0

    #@301
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@303
    const v14, 0x1050115

    #@306
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@309
    move-result v14

    #@30a
    const/4 v15, 0x2

    #@30b
    aput v14, v13, v15

    #@30d
    .line 383
    move-object/from16 v0, p0

    #@30f
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@311
    const v14, 0x1050113

    #@314
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@317
    move-result v14

    #@318
    const/4 v15, 0x0

    #@319
    aput v14, v13, v15

    #@31b
    .line 384
    move-object/from16 v0, p0

    #@31d
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@31f
    const v14, 0x1050113

    #@322
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@325
    move-result v14

    #@326
    const/4 v15, 0x1

    #@327
    aput v14, v13, v15

    #@329
    .line 385
    move-object/from16 v0, p0

    #@32b
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@32d
    const v14, 0x10500a9

    #@330
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@333
    move-result v14

    #@334
    const/4 v15, 0x2

    #@335
    aput v14, v13, v15

    #@337
    .line 387
    const/4 v13, 0x1

    #@338
    move-object/from16 v0, p0

    #@33a
    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@33c
    .line 388
    const/4 v13, 0x0

    #@33d
    move-object/from16 v0, p0

    #@33f
    iput-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@341
    .line 389
    const/4 v13, 0x0

    #@342
    move-object/from16 v0, p0

    #@344
    iput v13, v0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@346
    .line 392
    new-instance v13, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@348
    move-object/from16 v0, p0

    #@34a
    invoke-direct {v13, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    #@34d
    move-object/from16 v0, p0

    #@34f
    iput-object v13, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@351
    .line 393
    move-object/from16 v0, p0

    #@353
    iget-object v13, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@355
    move-object/from16 v0, p0

    #@357
    invoke-virtual {v0, v13}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@35a
    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    #@35d
    move-result v13

    #@35e
    if-nez v13, :cond_1

    #@360
    .line 396
    const/4 v13, 0x1

    #@361
    move-object/from16 v0, p0

    #@363
    invoke-virtual {v0, v13}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    #@366
    .line 399
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    #@369
    .line 400
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initData()V

    #@36c
    .line 402
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@36f
    .line 405
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@372
    move-result-object v13

    #@373
    invoke-static {v13}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@376
    move-result-object v5

    #@377
    .line 406
    .local v5, "calendar":Ljava/util/Calendar;
    const/16 v13, 0xb

    #@379
    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    #@37c
    move-result v6

    #@37d
    .line 407
    .local v6, "currentHour":I
    const/16 v13, 0xc

    #@37f
    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    #@382
    move-result v7

    #@383
    .line 409
    .local v7, "currentMinute":I
    const/4 v13, 0x0

    #@384
    const/4 v14, 0x0

    #@385
    move-object/from16 v0, p0

    #@387
    invoke-direct {v0, v6, v13, v14}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    #@38a
    .line 410
    const/4 v13, 0x0

    #@38b
    move-object/from16 v0, p0

    #@38d
    invoke-direct {v0, v7, v13}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    #@390
    .line 412
    const/4 v13, 0x1

    #@391
    move-object/from16 v0, p0

    #@393
    invoke-virtual {v0, v13}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    #@396
    .line 304
    return-void
.end method

.method private applyAlpha(II)I
    .locals 8
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    #@0
    .prologue
    .line 717
    shr-int/lit8 v2, p1, 0x18

    #@2
    and-int/lit16 v1, v2, 0xff

    #@4
    .line 718
    .local v1, "srcAlpha":I
    int-to-double v2, v1

    #@5
    int-to-double v4, p2

    #@6
    const-wide v6, 0x406fe00000000000L    # 255.0

    #@b
    div-double/2addr v4, v6

    #@c
    mul-double/2addr v2, v4

    #@d
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@f
    add-double/2addr v2, v4

    #@10
    double-to-int v0, v2

    #@11
    .line 719
    .local v0, "dstAlpha":I
    const v2, 0xffffff

    #@14
    and-int/2addr v2, p1

    #@15
    shl-int/lit8 v3, v0, 0x18

    #@17
    or-int/2addr v2, v3

    #@18
    return v2
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "radius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "x"    # [F
    .param p6, "y"    # [F

    #@0
    .prologue
    .line 806
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    #@3
    .line 807
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    #@6
    move-result v1

    #@7
    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    #@a
    move-result v2

    #@b
    add-float/2addr v1, v2

    #@c
    const/high16 v2, 0x40000000    # 2.0f

    #@e
    div-float/2addr v1, v2

    #@f
    sub-float/2addr p3, v1

    #@10
    .line 809
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    #@13
    if-ge v0, v1, :cond_0

    #@15
    .line 810
    sget-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    #@17
    aget v1, v1, v0

    #@19
    mul-float/2addr v1, p1

    #@1a
    sub-float v1, p2, v1

    #@1c
    aput v1, p5, v0

    #@1e
    .line 811
    sget-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    #@20
    aget v1, v1, v0

    #@22
    mul-float/2addr v1, p1

    #@23
    sub-float v1, p3, v1

    #@25
    aput v1, p6, v0

    #@27
    .line 809
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 804
    :cond_0
    return-void
.end method

.method private calculatePositionsHours()V
    .locals 10

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    .line 775
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@4
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@6
    aget v2, v2, v7

    #@8
    sub-int/2addr v0, v2

    #@9
    int-to-float v1, v0

    #@a
    .line 778
    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@c
    aget-object v0, v0, v7

    #@e
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@10
    int-to-float v2, v2

    #@11
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@13
    int-to-float v3, v3

    #@14
    .line 779
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@16
    aget v4, v4, v7

    #@18
    int-to-float v4, v4

    #@19
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    #@1b
    aget-object v5, v5, v7

    #@1d
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    #@1f
    aget-object v6, v6, v7

    #@21
    .line 778
    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    #@24
    .line 782
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 783
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@2a
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@2c
    aget v2, v2, v8

    #@2e
    sub-int v9, v0, v2

    #@30
    .line 784
    .local v9, "innerNumbersRadius":I
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@32
    aget-object v2, v0, v7

    #@34
    int-to-float v3, v9

    #@35
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@37
    int-to-float v4, v0

    #@38
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@3a
    int-to-float v5, v0

    #@3b
    .line 785
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@3d
    aget v0, v0, v8

    #@3f
    int-to-float v6, v0

    #@40
    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    #@42
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    #@44
    .line 784
    invoke-static/range {v2 .. v8}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    #@47
    .line 773
    .end local v9    # "innerNumbersRadius":I
    :cond_0
    return-void
.end method

.method private calculatePositionsMinutes()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 791
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@3
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@5
    aget v2, v2, v7

    #@7
    sub-int/2addr v0, v2

    #@8
    int-to-float v1, v0

    #@9
    .line 794
    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@b
    aget-object v0, v0, v7

    #@d
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@f
    int-to-float v2, v2

    #@10
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@12
    int-to-float v3, v3

    #@13
    .line 795
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@15
    aget v4, v4, v7

    #@17
    int-to-float v4, v4

    #@18
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    #@1a
    aget-object v5, v5, v7

    #@1c
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    #@1e
    aget-object v6, v6, v7

    #@20
    .line 794
    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    #@23
    .line 789
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    #@0
    .prologue
    .line 712
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    #@2
    const/high16 v1, 0x437f0000    # 255.0f

    #@4
    mul-float/2addr v1, p2

    #@5
    const/high16 v2, 0x3f000000    # 0.5f

    #@7
    add-float/2addr v1, v2

    #@8
    float-to-int v1, v1

    #@9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@c
    .line 713
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@e
    int-to-float v0, v0

    #@f
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@11
    int-to-float v1, v1

    #@12
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    #@14
    int-to-float v2, v2

    #@15
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    #@17
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@1a
    .line 711
    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 662
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@2
    int-to-float v0, v0

    #@3
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@5
    int-to-float v1, v1

    #@6
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@8
    int-to-float v2, v2

    #@9
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    #@b
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@e
    .line 661
    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;F)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    #@8
    move-result v0

    #@9
    int-to-float v0, v0

    #@a
    mul-float/2addr v0, p2

    #@b
    const/high16 v1, 0x3f000000    # 0.5f

    #@d
    add-float/2addr v0, v1

    #@e
    float-to-int v9, v0

    #@f
    .line 667
    .local v9, "hoursAlpha":I
    if-lez v9, :cond_0

    #@11
    .line 669
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    const/4 v0, 0x2

    #@16
    :goto_0
    const/4 v1, 0x0

    #@17
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;F)V

    #@1a
    .line 672
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@1c
    const/4 v1, 0x0

    #@1d
    aget v0, v0, v1

    #@1f
    int-to-float v2, v0

    #@20
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    #@22
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@24
    const/4 v1, 0x0

    #@25
    aget-object v4, v0, v1

    #@27
    .line 673
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    #@29
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    #@2b
    const/4 v1, 0x0

    #@2c
    aget-object v6, v0, v1

    #@2e
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    #@30
    const/4 v1, 0x0

    #@31
    aget-object v7, v0, v1

    #@33
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@35
    const/4 v1, 0x0

    #@36
    aget-object v8, v0, v1

    #@38
    .line 674
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@3a
    if-eqz v0, :cond_2

    #@3c
    const/4 v10, 0x0

    #@3d
    :goto_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@3f
    const/4 v1, 0x0

    #@40
    aget v11, v0, v1

    #@42
    const/4 v12, 0x0

    #@43
    move-object v0, p0

    #@44
    move-object v1, p1

    #@45
    .line 672
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    #@48
    .line 677
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@4a
    if-eqz v0, :cond_0

    #@4c
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    #@4e
    if-eqz v0, :cond_0

    #@50
    .line 678
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@52
    const/4 v1, 0x2

    #@53
    aget v0, v0, v1

    #@55
    int-to-float v2, v0

    #@56
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    #@58
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@5a
    const/4 v1, 0x2

    #@5b
    aget-object v4, v0, v1

    #@5d
    .line 679
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    #@5f
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    #@61
    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    #@63
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@65
    const/4 v1, 0x0

    #@66
    aget-object v8, v0, v1

    #@68
    .line 680
    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@6a
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@6c
    const/4 v1, 0x0

    #@6d
    aget v11, v0, v1

    #@6f
    const/4 v12, 0x0

    #@70
    move-object v0, p0

    #@71
    move-object v1, p1

    #@72
    .line 678
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    #@75
    .line 665
    :cond_0
    return-void

    #@76
    .line 669
    :cond_1
    const/4 v0, 0x0

    #@77
    goto :goto_0

    #@78
    .line 674
    :cond_2
    const/4 v10, 0x1

    #@79
    goto :goto_1
.end method

.method private drawMinutes(Landroid/graphics/Canvas;F)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    #@0
    .prologue
    .line 686
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@2
    const/4 v1, 0x1

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    #@8
    move-result v0

    #@9
    int-to-float v0, v0

    #@a
    mul-float/2addr v0, p2

    #@b
    const/high16 v1, 0x3f000000    # 0.5f

    #@d
    add-float/2addr v0, v1

    #@e
    float-to-int v9, v0

    #@f
    .line 687
    .local v9, "minutesAlpha":I
    if-lez v9, :cond_0

    #@11
    .line 689
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    #@13
    const/4 v1, 0x1

    #@14
    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;F)V

    #@17
    .line 693
    const/4 v0, 0x2

    #@18
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    #@1b
    .line 694
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    #@1d
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@1f
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    #@22
    .line 695
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@24
    const/4 v1, 0x1

    #@25
    aget v0, v0, v1

    #@27
    int-to-float v2, v0

    #@28
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    #@2a
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@2c
    const/4 v1, 0x1

    #@2d
    aget-object v4, v0, v1

    #@2f
    .line 696
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    #@31
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    #@33
    const/4 v1, 0x1

    #@34
    aget-object v6, v0, v1

    #@36
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    #@38
    const/4 v1, 0x1

    #@39
    aget-object v7, v0, v1

    #@3b
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@3d
    const/4 v1, 0x1

    #@3e
    aget-object v8, v0, v1

    #@40
    .line 697
    const/4 v10, 0x0

    #@41
    const/4 v11, 0x0

    #@42
    const/4 v12, 0x0

    #@43
    move-object v0, p0

    #@44
    move-object v1, p1

    #@45
    .line 695
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    #@48
    .line 698
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@4b
    .line 702
    const/4 v0, 0x2

    #@4c
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    #@4f
    .line 703
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    #@51
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@53
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    #@56
    .line 704
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@58
    const/4 v1, 0x1

    #@59
    aget v0, v0, v1

    #@5b
    int-to-float v2, v0

    #@5c
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    #@5e
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@60
    const/4 v1, 0x1

    #@61
    aget-object v4, v0, v1

    #@63
    .line 705
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    #@65
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    #@67
    const/4 v1, 0x1

    #@68
    aget-object v6, v0, v1

    #@6a
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    #@6c
    const/4 v1, 0x1

    #@6d
    aget-object v7, v0, v1

    #@6f
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@71
    const/4 v1, 0x1

    #@72
    aget-object v8, v0, v1

    #@74
    .line 706
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@76
    const/4 v1, 0x1

    #@77
    aget v11, v0, v1

    #@79
    const/4 v10, 0x1

    #@7a
    const/4 v12, 0x1

    #@7b
    move-object v0, p0

    #@7c
    move-object v1, p1

    #@7d
    .line 704
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    #@80
    .line 707
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@83
    .line 685
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;ILandroid/graphics/Path;F)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "selectorPath"    # Landroid/graphics/Path;
    .param p4, "alphaMod"    # F

    #@0
    .prologue
    .line 727
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@4
    rem-int/lit8 v5, p2, 0x2

    #@6
    aget-object v4, v4, v5

    #@8
    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView$IntHolder;->getValue()I

    #@b
    move-result v4

    #@c
    int-to-float v4, v4

    #@d
    mul-float v4, v4, p4

    #@f
    const/high16 v5, 0x3f000000    # 0.5f

    #@11
    add-float/2addr v4, v5

    #@12
    float-to-int v10, v4

    #@13
    .line 728
    .local v10, "alpha":I
    move-object/from16 v0, p0

    #@15
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-direct {v0, v4, v10}, Landroid/widget/RadialTimePickerView;->applyAlpha(II)I

    #@1c
    move-result v13

    #@1d
    .line 731
    .local v13, "color":I
    move-object/from16 v0, p0

    #@1f
    iget v0, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@21
    move/from16 v24, v0

    #@23
    .line 732
    .local v24, "selRadius":I
    move-object/from16 v0, p0

    #@25
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v5, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@2b
    aget v5, v5, p2

    #@2d
    sub-int v23, v4, v5

    #@2f
    .line 733
    .local v23, "selLength":I
    move-object/from16 v0, p0

    #@31
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@33
    rem-int/lit8 v5, p2, 0x2

    #@35
    aget v4, v4, v5

    #@37
    int-to-double v4, v4

    #@38
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    #@3b
    move-result-wide v20

    #@3c
    .line 734
    .local v20, "selAngleRad":D
    move-object/from16 v0, p0

    #@3e
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@40
    int-to-float v4, v4

    #@41
    move/from16 v0, v23

    #@43
    int-to-float v5, v0

    #@44
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    #@47
    move-result-wide v28

    #@48
    move-wide/from16 v0, v28

    #@4a
    double-to-float v6, v0

    #@4b
    mul-float/2addr v5, v6

    #@4c
    add-float v19, v4, v5

    #@4e
    .line 735
    .local v19, "selCenterX":F
    move-object/from16 v0, p0

    #@50
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@52
    int-to-float v4, v4

    #@53
    move/from16 v0, v23

    #@55
    int-to-float v5, v0

    #@56
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    #@59
    move-result-wide v28

    #@5a
    move-wide/from16 v0, v28

    #@5c
    double-to-float v6, v0

    #@5d
    mul-float/2addr v5, v6

    #@5e
    sub-float v22, v4, v5

    #@60
    .line 738
    .local v22, "selCenterY":F
    move-object/from16 v0, p0

    #@62
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@64
    rem-int/lit8 v5, p2, 0x2

    #@66
    aget-object v4, v4, v5

    #@68
    const/4 v5, 0x0

    #@69
    aget-object v18, v4, v5

    #@6b
    .line 739
    .local v18, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v18

    #@6d
    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    #@70
    .line 740
    move/from16 v0, v24

    #@72
    int-to-float v4, v0

    #@73
    move-object/from16 v0, p1

    #@75
    move/from16 v1, v19

    #@77
    move/from16 v2, v22

    #@79
    move-object/from16 v3, v18

    #@7b
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@7e
    .line 743
    if-eqz p3, :cond_0

    #@80
    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    #@83
    .line 745
    move/from16 v0, v24

    #@85
    int-to-float v4, v0

    #@86
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    #@88
    move-object/from16 v0, p3

    #@8a
    move/from16 v1, v19

    #@8c
    move/from16 v2, v22

    #@8e
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    #@91
    .line 749
    :cond_0
    move-object/from16 v0, p0

    #@93
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@95
    rem-int/lit8 v5, p2, 0x2

    #@97
    aget v4, v4, v5

    #@99
    rem-int/lit8 v4, v4, 0x1e

    #@9b
    if-eqz v4, :cond_2

    #@9d
    const/16 v25, 0x1

    #@9f
    .line 750
    .local v25, "shouldDrawDot":Z
    :goto_0
    if-eqz v25, :cond_1

    #@a1
    .line 751
    move-object/from16 v0, p0

    #@a3
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@a5
    rem-int/lit8 v5, p2, 0x2

    #@a7
    aget-object v4, v4, v5

    #@a9
    const/4 v5, 0x1

    #@aa
    aget-object v16, v4, v5

    #@ac
    .line 752
    .local v16, "dotPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    #@ae
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    #@b0
    move-object/from16 v0, v16

    #@b2
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@b5
    .line 753
    move-object/from16 v0, p0

    #@b7
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    #@b9
    int-to-float v4, v4

    #@ba
    move-object/from16 v0, p1

    #@bc
    move/from16 v1, v19

    #@be
    move/from16 v2, v22

    #@c0
    move-object/from16 v3, v16

    #@c2
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@c5
    .line 758
    .end local v16    # "dotPaint":Landroid/graphics/Paint;
    :cond_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    #@c8
    move-result-wide v26

    #@c9
    .line 759
    .local v26, "sin":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    #@cc
    move-result-wide v14

    #@cd
    .line 760
    .local v14, "cos":D
    sub-int v17, v23, v24

    #@cf
    .line 761
    .local v17, "lineLength":I
    move-object/from16 v0, p0

    #@d1
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget v5, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    #@d7
    int-to-double v0, v5

    #@d8
    move-wide/from16 v28, v0

    #@da
    mul-double v28, v28, v26

    #@dc
    move-wide/from16 v0, v28

    #@de
    double-to-int v5, v0

    #@df
    add-int v11, v4, v5

    #@e1
    .line 762
    .local v11, "centerX":I
    move-object/from16 v0, p0

    #@e3
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget v5, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    #@e9
    int-to-double v0, v5

    #@ea
    move-wide/from16 v28, v0

    #@ec
    mul-double v28, v28, v14

    #@ee
    move-wide/from16 v0, v28

    #@f0
    double-to-int v5, v0

    #@f1
    sub-int v12, v4, v5

    #@f3
    .line 763
    .local v12, "centerY":I
    move/from16 v0, v17

    #@f5
    int-to-double v4, v0

    #@f6
    mul-double v4, v4, v26

    #@f8
    double-to-int v4, v4

    #@f9
    add-int/2addr v4, v11

    #@fa
    int-to-float v7, v4

    #@fb
    .line 764
    .local v7, "linePointX":F
    move/from16 v0, v17

    #@fd
    int-to-double v4, v0

    #@fe
    mul-double/2addr v4, v14

    #@ff
    double-to-int v4, v4

    #@100
    sub-int v4, v12, v4

    #@102
    int-to-float v8, v4

    #@103
    .line 767
    .local v8, "linePointY":F
    move-object/from16 v0, p0

    #@105
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[[Landroid/graphics/Paint;

    #@107
    rem-int/lit8 v5, p2, 0x2

    #@109
    aget-object v4, v4, v5

    #@10b
    const/4 v5, 0x2

    #@10c
    aget-object v9, v4, v5

    #@10e
    .line 768
    .local v9, "linePaint":Landroid/graphics/Paint;
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    #@111
    .line 769
    move-object/from16 v0, p0

    #@113
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    #@115
    int-to-float v4, v4

    #@116
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@119
    .line 770
    move-object/from16 v0, p0

    #@11b
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@11d
    int-to-float v5, v4

    #@11e
    move-object/from16 v0, p0

    #@120
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@122
    int-to-float v6, v4

    #@123
    move-object/from16 v4, p1

    #@125
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@128
    .line 726
    return-void

    #@129
    .line 749
    .end local v7    # "linePointX":F
    .end local v8    # "linePointY":F
    .end local v9    # "linePaint":Landroid/graphics/Paint;
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    .end local v14    # "cos":D
    .end local v17    # "lineLength":I
    .end local v25    # "shouldDrawDot":Z
    .end local v26    # "sin":D
    :cond_2
    const/16 v25, 0x0

    #@12b
    .restart local v25    # "shouldDrawDot":Z
    goto/16 :goto_0
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "textColor"    # Landroid/content/res/ColorStateList;
    .param p5, "texts"    # [Ljava/lang/String;
    .param p6, "textX"    # [F
    .param p7, "textY"    # [F
    .param p8, "paint"    # Landroid/graphics/Paint;
    .param p9, "alpha"    # I
    .param p10, "showActivated"    # Z
    .param p11, "activatedDegrees"    # I
    .param p12, "activatedOnly"    # Z

    #@0
    .prologue
    .line 821
    move-object/from16 v0, p8

    #@2
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@5
    .line 822
    move-object/from16 v0, p8

    #@7
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@a
    .line 825
    move/from16 v0, p11

    #@c
    int-to-float v9, v0

    #@d
    const/high16 v10, 0x41f00000    # 30.0f

    #@f
    div-float v5, v9, v10

    #@11
    .line 826
    .local v5, "activatedIndex":F
    float-to-int v4, v5

    #@12
    .line 827
    .local v4, "activatedFloor":I
    float-to-double v10, v5

    #@13
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    #@16
    move-result-wide v10

    #@17
    double-to-int v9, v10

    #@18
    rem-int/lit8 v3, v9, 0xc

    #@1a
    .line 829
    .local v3, "activatedCeil":I
    const/4 v7, 0x0

    #@1b
    .local v7, "i":I
    :goto_0
    const/16 v9, 0xc

    #@1d
    if-ge v7, v9, :cond_5

    #@1f
    .line 830
    if-eq v4, v7, :cond_0

    #@21
    if-ne v3, v7, :cond_3

    #@23
    :cond_0
    const/4 v2, 0x1

    #@24
    .line 831
    .local v2, "activated":Z
    :goto_1
    if-eqz p12, :cond_1

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 836
    :cond_1
    if-eqz p10, :cond_4

    #@2a
    if-eqz v2, :cond_4

    #@2c
    const/16 v9, 0x20

    #@2e
    .line 835
    :goto_2
    or-int/lit8 v8, v9, 0x8

    #@30
    .line 837
    .local v8, "stateMask":I
    invoke-static {v8}, Landroid/util/StateSet;->get(I)[I

    #@33
    move-result-object v9

    #@34
    const/4 v10, 0x0

    #@35
    move-object/from16 v0, p4

    #@37
    invoke-virtual {v0, v9, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@3a
    move-result v6

    #@3b
    .line 838
    .local v6, "color":I
    move-object/from16 v0, p8

    #@3d
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    #@40
    .line 839
    move/from16 v0, p9

    #@42
    invoke-direct {p0, v6, v0}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    #@45
    move-result v9

    #@46
    move-object/from16 v0, p8

    #@48
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    #@4b
    .line 841
    aget-object v9, p5, v7

    #@4d
    aget v10, p6, v7

    #@4f
    aget v11, p7, v7

    #@51
    move-object/from16 v0, p8

    #@53
    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@56
    .line 829
    .end local v6    # "color":I
    .end local v8    # "stateMask":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@58
    goto :goto_0

    #@59
    .line 830
    .end local v2    # "activated":Z
    :cond_3
    const/4 v2, 0x0

    #@5a
    .restart local v2    # "activated":Z
    goto :goto_1

    #@5b
    .line 836
    :cond_4
    const/4 v9, 0x0

    #@5c
    goto :goto_2

    #@5d
    .line 820
    .end local v2    # "activated":Z
    :cond_5
    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2
    .param p1, "hour"    # I

    #@0
    .prologue
    const/16 v1, 0xc

    #@2
    .line 517
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 518
    if-lt p1, v1, :cond_0

    #@8
    .line 519
    add-int/lit8 p1, p1, -0xc

    #@a
    .line 524
    :cond_0
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    #@c
    return v0

    #@d
    .line 521
    :cond_1
    if-ne p1, v1, :cond_0

    #@f
    .line 522
    const/4 p1, 0x0

    #@10
    goto :goto_0
.end method

.method private getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 558
    mul-int/lit8 v0, p1, 0x6

    #@2
    return v0
.end method

.method private getDegreesFromXY(FFZ)I
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    #@0
    .prologue
    .line 916
    move-object/from16 v0, p0

    #@2
    iget-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@4
    if-eqz v13, :cond_1

    #@6
    move-object/from16 v0, p0

    #@8
    iget-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@a
    if-eqz v13, :cond_1

    #@c
    .line 917
    move-object/from16 v0, p0

    #@e
    iget v11, v0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    #@10
    .line 918
    .local v11, "innerBound":I
    move-object/from16 v0, p0

    #@12
    iget v12, v0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    #@14
    .line 926
    .local v12, "outerBound":I
    :goto_0
    move-object/from16 v0, p0

    #@16
    iget v13, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@18
    int-to-float v13, v13

    #@19
    sub-float v13, p1, v13

    #@1b
    float-to-double v4, v13

    #@1c
    .line 927
    .local v4, "dX":D
    move-object/from16 v0, p0

    #@1e
    iget v13, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@20
    int-to-float v13, v13

    #@21
    sub-float v13, p2, v13

    #@23
    float-to-double v6, v13

    #@24
    .line 928
    .local v6, "dY":D
    mul-double v14, v4, v4

    #@26
    mul-double v16, v6, v6

    #@28
    add-double v14, v14, v16

    #@2a
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    #@2d
    move-result-wide v8

    #@2e
    .line 929
    .local v8, "distFromCenter":D
    int-to-double v14, v11

    #@2f
    cmpg-double v13, v8, v14

    #@31
    if-ltz v13, :cond_0

    #@33
    if-eqz p3, :cond_3

    #@35
    int-to-double v14, v12

    #@36
    cmpl-double v13, v8, v14

    #@38
    if-lez v13, :cond_3

    #@3a
    .line 930
    :cond_0
    const/4 v13, -0x1

    #@3b
    return v13

    #@3c
    .line 920
    .end local v4    # "dX":D
    .end local v6    # "dY":D
    .end local v8    # "distFromCenter":D
    .end local v11    # "innerBound":I
    .end local v12    # "outerBound":I
    :cond_1
    move-object/from16 v0, p0

    #@3e
    iget-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@40
    if-eqz v13, :cond_2

    #@42
    const/4 v10, 0x0

    #@43
    .line 921
    .local v10, "index":I
    :goto_1
    move-object/from16 v0, p0

    #@45
    iget v13, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@4b
    aget v14, v14, v10

    #@4d
    sub-int v2, v13, v14

    #@4f
    .line 922
    .local v2, "center":I
    move-object/from16 v0, p0

    #@51
    iget v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@53
    sub-int v11, v2, v13

    #@55
    .line 923
    .restart local v11    # "innerBound":I
    move-object/from16 v0, p0

    #@57
    iget v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@59
    add-int v12, v2, v13

    #@5b
    .restart local v12    # "outerBound":I
    goto :goto_0

    #@5c
    .line 920
    .end local v2    # "center":I
    .end local v10    # "index":I
    .end local v11    # "innerBound":I
    .end local v12    # "outerBound":I
    :cond_2
    const/4 v10, 0x1

    #@5d
    .restart local v10    # "index":I
    goto :goto_1

    #@5e
    .line 934
    .end local v10    # "index":I
    .restart local v4    # "dX":D
    .restart local v6    # "dY":D
    .restart local v8    # "distFromCenter":D
    .restart local v11    # "innerBound":I
    .restart local v12    # "outerBound":I
    :cond_3
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    #@61
    move-result-wide v14

    #@62
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@67
    add-double v14, v14, v16

    #@69
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    #@6c
    move-result-wide v14

    #@6d
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    #@6f
    add-double v14, v14, v16

    #@71
    double-to-int v3, v14

    #@72
    .line 935
    .local v3, "degrees":I
    if-gez v3, :cond_4

    #@74
    .line 936
    add-int/lit16 v13, v3, 0x168

    #@76
    return v13

    #@77
    .line 938
    :cond_4
    return v3
.end method

.method private static getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 15
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    #@0
    .prologue
    .line 855
    const/high16 v3, 0x3e800000    # 0.25f

    #@2
    .line 856
    .local v3, "delayMultiplier":F
    const/high16 v11, 0x3f800000    # 1.0f

    #@4
    .line 857
    .local v11, "transitionDurationMultiplier":F
    const/high16 v10, 0x3fa00000    # 1.25f

    #@6
    .line 858
    .local v10, "totalDurationMultiplier":F
    const/16 v9, 0x271

    #@8
    .line 859
    .local v9, "totalDuration":I
    const v4, 0x3e4ccccd    # 0.2f

    #@b
    .line 862
    .local v4, "delayPoint":F
    const/4 v12, 0x0

    #@c
    move/from16 v0, p1

    #@e
    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    #@11
    move-result-object v6

    #@12
    .line 863
    .local v6, "kf0":Landroid/animation/Keyframe;
    const v12, 0x3e4ccccd    # 0.2f

    #@15
    move/from16 v0, p1

    #@17
    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    #@1a
    move-result-object v7

    #@1b
    .line 864
    .local v7, "kf1":Landroid/animation/Keyframe;
    const/high16 v12, 0x3f800000    # 1.0f

    #@1d
    move/from16 v0, p2

    #@1f
    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    #@22
    move-result-object v8

    #@23
    .line 865
    .local v8, "kf2":Landroid/animation/Keyframe;
    const-string/jumbo v12, "value"

    #@26
    const/4 v13, 0x3

    #@27
    new-array v13, v13, [Landroid/animation/Keyframe;

    #@29
    const/4 v14, 0x0

    #@2a
    aput-object v6, v13, v14

    #@2c
    const/4 v14, 0x1

    #@2d
    aput-object v7, v13, v14

    #@2f
    const/4 v14, 0x2

    #@30
    aput-object v8, v13, v14

    #@32
    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    #@35
    move-result-object v5

    #@36
    .line 867
    .local v5, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/4 v12, 0x1

    #@37
    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    #@39
    const/4 v13, 0x0

    #@3a
    aput-object v5, v12, v13

    #@3c
    invoke-static {p0, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@3f
    move-result-object v2

    #@40
    .line 868
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0x271

    #@42
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@45
    .line 869
    move-object/from16 v0, p3

    #@47
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@4a
    .line 870
    return-object v2
.end method

.method private static getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p0, "target"    # Landroid/widget/RadialTimePickerView$IntHolder;
    .param p1, "startAlpha"    # I
    .param p2, "endAlpha"    # I
    .param p3, "updateListener"    # Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    #@0
    .prologue
    .line 847
    const-string/jumbo v1, "value"

    #@3
    const/4 v2, 0x2

    #@4
    new-array v2, v2, [I

    #@6
    const/4 v3, 0x0

    #@7
    aput p1, v2, v3

    #@9
    const/4 v3, 0x1

    #@a
    aput p2, v2, v3

    #@c
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@f
    move-result-object v0

    #@10
    .line 848
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    #@12
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@15
    .line 849
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@18
    .line 850
    return-object v0
.end method

.method private getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    #@0
    .prologue
    .line 495
    div-int/lit8 v1, p1, 0x1e

    #@2
    rem-int/lit8 v0, v1, 0xc

    #@4
    .line 496
    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@6
    if-eqz v1, :cond_2

    #@8
    .line 499
    if-nez p2, :cond_1

    #@a
    if-nez v0, :cond_1

    #@c
    .line 501
    const/16 v0, 0xc

    #@e
    .line 509
    :cond_0
    :goto_0
    return v0

    #@f
    .line 502
    :cond_1
    if-eqz p2, :cond_0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 504
    add-int/lit8 v0, v0, 0xc

    #@15
    goto :goto_0

    #@16
    .line 506
    :cond_2
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@18
    const/4 v2, 0x1

    #@19
    if-ne v1, v2, :cond_0

    #@1b
    .line 507
    add-int/lit8 v0, v0, 0xc

    #@1d
    goto :goto_0
.end method

.method private getInnerCircleForHour(I)Z
    .locals 3
    .param p1, "hour"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 531
    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@4
    if-eqz v2, :cond_1

    #@6
    if-eqz p1, :cond_0

    #@8
    const/16 v2, 0xc

    #@a
    if-le p1, v2, :cond_1

    #@c
    :cond_0
    :goto_0
    return v0

    #@d
    :cond_1
    move v0, v1

    #@e
    goto :goto_0
.end method

.method private getInnerCircleFromXY(FF)Z
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 943
    iget-boolean v7, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@3
    if-eqz v7, :cond_1

    #@5
    iget-boolean v7, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@7
    if-eqz v7, :cond_1

    #@9
    .line 944
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@b
    int-to-float v7, v7

    #@c
    sub-float v7, p1, v7

    #@e
    float-to-double v0, v7

    #@f
    .line 945
    .local v0, "dX":D
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@11
    int-to-float v7, v7

    #@12
    sub-float v7, p2, v7

    #@14
    float-to-double v2, v7

    #@15
    .line 946
    .local v2, "dY":D
    mul-double v8, v0, v0

    #@17
    mul-double v10, v2, v2

    #@19
    add-double/2addr v8, v10

    #@1a
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    #@1d
    move-result-wide v4

    #@1e
    .line 947
    .local v4, "distFromCenter":D
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    #@20
    int-to-double v8, v7

    #@21
    cmpg-double v7, v4, v8

    #@23
    if-gtz v7, :cond_0

    #@25
    const/4 v6, 0x1

    #@26
    :cond_0
    return v6

    #@27
    .line 949
    .end local v0    # "dX":D
    .end local v2    # "dY":D
    .end local v4    # "distFromCenter":D
    :cond_1
    return v6
.end method

.method private getMinuteForDegrees(I)I
    .locals 1
    .param p1, "degrees"    # I

    #@0
    .prologue
    .line 554
    div-int/lit8 v0, p1, 0x6

    #@2
    return v0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    #@0
    .prologue
    .line 723
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v0

    #@4
    int-to-double v0, v0

    #@5
    int-to-double v2, p2

    #@6
    const-wide v4, 0x406fe00000000000L    # 255.0

    #@b
    div-double/2addr v2, v4

    #@c
    mul-double/2addr v0, v2

    #@d
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@f
    add-double/2addr v0, v2

    #@10
    double-to-int v0, v0

    #@11
    return v0
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 989
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    #@5
    move-result v1

    #@6
    .line 990
    .local v1, "isOnInnerCircle":Z
    invoke-direct {p0, p1, p2, v7}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    #@9
    move-result v0

    #@a
    .line 991
    .local v0, "degrees":I
    const/4 v6, -0x1

    #@b
    if-ne v0, v6, :cond_0

    #@d
    .line 992
    return v7

    #@e
    .line 999
    :cond_0
    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@10
    if-eqz v6, :cond_7

    #@12
    .line 1000
    invoke-static {v0, v7}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    #@15
    move-result v6

    #@16
    rem-int/lit16 v3, v6, 0x168

    #@18
    .line 1001
    .local v3, "snapDegrees":I
    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@1a
    if-ne v6, v1, :cond_5

    #@1c
    .line 1002
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@1e
    aget v6, v6, v7

    #@20
    if-eq v6, v3, :cond_6

    #@22
    const/4 v5, 0x1

    #@23
    .line 1003
    .local v5, "valueChanged":Z
    :goto_0
    iput-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@25
    .line 1004
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@27
    aput v3, v6, v7

    #@29
    .line 1005
    const/4 v4, 0x0

    #@2a
    .line 1006
    .local v4, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    #@2d
    move-result v2

    #@2e
    .line 1015
    .local v2, "newValue":I
    :goto_1
    if-nez v5, :cond_1

    #@30
    if-nez p3, :cond_1

    #@32
    if-eqz p4, :cond_9

    #@34
    .line 1017
    :cond_1
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@36
    if-eqz v6, :cond_2

    #@38
    .line 1018
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@3a
    invoke-interface {v6, v4, v2, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    #@3d
    .line 1022
    :cond_2
    if-nez v5, :cond_3

    #@3f
    if-eqz p3, :cond_4

    #@41
    .line 1023
    :cond_3
    const/4 v6, 0x4

    #@42
    invoke-virtual {p0, v6}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    #@45
    .line 1024
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    #@48
    .line 1026
    :cond_4
    return v8

    #@49
    .line 1001
    .end local v2    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_5
    const/4 v5, 0x1

    #@4a
    .restart local v5    # "valueChanged":Z
    goto :goto_0

    #@4b
    .line 1002
    .end local v5    # "valueChanged":Z
    :cond_6
    const/4 v5, 0x0

    #@4c
    .restart local v5    # "valueChanged":Z
    goto :goto_0

    #@4d
    .line 1008
    .end local v3    # "snapDegrees":I
    .end local v5    # "valueChanged":Z
    :cond_7
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    #@50
    move-result v6

    #@51
    rem-int/lit16 v3, v6, 0x168

    #@53
    .line 1009
    .restart local v3    # "snapDegrees":I
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@55
    aget v6, v6, v8

    #@57
    if-eq v6, v3, :cond_8

    #@59
    const/4 v5, 0x1

    #@5a
    .line 1010
    .restart local v5    # "valueChanged":Z
    :goto_2
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@5c
    aput v3, v6, v8

    #@5e
    .line 1011
    const/4 v4, 0x1

    #@5f
    .line 1012
    .restart local v4    # "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    #@62
    move-result v2

    #@63
    .restart local v2    # "newValue":I
    goto :goto_1

    #@64
    .line 1009
    .end local v2    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_8
    const/4 v5, 0x0

    #@65
    .restart local v5    # "valueChanged":Z
    goto :goto_2

    #@66
    .line 1029
    .restart local v2    # "newValue":I
    .restart local v4    # "type":I
    :cond_9
    return v7
.end method

.method private initData()V
    .locals 4

    #@0
    .prologue
    .line 614
    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 615
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    #@6
    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    #@8
    .line 616
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    #@a
    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    #@c
    .line 622
    :goto_0
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    #@e
    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    #@10
    .line 624
    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@12
    if-eqz v2, :cond_1

    #@14
    const/16 v0, 0xff

    #@16
    .line 625
    .local v0, "hoursAlpha":I
    :goto_1
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@18
    const/4 v3, 0x0

    #@19
    aget-object v2, v2, v3

    #@1b
    invoke-virtual {v2, v0}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    #@1e
    .line 627
    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@20
    if-eqz v2, :cond_2

    #@22
    const/4 v1, 0x0

    #@23
    .line 628
    .local v1, "minutesAlpha":I
    :goto_2
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@25
    const/4 v3, 0x1

    #@26
    aget-object v2, v2, v3

    #@28
    invoke-virtual {v2, v1}, Landroid/widget/RadialTimePickerView$IntHolder;->setValue(I)V

    #@2b
    .line 613
    return-void

    #@2c
    .line 618
    .end local v0    # "hoursAlpha":I
    .end local v1    # "minutesAlpha":I
    :cond_0
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    #@2e
    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    #@30
    .line 619
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    #@32
    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    #@34
    goto :goto_0

    #@35
    .line 624
    :cond_1
    const/4 v0, 0x0

    #@36
    .restart local v0    # "hoursAlpha":I
    goto :goto_1

    #@37
    .line 627
    :cond_2
    const/16 v1, 0xff

    #@39
    .restart local v1    # "minutesAlpha":I
    goto :goto_2
.end method

.method private initHoursAndMinutesText()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 605
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 606
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    #@9
    const-string/jumbo v2, "%d"

    #@c
    new-array v3, v6, [Ljava/lang/Object;

    #@e
    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    #@10
    aget v4, v4, v0

    #@12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v4

    #@16
    aput-object v4, v3, v5

    #@18
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v1, v0

    #@1e
    .line 607
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    #@20
    const-string/jumbo v2, "%02d"

    #@23
    new-array v3, v6, [Ljava/lang/Object;

    #@25
    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    #@27
    aget v4, v4, v0

    #@29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v4

    #@2d
    aput-object v4, v3, v5

    #@2f
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    aput-object v2, v1, v0

    #@35
    .line 608
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    #@37
    const-string/jumbo v2, "%d"

    #@3a
    new-array v3, v6, [Ljava/lang/Object;

    #@3c
    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    #@3e
    aget v4, v4, v0

    #@40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v4

    #@44
    aput-object v4, v3, v5

    #@46
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    aput-object v2, v1, v0

    #@4c
    .line 609
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    #@4e
    const-string/jumbo v2, "%02d"

    #@51
    new-array v3, v6, [Ljava/lang/Object;

    #@53
    sget-object v4, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    #@55
    aget v4, v4, v0

    #@57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v4

    #@5b
    aput-object v4, v3, v5

    #@5d
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    aput-object v2, v1, v0

    #@63
    .line 605
    add-int/lit8 v0, v0, 0x1

    #@65
    goto :goto_0

    #@66
    .line 603
    :cond_0
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    #@0
    .prologue
    .line 217
    const/4 v3, 0x0

    #@1
    .line 219
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    #@2
    .line 223
    .local v0, "count":I
    const/16 v2, 0x8

    #@4
    .line 225
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    #@5
    .local v1, "degrees":I
    :goto_0
    const/16 v4, 0x169

    #@7
    if-ge v1, v4, :cond_3

    #@9
    .line 227
    sget-object v4, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    #@b
    aput v3, v4, v1

    #@d
    .line 230
    if-ne v0, v2, :cond_2

    #@f
    .line 231
    add-int/lit8 v3, v3, 0x6

    #@11
    .line 232
    const/16 v4, 0x168

    #@13
    if-ne v3, v4, :cond_0

    #@15
    .line 233
    const/4 v2, 0x7

    #@16
    .line 239
    :goto_1
    const/4 v0, 0x1

    #@17
    .line 225
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 234
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 235
    const/16 v2, 0xe

    #@20
    goto :goto_1

    #@21
    .line 237
    :cond_1
    const/4 v2, 0x4

    #@22
    goto :goto_1

    #@23
    .line 241
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_2

    #@26
    .line 201
    :cond_3
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 464
    rem-int/lit8 v3, p1, 0xc

    #@3
    mul-int/lit8 v1, v3, 0x1e

    #@5
    .line 465
    .local v1, "degrees":I
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@7
    aput v1, v3, v5

    #@9
    .line 468
    if-eqz p1, :cond_0

    #@b
    rem-int/lit8 v3, p1, 0x18

    #@d
    const/16 v4, 0xc

    #@f
    if-ge v3, v4, :cond_4

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    .line 469
    .local v0, "amOrPm":I
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    #@15
    move-result v2

    #@16
    .line 470
    .local v2, "isOnInnerCircle":Z
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@18
    if-ne v3, v0, :cond_1

    #@1a
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@1c
    if-eq v3, v2, :cond_2

    #@1e
    .line 471
    :cond_1
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@20
    .line 472
    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@22
    .line 474
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    #@25
    .line 475
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@27
    invoke-virtual {v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    #@2a
    .line 478
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    #@2d
    .line 480
    if-eqz p2, :cond_3

    #@2f
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 481
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@35
    invoke-interface {v3, v5, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    #@38
    .line 463
    :cond_3
    return-void

    #@39
    .line 468
    .end local v0    # "amOrPm":I
    .end local v2    # "isOnInnerCircle":Z
    :cond_4
    const/4 v0, 0x1

    #@3a
    .restart local v0    # "amOrPm":I
    goto :goto_0
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 539
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@3
    rem-int/lit8 v1, p1, 0x3c

    #@5
    mul-int/lit8 v1, v1, 0x6

    #@7
    aput v1, v0, v2

    #@9
    .line 541
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    #@c
    .line 543
    if-eqz p2, :cond_0

    #@e
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 544
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    #@18
    .line 538
    :cond_0
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    #@0
    .prologue
    .line 270
    const/16 v2, 0x1e

    #@2
    .line 271
    .local v2, "stepSize":I
    div-int/lit8 v3, p0, 0x1e

    #@4
    mul-int/lit8 v1, v3, 0x1e

    #@6
    .line 272
    .local v1, "floor":I
    add-int/lit8 v0, v1, 0x1e

    #@8
    .line 273
    .local v0, "ceiling":I
    const/4 v3, 0x1

    #@9
    if-ne p1, v3, :cond_0

    #@b
    .line 274
    move p0, v0

    #@c
    .line 287
    :goto_0
    return p0

    #@d
    .line 275
    :cond_0
    const/4 v3, -0x1

    #@e
    if-ne p1, v3, :cond_2

    #@10
    .line 276
    if-ne p0, v1, :cond_1

    #@12
    .line 277
    add-int/lit8 v1, v1, -0x1e

    #@14
    .line 279
    :cond_1
    move p0, v1

    #@15
    goto :goto_0

    #@16
    .line 281
    :cond_2
    sub-int v3, p0, v1

    #@18
    sub-int v4, v0, p0

    #@1a
    if-ge v3, v4, :cond_3

    #@1c
    .line 282
    move p0, v1

    #@1d
    goto :goto_0

    #@1e
    .line 284
    :cond_3
    move p0, v0

    #@1f
    goto :goto_0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    #@0
    .prologue
    .line 254
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 255
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 257
    :cond_0
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    #@8
    aget v0, v0, p0

    #@a
    return v0
.end method

.method private startHoursToMinutesAnimation()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0xff

    #@2
    const/4 v3, 0x0

    #@3
    .line 881
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 882
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    #@d
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@f
    aget-object v1, v1, v3

    #@11
    .line 883
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    #@13
    .line 882
    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 884
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    #@1c
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@1e
    const/4 v2, 0x1

    #@1f
    aget-object v1, v1, v2

    #@21
    .line 885
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    #@23
    .line 884
    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 888
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@2c
    if-eqz v0, :cond_1

    #@2e
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@30
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 889
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@38
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    #@3b
    .line 891
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    #@3d
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@40
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@42
    .line 892
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@44
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnims:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    #@49
    .line 893
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@4b
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@4e
    .line 880
    return-void
.end method

.method private startMinutesToHoursAnimation()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0xff

    #@2
    const/4 v3, 0x0

    #@3
    .line 897
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 898
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    #@d
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@f
    const/4 v2, 0x1

    #@10
    aget-object v1, v1, v2

    #@12
    .line 899
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    #@14
    .line 898
    invoke-static {v1, v4, v3, v2}, Landroid/widget/RadialTimePickerView;->getFadeOutAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 900
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    #@1d
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mAlpha:[Landroid/widget/RadialTimePickerView$IntHolder;

    #@1f
    aget-object v1, v1, v3

    #@21
    .line 901
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInvalidateUpdateListener:Landroid/widget/RadialTimePickerView$InvalidateUpdateListener;

    #@23
    .line 900
    invoke-static {v1, v3, v4, v2}, Landroid/widget/RadialTimePickerView;->getFadeInAnimator(Landroid/widget/RadialTimePickerView$IntHolder;IILandroid/widget/RadialTimePickerView$InvalidateUpdateListener;)Landroid/animation/ObjectAnimator;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 904
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@2c
    if-eqz v0, :cond_1

    #@2e
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@30
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 905
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@38
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    #@3b
    .line 907
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    #@3d
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@40
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@42
    .line 908
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@44
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinuteToHoursAnims:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    #@49
    .line 909
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTransition:Landroid/animation/AnimatorSet;

    #@4b
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    #@4e
    .line 896
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1035
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1036
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1038
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getAmOrPm()I
    .locals 1

    #@0
    .prologue
    .line 568
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@2
    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    #@0
    .prologue
    .line 491
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@2
    const/4 v1, 0x0

    #@3
    aget v0, v0, v1

    #@5
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@7
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    #@0
    .prologue
    .line 439
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 2

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@2
    const/4 v1, 0x1

    #@3
    aget v0, v0, v1

    #@5
    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public initialize(IIZ)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 416
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@3
    if-eq v0, p3, :cond_0

    #@5
    .line 417
    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@7
    .line 418
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    #@a
    .line 421
    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    #@d
    .line 422
    invoke-direct {p0, p2, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    #@10
    .line 415
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 653
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const/high16 v0, 0x3f800000    # 1.0f

    #@6
    .line 655
    .local v0, "alphaMod":F
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    #@9
    .line 656
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;F)V

    #@c
    .line 657
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;F)V

    #@f
    .line 658
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    #@12
    .line 652
    return-void

    #@13
    .line 653
    .end local v0    # "alphaMod":F
    :cond_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    #@15
    .restart local v0    # "alphaMod":F
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x0

    #@2
    .line 633
    if-nez p1, :cond_0

    #@4
    .line 634
    return-void

    #@5
    .line 637
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    #@8
    move-result v0

    #@9
    div-int/lit8 v0, v0, 0x2

    #@b
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@d
    .line 638
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    #@10
    move-result v0

    #@11
    div-int/lit8 v0, v0, 0x2

    #@13
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@15
    .line 639
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@17
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@19
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@1f
    .line 641
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@21
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@23
    aget v1, v1, v3

    #@25
    sub-int/2addr v0, v1

    #@26
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@28
    sub-int/2addr v0, v1

    #@29
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    #@2b
    .line 642
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@2d
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@2f
    aget v1, v1, v2

    #@31
    sub-int/2addr v0, v1

    #@32
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@34
    add-int/2addr v0, v1

    #@35
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    #@37
    .line 643
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@39
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@3b
    aget v1, v1, v2

    #@3d
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@3f
    aget v2, v2, v3

    #@41
    add-int/2addr v1, v2

    #@42
    div-int/lit8 v1, v1, 0x2

    #@44
    sub-int/2addr v0, v1

    #@45
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    #@47
    .line 645
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    #@4a
    .line 646
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    #@4d
    .line 648
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@4f
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    #@52
    .line 632
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 956
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    #@4
    if-nez v3, :cond_0

    #@6
    .line 957
    return v6

    #@7
    .line 960
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a
    move-result v0

    #@b
    .line 961
    .local v0, "action":I
    const/4 v3, 0x2

    #@c
    if-eq v0, v3, :cond_1

    #@e
    .line 962
    if-ne v0, v6, :cond_4

    #@10
    .line 964
    :cond_1
    :goto_0
    const/4 v2, 0x0

    #@11
    .line 965
    .local v2, "forceSelection":Z
    const/4 v1, 0x0

    #@12
    .line 967
    .local v1, "autoAdvance":Z
    if-nez v0, :cond_5

    #@14
    .line 969
    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    #@16
    .line 980
    :cond_2
    :goto_1
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    #@18
    .line 981
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1b
    move-result v4

    #@1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1f
    move-result v5

    #@20
    .line 980
    invoke-direct {p0, v4, v5, v2, v1}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    #@23
    move-result v4

    #@24
    or-int/2addr v3, v4

    #@25
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    #@27
    .line 984
    .end local v1    # "autoAdvance":Z
    .end local v2    # "forceSelection":Z
    :cond_3
    return v6

    #@28
    .line 963
    :cond_4
    if-nez v0, :cond_3

    #@2a
    goto :goto_0

    #@2b
    .line 970
    .restart local v1    # "autoAdvance":Z
    .restart local v2    # "forceSelection":Z
    :cond_5
    if-ne v0, v6, :cond_2

    #@2d
    .line 971
    const/4 v1, 0x1

    #@2e
    .line 975
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    #@30
    if-nez v3, :cond_2

    #@32
    .line 976
    const/4 v2, 0x1

    #@33
    goto :goto_1
.end method

.method public setAmOrPm(I)V
    .locals 1
    .param p1, "val"    # I

    #@0
    .prologue
    .line 562
    rem-int/lit8 v0, p1, 0x2

    #@2
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@4
    .line 563
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    #@7
    .line 564
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@9
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    #@c
    .line 561
    return-void
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    #@0
    .prologue
    .line 452
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    #@5
    .line 451
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 426
    packed-switch p1, :pswitch_data_0

    #@3
    .line 434
    const-string/jumbo v0, "RadialTimePickerView"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "ClockView does not support showing item "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 425
    :goto_0
    return-void

    #@1e
    .line 428
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    #@21
    goto :goto_0

    #@22
    .line 431
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    #@25
    goto :goto_0

    #@26
    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 535
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    #@4
    .line 534
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    #@0
    .prologue
    .line 1042
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    #@2
    .line 1043
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    #@5
    .line 1041
    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@0
    .prologue
    .line 443
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@2
    .line 442
    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 572
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 573
    return-void

    #@5
    .line 576
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@8
    .line 578
    if-eqz p1, :cond_1

    #@a
    .line 579
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startMinutesToHoursAnimation()V

    #@d
    .line 582
    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    #@10
    .line 583
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    #@13
    .line 584
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@15
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    #@18
    .line 571
    return-void
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 589
    return-void

    #@5
    .line 592
    :cond_0
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@8
    .line 594
    if-eqz p1, :cond_1

    #@a
    .line 595
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->startHoursToMinutesAnimation()V

    #@d
    .line 598
    :cond_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    #@10
    .line 599
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    #@13
    .line 600
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@15
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    #@18
    .line 587
    return-void
.end method
