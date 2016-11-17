.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$1;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;,
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ANIM_DURATION_NORMAL:I = 0x1f4

.field private static final ANIM_DURATION_TOUCH:I = 0x3c

.field private static final COS_30:[F

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field public static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_IN_CIRCLE:I = 0xc

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field public static final MINUTES:I = 0x1

.field private static final MINUTES_IN_CIRCLE:I = 0x3c

.field private static final MINUTES_NUMBERS:[I

.field private static final MISSING_COLOR:I = -0xff01

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I

.field private static final TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final HOURS_TO_MINUTES:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/widget/RadialTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private mAmOrPm:I

.field private mCenterDotRadius:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:I

.field private mDisabledAlpha:F

.field private mHalfwayDist:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private mHoursToMinutes:F

.field private mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxDistForOuterNumber:I

.field private mMinDistForInnerNumber:I

.field private mMinutesText:[Ljava/lang/String;

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintSelector:[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private mSelectorColor:I

.field private mSelectorDotColor:I

.field private mSelectorDotRadius:I

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mSelectorRadius:I

.field private mSelectorStroke:I

.field private mShowHours:Z

.field private final mTextColor:[Landroid/content/res/ColorStateList;

.field private final mTextInset:[I

.field private final mTextSize:[I

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

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

.method static synthetic -get2(Landroid/widget/RadialTimePickerView;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/widget/RadialTimePickerView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/widget/RadialTimePickerView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/widget/RadialTimePickerView;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/RadialTimePickerView;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    #@2
    return p1
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
    .line 77
    new-array v3, v8, [I

    #@4
    fill-array-data v3, :array_0

    #@7
    sput-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    #@9
    .line 78
    new-array v3, v8, [I

    #@b
    fill-array-data v3, :array_1

    #@e
    sput-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    #@10
    .line 79
    new-array v3, v8, [I

    #@12
    fill-array-data v3, :array_2

    #@15
    sput-object v3, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    #@17
    .line 84
    const/16 v3, 0x169

    #@19
    new-array v3, v3, [I

    #@1b
    sput-object v3, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    #@1d
    .line 87
    new-array v3, v8, [F

    #@1f
    sput-object v3, Landroid/widget/RadialTimePickerView;->COS_30:[F

    #@21
    .line 88
    new-array v3, v8, [F

    #@23
    sput-object v3, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    #@25
    .line 95
    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    #@28
    .line 97
    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    #@2d
    .line 98
    .local v4, "increment":D
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@32
    .line 99
    .local v0, "angle":D
    const/4 v2, 0x0

    #@33
    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    #@35
    .line 100
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
    .line 101
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
    .line 102
    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    #@4c
    add-double/2addr v0, v6

    #@4d
    .line 99
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 57
    :cond_0
    return-void

    #@51
    .line 77
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
    .line 78
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
    .line 79
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
    .line 291
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 295
    const v0, 0x101049d

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 299
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 107
    new-instance v5, Landroid/widget/RadialTimePickerView$1;

    #@5
    const-string/jumbo v6, "hoursToMinutes"

    #@8
    invoke-direct {v5, p0, v6}, Landroid/widget/RadialTimePickerView$1;-><init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V

    #@b
    .line 106
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    #@d
    .line 120
    const/16 v5, 0xc

    #@f
    new-array v5, v5, [Ljava/lang/String;

    #@11
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    #@13
    .line 121
    const/16 v5, 0xc

    #@15
    new-array v5, v5, [Ljava/lang/String;

    #@17
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    #@19
    .line 122
    const/16 v5, 0xc

    #@1b
    new-array v5, v5, [Ljava/lang/String;

    #@1d
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    #@1f
    .line 123
    const/16 v5, 0xc

    #@21
    new-array v5, v5, [Ljava/lang/String;

    #@23
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    #@25
    .line 125
    const/4 v5, 0x2

    #@26
    new-array v5, v5, [Landroid/graphics/Paint;

    #@28
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@2a
    .line 126
    new-instance v5, Landroid/graphics/Paint;

    #@2c
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    #@2f
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    #@31
    .line 127
    const/4 v5, 0x3

    #@32
    new-array v5, v5, [Landroid/graphics/Paint;

    #@34
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@36
    .line 128
    new-instance v5, Landroid/graphics/Paint;

    #@38
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    #@3b
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    #@3d
    .line 132
    const/4 v5, 0x3

    #@3e
    new-array v5, v5, [Landroid/content/res/ColorStateList;

    #@40
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@42
    .line 133
    const/4 v5, 0x3

    #@43
    new-array v5, v5, [I

    #@45
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@47
    .line 134
    const/4 v5, 0x3

    #@48
    new-array v5, v5, [I

    #@4a
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@4c
    .line 136
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@4e
    const/4 v6, 0x2

    #@4f
    const/16 v7, 0xc

    #@51
    filled-new-array {v6, v7}, [I

    #@54
    move-result-object v6

    #@55
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@58
    move-result-object v5

    #@59
    check-cast v5, [[F

    #@5b
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    #@5d
    .line 137
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@5f
    const/4 v6, 0x2

    #@60
    const/16 v7, 0xc

    #@62
    filled-new-array {v6, v7}, [I

    #@65
    move-result-object v6

    #@66
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@69
    move-result-object v5

    #@6a
    check-cast v5, [[F

    #@6c
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    #@6e
    .line 139
    const/16 v5, 0xc

    #@70
    new-array v5, v5, [F

    #@72
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    #@74
    .line 140
    const/16 v5, 0xc

    #@76
    new-array v5, v5, [F

    #@78
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    #@7a
    .line 142
    const/4 v5, 0x2

    #@7b
    new-array v5, v5, [I

    #@7d
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@7f
    .line 146
    new-instance v5, Landroid/graphics/Path;

    #@81
    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    #@84
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    #@86
    .line 186
    const/4 v5, 0x1

    #@87
    iput-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    #@89
    .line 934
    const/4 v5, 0x0

    #@8a
    iput-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    #@8c
    .line 306
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    #@8f
    .line 309
    new-instance v3, Landroid/util/TypedValue;

    #@91
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    #@94
    .line 310
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@97
    move-result-object v5

    #@98
    const v6, 0x1010033

    #@9b
    const/4 v7, 0x1

    #@9c
    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@9f
    .line 311
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    #@a2
    move-result v5

    #@a3
    iput v5, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    #@a5
    .line 313
    const-string/jumbo v5, "sans-serif"

    #@a8
    const/4 v6, 0x0

    #@a9
    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@ac
    move-result-object v5

    #@ad
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    #@af
    .line 315
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@b1
    new-instance v6, Landroid/graphics/Paint;

    #@b3
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@b6
    const/4 v7, 0x0

    #@b7
    aput-object v6, v5, v7

    #@b9
    .line 316
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@bb
    const/4 v6, 0x0

    #@bc
    aget-object v5, v5, v6

    #@be
    const/4 v6, 0x1

    #@bf
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@c2
    .line 317
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@c4
    const/4 v6, 0x0

    #@c5
    aget-object v5, v5, v6

    #@c7
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@c9
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@cc
    .line 319
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@ce
    new-instance v6, Landroid/graphics/Paint;

    #@d0
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@d3
    const/4 v7, 0x1

    #@d4
    aput-object v6, v5, v7

    #@d6
    .line 320
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@d8
    const/4 v6, 0x1

    #@d9
    aget-object v5, v5, v6

    #@db
    const/4 v6, 0x1

    #@dc
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@df
    .line 321
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@e1
    const/4 v6, 0x1

    #@e2
    aget-object v5, v5, v6

    #@e4
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@e6
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@e9
    .line 323
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    #@eb
    const/4 v6, 0x1

    #@ec
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@ef
    .line 325
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@f1
    new-instance v6, Landroid/graphics/Paint;

    #@f3
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@f6
    const/4 v7, 0x0

    #@f7
    aput-object v6, v5, v7

    #@f9
    .line 326
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@fb
    const/4 v6, 0x0

    #@fc
    aget-object v5, v5, v6

    #@fe
    const/4 v6, 0x1

    #@ff
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@102
    .line 328
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@104
    new-instance v6, Landroid/graphics/Paint;

    #@106
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@109
    const/4 v7, 0x1

    #@10a
    aput-object v6, v5, v7

    #@10c
    .line 329
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@10e
    const/4 v6, 0x1

    #@10f
    aget-object v5, v5, v6

    #@111
    const/4 v6, 0x1

    #@112
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@115
    .line 331
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@117
    new-instance v6, Landroid/graphics/Paint;

    #@119
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    #@11c
    const/4 v7, 0x2

    #@11d
    aput-object v6, v5, v7

    #@11f
    .line 332
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@121
    const/4 v6, 0x2

    #@122
    aget-object v5, v5, v6

    #@124
    const/4 v6, 0x1

    #@125
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@128
    .line 333
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@12a
    const/4 v6, 0x2

    #@12b
    aget-object v5, v5, v6

    #@12d
    const/high16 v6, 0x40000000    # 2.0f

    #@12f
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@132
    .line 335
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    #@134
    const/4 v6, 0x1

    #@135
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@138
    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@13b
    move-result-object v4

    #@13c
    .line 338
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x1050132

    #@13f
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@142
    move-result v5

    #@143
    iput v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@145
    .line 339
    const v5, 0x1050133

    #@148
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@14b
    move-result v5

    #@14c
    iput v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    #@14e
    .line 340
    const v5, 0x1050135

    #@151
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@154
    move-result v5

    #@155
    iput v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    #@157
    .line 341
    const v5, 0x1050134

    #@15a
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@15d
    move-result v5

    #@15e
    iput v5, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    #@160
    .line 343
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@162
    const v6, 0x1050137

    #@165
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@168
    move-result v6

    #@169
    const/4 v7, 0x0

    #@16a
    aput v6, v5, v7

    #@16c
    .line 344
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@16e
    const v6, 0x1050137

    #@171
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@174
    move-result v6

    #@175
    const/4 v7, 0x1

    #@176
    aput v6, v5, v7

    #@178
    .line 345
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@17a
    const v6, 0x1050138

    #@17d
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@180
    move-result v6

    #@181
    const/4 v7, 0x2

    #@182
    aput v6, v5, v7

    #@184
    .line 347
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@186
    const v6, 0x1050136

    #@189
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@18c
    move-result v6

    #@18d
    const/4 v7, 0x0

    #@18e
    aput v6, v5, v7

    #@190
    .line 348
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@192
    const v6, 0x1050136

    #@195
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@198
    move-result v6

    #@199
    const/4 v7, 0x1

    #@19a
    aput v6, v5, v7

    #@19c
    .line 349
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@19e
    const v6, 0x10500c6

    #@1a1
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1a4
    move-result v6

    #@1a5
    const/4 v7, 0x2

    #@1a6
    aput v6, v5, v7

    #@1a8
    .line 351
    const/4 v5, 0x1

    #@1a9
    iput-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@1ab
    .line 352
    const/4 v5, 0x0

    #@1ac
    iput v5, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    #@1ae
    .line 353
    const/4 v5, 0x0

    #@1af
    iput-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@1b1
    .line 354
    const/4 v5, 0x0

    #@1b2
    iput v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@1b4
    .line 357
    new-instance v5, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@1b6
    invoke-direct {v5, p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    #@1b9
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@1bb
    .line 358
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@1bd
    invoke-virtual {p0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@1c0
    .line 360
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    #@1c3
    move-result v5

    #@1c4
    if-nez v5, :cond_0

    #@1c6
    .line 361
    const/4 v5, 0x1

    #@1c7
    invoke-virtual {p0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@1ca
    .line 364
    :cond_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    #@1cd
    .line 365
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    #@1d0
    .line 368
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1d3
    move-result-object v5

    #@1d4
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@1d7
    move-result-object v0

    #@1d8
    .line 369
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v5, 0xb

    #@1da
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    #@1dd
    move-result v1

    #@1de
    .line 370
    .local v1, "currentHour":I
    const/16 v5, 0xc

    #@1e0
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    #@1e3
    move-result v2

    #@1e4
    .line 372
    .local v2, "currentMinute":I
    const/4 v5, 0x0

    #@1e5
    const/4 v6, 0x0

    #@1e6
    invoke-direct {p0, v1, v5, v6}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    #@1e9
    .line 373
    const/4 v5, 0x0

    #@1ea
    invoke-direct {p0, v2, v5}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    #@1ed
    .line 375
    const/4 v5, 0x1

    #@1ee
    invoke-virtual {p0, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    #@1f1
    .line 303
    return-void
.end method

.method private animatePicker(ZJ)V
    .locals 6
    .param p1, "hoursToMinutes"    # Z
    .param p2, "duration"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 676
    if-eqz p1, :cond_1

    #@5
    move v1, v2

    #@6
    :goto_0
    int-to-float v0, v1

    #@7
    .line 677
    .local v0, "target":F
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    #@9
    cmpl-float v1, v1, v0

    #@b
    if-nez v1, :cond_2

    #@d
    .line 679
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@f
    if-eqz v1, :cond_0

    #@11
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@13
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 680
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@1b
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    #@1e
    .line 681
    iput-object v4, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@20
    .line 685
    :cond_0
    return-void

    #@21
    .end local v0    # "target":F
    :cond_1
    move v1, v3

    #@22
    .line 676
    goto :goto_0

    #@23
    .line 688
    .restart local v0    # "target":F
    :cond_2
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    #@25
    new-array v4, v3, [F

    #@27
    aput v0, v4, v2

    #@29
    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@2f
    .line 689
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@31
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@34
    .line 690
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@36
    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@39
    .line 691
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@3b
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    #@3e
    .line 675
    return-void
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
    .line 855
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    #@3
    .line 856
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
    .line 858
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    #@13
    if-ge v0, v1, :cond_0

    #@15
    .line 859
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
    .line 860
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
    .line 858
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 853
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
    .line 824
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
    .line 827
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
    .line 828
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
    .line 827
    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    #@24
    .line 831
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 832
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@2a
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@2c
    aget v2, v2, v8

    #@2e
    sub-int v9, v0, v2

    #@30
    .line 833
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
    .line 834
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
    .line 833
    invoke-static/range {v2 .. v8}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    #@47
    .line 822
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
    .line 840
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
    .line 843
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
    .line 844
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
    .line 843
    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    #@23
    .line 838
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    #@0
    .prologue
    .line 757
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
    .line 758
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
    .line 756
    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 695
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
    .line 694
    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 699
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    #@4
    const/high16 v2, 0x3f800000    # 1.0f

    #@6
    sub-float v1, v2, v1

    #@8
    const/high16 v2, 0x437f0000    # 255.0f

    #@a
    mul-float/2addr v1, v2

    #@b
    mul-float/2addr v1, p3

    #@c
    const/high16 v2, 0x3f000000    # 0.5f

    #@e
    add-float/2addr v1, v2

    #@f
    float-to-int v0, v1

    #@10
    .line 700
    .local v0, "hoursAlpha":I
    if-lez v0, :cond_0

    #@12
    .line 703
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    #@15
    .line 704
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@17
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    #@1a
    .line 705
    invoke-direct {p0, p1, v0, v3}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    #@1d
    .line 706
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@20
    .line 710
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    #@23
    .line 711
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@25
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    #@28
    .line 712
    const/4 v1, 0x1

    #@29
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    #@2c
    .line 713
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@2f
    .line 698
    :cond_0
    return-void
.end method

.method private drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "hoursAlpha"    # I
    .param p3, "showActivated"    # Z

    #@0
    .prologue
    .line 719
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@2
    const/4 v1, 0x0

    #@3
    aget v0, v0, v1

    #@5
    int-to-float v2, v0

    #@6
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    #@8
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@a
    const/4 v1, 0x0

    #@b
    aget-object v4, v0, v1

    #@d
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    #@f
    .line 720
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    #@11
    const/4 v1, 0x0

    #@12
    aget-object v6, v0, v1

    #@14
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    #@16
    const/4 v1, 0x0

    #@17
    aget-object v7, v0, v1

    #@19
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@1b
    const/4 v1, 0x0

    #@1c
    aget-object v8, v0, v1

    #@1e
    .line 721
    if-eqz p3, :cond_0

    #@20
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@22
    if-eqz v0, :cond_2

    #@24
    :cond_0
    const/4 v10, 0x0

    #@25
    :goto_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@27
    const/4 v1, 0x0

    #@28
    aget v11, v0, v1

    #@2a
    move-object v0, p0

    #@2b
    move-object v1, p1

    #@2c
    move v9, p2

    #@2d
    move/from16 v12, p3

    #@2f
    .line 719
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    #@32
    .line 724
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@34
    if-eqz v0, :cond_1

    #@36
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    #@38
    if-eqz v0, :cond_1

    #@3a
    .line 725
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@3c
    const/4 v1, 0x2

    #@3d
    aget v0, v0, v1

    #@3f
    int-to-float v2, v0

    #@40
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    #@42
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@44
    const/4 v1, 0x2

    #@45
    aget-object v4, v0, v1

    #@47
    .line 726
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    #@49
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    #@4b
    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    #@4d
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@4f
    const/4 v1, 0x0

    #@50
    aget-object v8, v0, v1

    #@52
    .line 727
    if-eqz p3, :cond_3

    #@54
    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@56
    :goto_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@58
    const/4 v1, 0x0

    #@59
    aget v11, v0, v1

    #@5b
    move-object v0, p0

    #@5c
    move-object v1, p1

    #@5d
    move v9, p2

    #@5e
    move/from16 v12, p3

    #@60
    .line 725
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    #@63
    .line 717
    :cond_1
    return-void

    #@64
    .line 721
    :cond_2
    const/4 v10, 0x1

    #@65
    goto :goto_0

    #@66
    .line 727
    :cond_3
    const/4 v10, 0x0

    #@67
    goto :goto_1
.end method

.method private drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 732
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    #@4
    const/high16 v2, 0x437f0000    # 255.0f

    #@6
    mul-float/2addr v1, v2

    #@7
    mul-float/2addr v1, p3

    #@8
    const/high16 v2, 0x3f000000    # 0.5f

    #@a
    add-float/2addr v1, v2

    #@b
    float-to-int v0, v1

    #@c
    .line 733
    .local v0, "minutesAlpha":I
    if-lez v0, :cond_0

    #@e
    .line 736
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    #@11
    .line 737
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@13
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    #@16
    .line 738
    invoke-direct {p0, p1, v0, v3}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    #@19
    .line 739
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@1c
    .line 743
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    #@1f
    .line 744
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@21
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    #@24
    .line 745
    const/4 v1, 0x1

    #@25
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    #@28
    .line 746
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@2b
    .line 731
    :cond_0
    return-void
.end method

.method private drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "minutesAlpha"    # I
    .param p3, "showActivated"    # Z

    #@0
    .prologue
    .line 751
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    #@2
    const/4 v1, 0x1

    #@3
    aget v0, v0, v1

    #@5
    int-to-float v2, v0

    #@6
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    #@8
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@a
    const/4 v1, 0x1

    #@b
    aget-object v4, v0, v1

    #@d
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    #@f
    .line 752
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    #@11
    const/4 v1, 0x1

    #@12
    aget-object v6, v0, v1

    #@14
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    #@16
    const/4 v1, 0x1

    #@17
    aget-object v7, v0, v1

    #@19
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    #@1b
    const/4 v1, 0x1

    #@1c
    aget-object v8, v0, v1

    #@1e
    .line 753
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@20
    const/4 v1, 0x1

    #@21
    aget v11, v0, v1

    #@23
    move-object v0, p0

    #@24
    move-object v1, p1

    #@25
    move v9, p2

    #@26
    move/from16 v10, p3

    #@28
    move/from16 v12, p3

    #@2a
    .line 751
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    #@2d
    .line 750
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 767
    move-object/from16 v0, p0

    #@2
    iget-boolean v4, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@4
    if-eqz v4, :cond_2

    #@6
    const/16 v18, 0x2

    #@8
    .line 768
    .local v18, "hoursIndex":I
    :goto_0
    move-object/from16 v0, p0

    #@a
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@c
    aget v19, v4, v18

    #@e
    .line 769
    .local v19, "hoursInset":I
    move-object/from16 v0, p0

    #@10
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@12
    rem-int/lit8 v5, v18, 0x2

    #@14
    aget v16, v4, v5

    #@16
    .line 770
    .local v16, "hoursAngleDeg":I
    move-object/from16 v0, p0

    #@18
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@1a
    rem-int/lit8 v5, v18, 0x2

    #@1c
    aget v4, v4, v5

    #@1e
    rem-int/lit8 v4, v4, 0x1e

    #@20
    if-eqz v4, :cond_3

    #@22
    const/4 v4, 0x1

    #@23
    :goto_1
    int-to-float v0, v4

    #@24
    move/from16 v17, v0

    #@26
    .line 772
    .local v17, "hoursDotScale":F
    const/16 v23, 0x1

    #@28
    .line 773
    .local v23, "minutesIndex":I
    move-object/from16 v0, p0

    #@2a
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    #@2c
    const/4 v5, 0x1

    #@2d
    aget v24, v4, v5

    #@2f
    .line 774
    .local v24, "minutesInset":I
    move-object/from16 v0, p0

    #@31
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@33
    const/4 v5, 0x1

    #@34
    aget v21, v4, v5

    #@36
    .line 775
    .local v21, "minutesAngleDeg":I
    move-object/from16 v0, p0

    #@38
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@3a
    const/4 v5, 0x1

    #@3b
    aget v4, v4, v5

    #@3d
    rem-int/lit8 v4, v4, 0x1e

    #@3f
    if-eqz v4, :cond_4

    #@41
    const/4 v4, 0x1

    #@42
    :goto_2
    int-to-float v0, v4

    #@43
    move/from16 v22, v0

    #@45
    .line 778
    .local v22, "minutesDotScale":F
    move-object/from16 v0, p0

    #@47
    iget v0, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@49
    move/from16 v31, v0

    #@4b
    .line 780
    .local v31, "selRadius":I
    move-object/from16 v0, p0

    #@4d
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    #@4f
    int-to-float v4, v4

    #@50
    move/from16 v0, v19

    #@52
    int-to-float v5, v0

    #@53
    move/from16 v0, v24

    #@55
    int-to-float v6, v0

    #@56
    move-object/from16 v0, p0

    #@58
    iget v0, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    #@5a
    move/from16 v34, v0

    #@5c
    move/from16 v0, v34

    #@5e
    invoke-static {v5, v6, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    #@61
    move-result v5

    #@62
    sub-float v30, v4, v5

    #@64
    .line 782
    .local v30, "selLength":F
    move/from16 v0, v16

    #@66
    int-to-float v4, v0

    #@67
    move/from16 v0, v21

    #@69
    int-to-float v5, v0

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget v6, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    #@6e
    invoke-static {v4, v5, v6}, Landroid/util/MathUtils;->lerpDeg(FFF)F

    #@71
    move-result v4

    #@72
    float-to-double v4, v4

    #@73
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    #@76
    move-result-wide v26

    #@77
    .line 783
    .local v26, "selAngleRad":D
    move-object/from16 v0, p0

    #@79
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@7b
    int-to-float v4, v4

    #@7c
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    #@7f
    move-result-wide v34

    #@80
    move-wide/from16 v0, v34

    #@82
    double-to-float v5, v0

    #@83
    mul-float v5, v5, v30

    #@85
    add-float v28, v4, v5

    #@87
    .line 784
    .local v28, "selCenterX":F
    move-object/from16 v0, p0

    #@89
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@8b
    int-to-float v4, v4

    #@8c
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    #@8f
    move-result-wide v34

    #@90
    move-wide/from16 v0, v34

    #@92
    double-to-float v5, v0

    #@93
    mul-float v5, v5, v30

    #@95
    sub-float v29, v4, v5

    #@97
    .line 787
    .local v29, "selCenterY":F
    move-object/from16 v0, p0

    #@99
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@9b
    const/4 v5, 0x0

    #@9c
    aget-object v25, v4, v5

    #@9e
    .line 788
    .local v25, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    #@a0
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    #@a2
    move-object/from16 v0, v25

    #@a4
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@a7
    .line 789
    move/from16 v0, v31

    #@a9
    int-to-float v4, v0

    #@aa
    move-object/from16 v0, p1

    #@ac
    move/from16 v1, v28

    #@ae
    move/from16 v2, v29

    #@b0
    move-object/from16 v3, v25

    #@b2
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@b5
    .line 792
    if-eqz p2, :cond_0

    #@b7
    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    #@ba
    .line 794
    move/from16 v0, v31

    #@bc
    int-to-float v4, v0

    #@bd
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    #@bf
    move-object/from16 v0, p2

    #@c1
    move/from16 v1, v28

    #@c3
    move/from16 v2, v29

    #@c5
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    #@c8
    .line 798
    :cond_0
    move-object/from16 v0, p0

    #@ca
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    #@cc
    move/from16 v0, v17

    #@ce
    move/from16 v1, v22

    #@d0
    invoke-static {v0, v1, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    #@d3
    move-result v15

    #@d4
    .line 799
    .local v15, "dotScale":F
    const/4 v4, 0x0

    #@d5
    cmpl-float v4, v15, v4

    #@d7
    if-lez v4, :cond_1

    #@d9
    .line 800
    move-object/from16 v0, p0

    #@db
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@dd
    const/4 v5, 0x1

    #@de
    aget-object v14, v4, v5

    #@e0
    .line 801
    .local v14, "dotPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    #@e2
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    #@e4
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@e7
    .line 802
    move-object/from16 v0, p0

    #@e9
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    #@eb
    int-to-float v4, v4

    #@ec
    mul-float/2addr v4, v15

    #@ed
    move-object/from16 v0, p1

    #@ef
    move/from16 v1, v28

    #@f1
    move/from16 v2, v29

    #@f3
    invoke-virtual {v0, v1, v2, v4, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@f6
    .line 807
    .end local v14    # "dotPaint":Landroid/graphics/Paint;
    :cond_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    #@f9
    move-result-wide v32

    #@fa
    .line 808
    .local v32, "sin":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    #@fd
    move-result-wide v12

    #@fe
    .line 809
    .local v12, "cos":D
    move/from16 v0, v31

    #@100
    int-to-float v4, v0

    #@101
    sub-float v20, v30, v4

    #@103
    .line 810
    .local v20, "lineLength":F
    move-object/from16 v0, p0

    #@105
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@107
    move-object/from16 v0, p0

    #@109
    iget v5, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    #@10b
    int-to-double v0, v5

    #@10c
    move-wide/from16 v34, v0

    #@10e
    mul-double v34, v34, v32

    #@110
    move-wide/from16 v0, v34

    #@112
    double-to-int v5, v0

    #@113
    add-int v10, v4, v5

    #@115
    .line 811
    .local v10, "centerX":I
    move-object/from16 v0, p0

    #@117
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@119
    move-object/from16 v0, p0

    #@11b
    iget v5, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    #@11d
    int-to-double v0, v5

    #@11e
    move-wide/from16 v34, v0

    #@120
    mul-double v34, v34, v12

    #@122
    move-wide/from16 v0, v34

    #@124
    double-to-int v5, v0

    #@125
    sub-int v11, v4, v5

    #@127
    .line 812
    .local v11, "centerY":I
    move/from16 v0, v20

    #@129
    float-to-double v4, v0

    #@12a
    mul-double v4, v4, v32

    #@12c
    double-to-int v4, v4

    #@12d
    add-int/2addr v4, v10

    #@12e
    int-to-float v7, v4

    #@12f
    .line 813
    .local v7, "linePointX":F
    move/from16 v0, v20

    #@131
    float-to-double v4, v0

    #@132
    mul-double/2addr v4, v12

    #@133
    double-to-int v4, v4

    #@134
    sub-int v4, v11, v4

    #@136
    int-to-float v8, v4

    #@137
    .line 816
    .local v8, "linePointY":F
    move-object/from16 v0, p0

    #@139
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    #@13b
    const/4 v5, 0x2

    #@13c
    aget-object v9, v4, v5

    #@13e
    .line 817
    .local v9, "linePaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    #@140
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    #@142
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@145
    .line 818
    move-object/from16 v0, p0

    #@147
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    #@149
    int-to-float v4, v4

    #@14a
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@14d
    .line 819
    move-object/from16 v0, p0

    #@14f
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@151
    int-to-float v5, v4

    #@152
    move-object/from16 v0, p0

    #@154
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@156
    int-to-float v6, v4

    #@157
    move-object/from16 v4, p1

    #@159
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@15c
    .line 765
    return-void

    #@15d
    .line 767
    .end local v7    # "linePointX":F
    .end local v8    # "linePointY":F
    .end local v9    # "linePaint":Landroid/graphics/Paint;
    .end local v10    # "centerX":I
    .end local v11    # "centerY":I
    .end local v12    # "cos":D
    .end local v15    # "dotScale":F
    .end local v16    # "hoursAngleDeg":I
    .end local v17    # "hoursDotScale":F
    .end local v18    # "hoursIndex":I
    .end local v19    # "hoursInset":I
    .end local v20    # "lineLength":F
    .end local v21    # "minutesAngleDeg":I
    .end local v22    # "minutesDotScale":F
    .end local v23    # "minutesIndex":I
    .end local v24    # "minutesInset":I
    .end local v25    # "paint":Landroid/graphics/Paint;
    .end local v26    # "selAngleRad":D
    .end local v28    # "selCenterX":F
    .end local v29    # "selCenterY":F
    .end local v30    # "selLength":F
    .end local v31    # "selRadius":I
    .end local v32    # "sin":D
    :cond_2
    const/16 v18, 0x0

    #@15f
    .restart local v18    # "hoursIndex":I
    goto/16 :goto_0

    #@161
    .line 770
    .restart local v16    # "hoursAngleDeg":I
    .restart local v19    # "hoursInset":I
    :cond_3
    const/4 v4, 0x0

    #@162
    goto/16 :goto_1

    #@164
    .line 775
    .restart local v17    # "hoursDotScale":F
    .restart local v21    # "minutesAngleDeg":I
    .restart local v23    # "minutesIndex":I
    .restart local v24    # "minutesInset":I
    :cond_4
    const/4 v4, 0x0

    #@165
    goto/16 :goto_2
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
    .line 870
    move-object/from16 v0, p8

    #@2
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    #@5
    .line 871
    move-object/from16 v0, p8

    #@7
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@a
    .line 874
    move/from16 v0, p11

    #@c
    int-to-float v9, v0

    #@d
    const/high16 v10, 0x41f00000    # 30.0f

    #@f
    div-float v5, v9, v10

    #@11
    .line 875
    .local v5, "activatedIndex":F
    float-to-int v4, v5

    #@12
    .line 876
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
    .line 878
    .local v3, "activatedCeil":I
    const/4 v7, 0x0

    #@1b
    .local v7, "i":I
    :goto_0
    const/16 v9, 0xc

    #@1d
    if-ge v7, v9, :cond_5

    #@1f
    .line 879
    if-eq v4, v7, :cond_0

    #@21
    if-ne v3, v7, :cond_3

    #@23
    :cond_0
    const/4 v2, 0x1

    #@24
    .line 880
    .local v2, "activated":Z
    :goto_1
    if-eqz p12, :cond_1

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 885
    :cond_1
    if-eqz p10, :cond_4

    #@2a
    if-eqz v2, :cond_4

    #@2c
    const/16 v9, 0x20

    #@2e
    .line 884
    :goto_2
    or-int/lit8 v8, v9, 0x8

    #@30
    .line 886
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
    .line 887
    .local v6, "color":I
    move-object/from16 v0, p8

    #@3d
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    #@40
    .line 888
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
    .line 890
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
    .line 878
    .end local v6    # "color":I
    .end local v8    # "stateMask":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@58
    goto :goto_0

    #@59
    .line 879
    .end local v2    # "activated":Z
    :cond_3
    const/4 v2, 0x0

    #@5a
    .restart local v2    # "activated":Z
    goto :goto_1

    #@5b
    .line 885
    :cond_4
    const/4 v9, 0x0

    #@5c
    goto :goto_2

    #@5d
    .line 869
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
    .line 522
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 523
    if-lt p1, v1, :cond_0

    #@8
    .line 524
    add-int/lit8 p1, p1, -0xc

    #@a
    .line 529
    :cond_0
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    #@c
    return v0

    #@d
    .line 526
    :cond_1
    if-ne p1, v1, :cond_0

    #@f
    .line 527
    const/4 p1, 0x0

    #@10
    goto :goto_0
.end method

.method private getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 563
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
    .line 898
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
    .line 899
    move-object/from16 v0, p0

    #@e
    iget v11, v0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    #@10
    .line 900
    .local v11, "innerBound":I
    move-object/from16 v0, p0

    #@12
    iget v12, v0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    #@14
    .line 908
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
    .line 909
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
    .line 910
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
    .line 911
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
    .line 912
    :cond_0
    const/4 v13, -0x1

    #@3b
    return v13

    #@3c
    .line 902
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
    .line 903
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
    .line 904
    .local v2, "center":I
    move-object/from16 v0, p0

    #@51
    iget v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    #@53
    sub-int v11, v2, v13

    #@55
    .line 905
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
    .line 902
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
    .line 916
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
    .line 917
    .local v3, "degrees":I
    if-gez v3, :cond_4

    #@74
    .line 918
    add-int/lit16 v13, v3, 0x168

    #@76
    return v13

    #@77
    .line 920
    :cond_4
    return v3
.end method

.method private getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    #@0
    .prologue
    .line 500
    div-int/lit8 v1, p1, 0x1e

    #@2
    rem-int/lit8 v0, v1, 0xc

    #@4
    .line 501
    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@6
    if-eqz v1, :cond_2

    #@8
    .line 504
    if-nez p2, :cond_1

    #@a
    if-nez v0, :cond_1

    #@c
    .line 506
    const/16 v0, 0xc

    #@e
    .line 514
    :cond_0
    :goto_0
    return v0

    #@f
    .line 507
    :cond_1
    if-eqz p2, :cond_0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 509
    add-int/lit8 v0, v0, 0xc

    #@15
    goto :goto_0

    #@16
    .line 511
    :cond_2
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@18
    const/4 v2, 0x1

    #@19
    if-ne v1, v2, :cond_0

    #@1b
    .line 512
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
    .line 536
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
    .line 925
    iget-boolean v7, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@3
    if-eqz v7, :cond_1

    #@5
    iget-boolean v7, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@7
    if-eqz v7, :cond_1

    #@9
    .line 926
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@b
    int-to-float v7, v7

    #@c
    sub-float v7, p1, v7

    #@e
    float-to-double v0, v7

    #@f
    .line 927
    .local v0, "dX":D
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@11
    int-to-float v7, v7

    #@12
    sub-float v7, p2, v7

    #@14
    float-to-double v2, v7

    #@15
    .line 928
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
    .line 929
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
    .line 931
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
    .line 559
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
    .line 762
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
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 971
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    #@5
    move-result v1

    #@6
    .line 972
    .local v1, "isOnInnerCircle":Z
    invoke-direct {p0, p1, p2, v7}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    #@9
    move-result v0

    #@a
    .line 973
    .local v0, "degrees":I
    const/4 v6, -0x1

    #@b
    if-ne v0, v6, :cond_0

    #@d
    .line 974
    return v7

    #@e
    .line 978
    :cond_0
    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@10
    const-wide/16 v8, 0x3c

    #@12
    invoke-direct {p0, v6, v8, v9}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    #@15
    .line 984
    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@17
    if-eqz v6, :cond_7

    #@19
    .line 985
    invoke-static {v0, v7}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    #@1c
    move-result v6

    #@1d
    rem-int/lit16 v3, v6, 0x168

    #@1f
    .line 986
    .local v3, "snapDegrees":I
    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@21
    if-ne v6, v1, :cond_5

    #@23
    .line 987
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@25
    aget v6, v6, v7

    #@27
    if-eq v6, v3, :cond_6

    #@29
    const/4 v5, 0x1

    #@2a
    .line 988
    .local v5, "valueChanged":Z
    :goto_0
    iput-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@2c
    .line 989
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@2e
    aput v3, v6, v7

    #@30
    .line 990
    const/4 v4, 0x0

    #@31
    .line 991
    .local v4, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    #@34
    move-result v2

    #@35
    .line 1000
    .local v2, "newValue":I
    :goto_1
    if-nez v5, :cond_1

    #@37
    if-nez p3, :cond_1

    #@39
    if-eqz p4, :cond_9

    #@3b
    .line 1002
    :cond_1
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 1003
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@41
    invoke-interface {v6, v4, v2, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    #@44
    .line 1007
    :cond_2
    if-nez v5, :cond_3

    #@46
    if-eqz p3, :cond_4

    #@48
    .line 1008
    :cond_3
    const/4 v6, 0x4

    #@49
    invoke-virtual {p0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    #@4c
    .line 1009
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@4f
    .line 1011
    :cond_4
    return v10

    #@50
    .line 986
    .end local v2    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_5
    const/4 v5, 0x1

    #@51
    .restart local v5    # "valueChanged":Z
    goto :goto_0

    #@52
    .line 987
    .end local v5    # "valueChanged":Z
    :cond_6
    const/4 v5, 0x0

    #@53
    .restart local v5    # "valueChanged":Z
    goto :goto_0

    #@54
    .line 993
    .end local v3    # "snapDegrees":I
    .end local v5    # "valueChanged":Z
    :cond_7
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    #@57
    move-result v6

    #@58
    rem-int/lit16 v3, v6, 0x168

    #@5a
    .line 994
    .restart local v3    # "snapDegrees":I
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@5c
    aget v6, v6, v10

    #@5e
    if-eq v6, v3, :cond_8

    #@60
    const/4 v5, 0x1

    #@61
    .line 995
    .restart local v5    # "valueChanged":Z
    :goto_2
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@63
    aput v3, v6, v10

    #@65
    .line 996
    const/4 v4, 0x1

    #@66
    .line 997
    .restart local v4    # "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    #@69
    move-result v2

    #@6a
    .restart local v2    # "newValue":I
    goto :goto_1

    #@6b
    .line 994
    .end local v2    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_8
    const/4 v5, 0x0

    #@6c
    .restart local v5    # "valueChanged":Z
    goto :goto_2

    #@6d
    .line 1014
    .restart local v2    # "newValue":I
    .restart local v4    # "type":I
    :cond_9
    return v7
.end method

.method private initData()V
    .locals 1

    #@0
    .prologue
    .line 608
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 609
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    #@6
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    #@8
    .line 610
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    #@a
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    #@c
    .line 616
    :goto_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    #@e
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    #@10
    .line 607
    return-void

    #@11
    .line 612
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    #@15
    .line 613
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    #@17
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    #@19
    goto :goto_0
.end method

.method private initHoursAndMinutesText()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 599
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 600
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
    .line 601
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
    .line 602
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
    .line 603
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
    .line 599
    add-int/lit8 v0, v0, 0x1

    #@65
    goto :goto_0

    #@66
    .line 597
    :cond_0
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    #@0
    .prologue
    .line 216
    const/4 v3, 0x0

    #@1
    .line 218
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    #@2
    .line 222
    .local v0, "count":I
    const/16 v2, 0x8

    #@4
    .line 224
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    #@5
    .local v1, "degrees":I
    :goto_0
    const/16 v4, 0x169

    #@7
    if-ge v1, v4, :cond_3

    #@9
    .line 226
    sget-object v4, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    #@b
    aput v3, v4, v1

    #@d
    .line 229
    if-ne v0, v2, :cond_2

    #@f
    .line 230
    add-int/lit8 v3, v3, 0x6

    #@11
    .line 231
    const/16 v4, 0x168

    #@13
    if-ne v3, v4, :cond_0

    #@15
    .line 232
    const/4 v2, 0x7

    #@16
    .line 238
    :goto_1
    const/4 v0, 0x1

    #@17
    .line 224
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 233
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 234
    const/16 v2, 0xe

    #@20
    goto :goto_1

    #@21
    .line 236
    :cond_1
    const/4 v2, 0x4

    #@22
    goto :goto_1

    #@23
    .line 240
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_2

    #@26
    .line 200
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
    .line 469
    rem-int/lit8 v3, p1, 0xc

    #@3
    mul-int/lit8 v1, v3, 0x1e

    #@5
    .line 470
    .local v1, "degrees":I
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@7
    aput v1, v3, v5

    #@9
    .line 473
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
    .line 474
    .local v0, "amOrPm":I
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    #@15
    move-result v2

    #@16
    .line 475
    .local v2, "isOnInnerCircle":Z
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@18
    if-ne v3, v0, :cond_1

    #@1a
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@1c
    if-eq v3, v2, :cond_2

    #@1e
    .line 476
    :cond_1
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@20
    .line 477
    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    #@22
    .line 479
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    #@25
    .line 480
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@27
    invoke-virtual {v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    #@2a
    .line 483
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@2d
    .line 485
    if-eqz p2, :cond_3

    #@2f
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 486
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@35
    invoke-interface {v3, v5, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    #@38
    .line 468
    :cond_3
    return-void

    #@39
    .line 473
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
    .line 544
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    #@3
    rem-int/lit8 v1, p1, 0x3c

    #@5
    mul-int/lit8 v1, v1, 0x6

    #@7
    aput v1, v0, v2

    #@9
    .line 546
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@c
    .line 548
    if-eqz p2, :cond_0

    #@e
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 549
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    #@18
    .line 543
    :cond_0
    return-void
.end method

.method private showPicker(ZZ)V
    .locals 2
    .param p1, "hours"    # Z
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 653
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@3
    if-ne v0, p1, :cond_0

    #@5
    .line 654
    return-void

    #@6
    .line 657
    :cond_0
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    #@8
    .line 659
    if-eqz p2, :cond_1

    #@a
    .line 660
    const-wide/16 v0, 0x1f4

    #@c
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    #@f
    .line 670
    :goto_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    #@12
    .line 671
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@15
    .line 672
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@17
    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    #@1a
    .line 652
    return-void

    #@1b
    .line 663
    :cond_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@1d
    if-eqz v0, :cond_2

    #@1f
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 664
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@2c
    .line 665
    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    #@2e
    .line 667
    :cond_2
    if-eqz p1, :cond_3

    #@30
    const/4 v0, 0x0

    #@31
    :goto_1
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    #@33
    goto :goto_0

    #@34
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    #@36
    goto :goto_1
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    #@0
    .prologue
    .line 269
    const/16 v2, 0x1e

    #@2
    .line 270
    .local v2, "stepSize":I
    div-int/lit8 v3, p0, 0x1e

    #@4
    mul-int/lit8 v1, v3, 0x1e

    #@6
    .line 271
    .local v1, "floor":I
    add-int/lit8 v0, v1, 0x1e

    #@8
    .line 272
    .local v0, "ceiling":I
    const/4 v3, 0x1

    #@9
    if-ne p1, v3, :cond_0

    #@b
    .line 273
    move p0, v0

    #@c
    .line 286
    :goto_0
    return p0

    #@d
    .line 274
    :cond_0
    const/4 v3, -0x1

    #@e
    if-ne p1, v3, :cond_2

    #@10
    .line 275
    if-ne p0, v1, :cond_1

    #@12
    .line 276
    add-int/lit8 v1, v1, -0x1e

    #@14
    .line 278
    :cond_1
    move p0, v1

    #@15
    goto :goto_0

    #@16
    .line 280
    :cond_2
    sub-int v3, p0, v1

    #@18
    sub-int v4, v0, p0

    #@1a
    if-ge v3, v4, :cond_3

    #@1c
    .line 281
    move p0, v1

    #@1d
    goto :goto_0

    #@1e
    .line 283
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
    .line 253
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 254
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 256
    :cond_0
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    #@8
    aget v0, v0, p0

    #@a
    return v0
.end method


# virtual methods
.method applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    #@0
    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    .line 380
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@7
    move-result-object v8

    #@8
    .line 381
    sget-object v9, Lcom/android/internal/R$styleable;->TimePicker:[I

    #@a
    .line 380
    invoke-virtual {v8, p1, v9, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@d
    move-result-object v0

    #@e
    .line 384
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x3

    #@f
    .line 383
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@12
    move-result-object v3

    #@13
    .line 386
    .local v3, "numbersTextColor":Landroid/content/res/ColorStateList;
    const/16 v8, 0x9

    #@15
    .line 385
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@18
    move-result-object v2

    #@19
    .line 387
    .local v2, "numbersInnerTextColor":Landroid/content/res/ColorStateList;
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 388
    const v9, -0xff01

    #@20
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@23
    move-result-object v3

    #@24
    .line 387
    .end local v3    # "numbersTextColor":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v9, 0x0

    #@25
    aput-object v3, v8, v9

    #@27
    .line 389
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@29
    if-nez v2, :cond_1

    #@2b
    .line 390
    const v9, -0xff01

    #@2e
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@31
    move-result-object v2

    #@32
    .line 389
    .end local v2    # "numbersInnerTextColor":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v9, 0x2

    #@33
    aput-object v2, v8, v9

    #@35
    .line 391
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@37
    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@39
    const/4 v10, 0x0

    #@3a
    aget-object v9, v9, v10

    #@3c
    const/4 v10, 0x1

    #@3d
    aput-object v9, v8, v10

    #@3f
    .line 395
    const/4 v8, 0x5

    #@40
    .line 394
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@43
    move-result-object v5

    #@44
    .line 397
    .local v5, "selectorColors":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_2

    #@46
    .line 399
    const/16 v8, 0x28

    #@48
    .line 398
    invoke-static {v8}, Landroid/util/StateSet;->get(I)[I

    #@4b
    move-result-object v7

    #@4c
    .line 401
    .local v7, "stateSetEnabledActivated":[I
    const/4 v8, 0x0

    #@4d
    .line 400
    invoke-virtual {v5, v7, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@50
    move-result v4

    #@51
    .line 406
    .end local v7    # "stateSetEnabledActivated":[I
    .local v4, "selectorActivatedColor":I
    :goto_0
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    #@53
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@56
    .line 409
    const/16 v8, 0x28

    #@58
    .line 408
    invoke-static {v8}, Landroid/util/StateSet;->get(I)[I

    #@5b
    move-result-object v6

    #@5c
    .line 411
    .local v6, "stateSetActivated":[I
    iput v4, p0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    #@5e
    .line 412
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    #@60
    const/4 v9, 0x0

    #@61
    aget-object v8, v8, v9

    #@63
    const/4 v9, 0x0

    #@64
    invoke-virtual {v8, v6, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@67
    move-result v8

    #@68
    iput v8, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    #@6a
    .line 414
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    #@6c
    .line 415
    const v9, 0x10600df

    #@6f
    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    #@72
    move-result v9

    #@73
    .line 414
    const/4 v10, 0x4

    #@74
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    #@77
    move-result v9

    #@78
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    #@7b
    .line 417
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@7e
    .line 378
    return-void

    #@7f
    .line 403
    .end local v4    # "selectorActivatedColor":I
    .end local v6    # "stateSetActivated":[I
    :cond_2
    const v4, -0xff01

    #@82
    .restart local v4    # "selectorActivatedColor":I
    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1020
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1021
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1023
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
    .line 586
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@2
    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    #@0
    .prologue
    .line 496
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
    .line 444
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
    .line 555
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
    .line 421
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@3
    if-eq v0, p3, :cond_0

    #@5
    .line 422
    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@7
    .line 423
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    #@a
    .line 426
    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    #@d
    .line 427
    invoke-direct {p0, p2, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    #@10
    .line 420
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 641
    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const/high16 v0, 0x3f800000    # 1.0f

    #@6
    .line 643
    .local v0, "alphaMod":F
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    #@9
    .line 645
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    #@b
    .line 646
    .local v1, "selectorPath":Landroid/graphics/Path;
    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    #@e
    .line 647
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    #@11
    .line 648
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    #@14
    .line 649
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    #@17
    .line 640
    return-void

    #@18
    .line 641
    .end local v0    # "alphaMod":F
    .end local v1    # "selectorPath":Landroid/graphics/Path;
    :cond_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    #@1a
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
    .line 621
    if-nez p1, :cond_0

    #@4
    .line 622
    return-void

    #@5
    .line 625
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@8
    move-result v0

    #@9
    div-int/lit8 v0, v0, 0x2

    #@b
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    #@d
    .line 626
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@10
    move-result v0

    #@11
    div-int/lit8 v0, v0, 0x2

    #@13
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    #@15
    .line 627
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
    .line 629
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
    .line 630
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
    .line 631
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
    .line 633
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    #@4a
    .line 634
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    #@4d
    .line 636
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@4f
    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    #@52
    .line 620
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
    .line 938
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    #@4
    if-nez v3, :cond_0

    #@6
    .line 939
    return v6

    #@7
    .line 942
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a
    move-result v0

    #@b
    .line 943
    .local v0, "action":I
    const/4 v3, 0x2

    #@c
    if-eq v0, v3, :cond_1

    #@e
    .line 944
    if-ne v0, v6, :cond_4

    #@10
    .line 946
    :cond_1
    :goto_0
    const/4 v2, 0x0

    #@11
    .line 947
    .local v2, "forceSelection":Z
    const/4 v1, 0x0

    #@12
    .line 949
    .local v1, "autoAdvance":Z
    if-nez v0, :cond_5

    #@14
    .line 951
    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    #@16
    .line 962
    :cond_2
    :goto_1
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    #@18
    .line 963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1b
    move-result v4

    #@1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1f
    move-result v5

    #@20
    .line 962
    invoke-direct {p0, v4, v5, v2, v1}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    #@23
    move-result v4

    #@24
    or-int/2addr v3, v4

    #@25
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    #@27
    .line 966
    .end local v1    # "autoAdvance":Z
    .end local v2    # "forceSelection":Z
    :cond_3
    return v6

    #@28
    .line 945
    :cond_4
    if-nez v0, :cond_3

    #@2a
    goto :goto_0

    #@2b
    .line 952
    .restart local v1    # "autoAdvance":Z
    .restart local v2    # "forceSelection":Z
    :cond_5
    if-ne v0, v6, :cond_2

    #@2d
    .line 953
    const/4 v1, 0x1

    #@2e
    .line 957
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    #@30
    if-nez v3, :cond_2

    #@32
    .line 958
    const/4 v2, 0x1

    #@33
    goto :goto_1
.end method

.method public setAmOrPm(I)Z
    .locals 1
    .param p1, "amOrPm"    # I

    #@0
    .prologue
    .line 575
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 576
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 579
    :cond_1
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    #@c
    .line 580
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@f
    .line 581
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    #@11
    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    #@14
    .line 582
    const/4 v0, 0x1

    #@15
    return v0
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    #@0
    .prologue
    .line 457
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    #@5
    .line 456
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 431
    packed-switch p1, :pswitch_data_0

    #@3
    .line 439
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
    .line 430
    :goto_0
    return-void

    #@1e
    .line 433
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    #@21
    goto :goto_0

    #@22
    .line 436
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    #@25
    goto :goto_0

    #@26
    .line 431
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
    .line 540
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    #@4
    .line 539
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    #@0
    .prologue
    .line 1027
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    #@2
    .line 1028
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@5
    .line 1026
    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@0
    .prologue
    .line 448
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@2
    .line 447
    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 590
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    #@4
    .line 589
    return-void
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 594
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    #@4
    .line 593
    return-void
.end method
