.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;,
        Landroid/widget/RadialTimePickerView$PickerType;
    }
.end annotation


# static fields
.field private static final greylist-max-o AM:I = 0x0

.field private static final greylist-max-o ANIM_DURATION_NORMAL:I = 0x1f4

.field private static final greylist-max-o ANIM_DURATION_TOUCH:I = 0x3c

.field private static final greylist-max-o COS_30:[F

.field private static final greylist-max-o DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final greylist-max-o DEGREES_FOR_ONE_MINUTE:I = 0x6

.field public static final greylist-max-o HOURS:I = 0x0

.field private static final greylist-max-o HOURS_INNER:I = 0x2

.field private static final greylist-max-o HOURS_IN_CIRCLE:I = 0xc

.field private static final greylist-max-o HOURS_NUMBERS:[I

.field private static final greylist-max-o HOURS_NUMBERS_24:[I

.field public static final greylist-max-o MINUTES:I = 0x1

.field private static final greylist-max-o MINUTES_IN_CIRCLE:I = 0x3c

.field private static final greylist-max-o MINUTES_NUMBERS:[I

.field private static final greylist-max-o MISSING_COLOR:I = -0xff01

.field private static final greylist-max-o NUM_POSITIONS:I = 0xc

.field private static final greylist-max-o PM:I = 0x1

.field private static final greylist-max-o SELECTOR_CIRCLE:I = 0x0

.field private static final greylist-max-o SELECTOR_DOT:I = 0x1

.field private static final greylist-max-o SELECTOR_LINE:I = 0x2

.field private static final greylist-max-o SIN_30:[F

.field private static final greylist-max-o SNAP_PREFER_30S_MAP:[I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final greylist-max-o HOURS_TO_MINUTES:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/RadialTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAmOrPm:I

.field private greylist-max-o mCenterDotRadius:I

.field greylist-max-o mChangedDuringTouch:Z

.field private greylist-max-o mCircleRadius:I

.field private greylist-max-o mDisabledAlpha:F

.field private greylist-max-o mHalfwayDist:I

.field private final greylist-max-o mHours12Texts:[Ljava/lang/String;

.field private greylist-max-o mHoursToMinutes:F

.field private greylist-max-o mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final greylist-max-o mInnerHours24Texts:[Ljava/lang/String;

.field private greylist-max-o mInnerTextHours:[Ljava/lang/String;

.field private final greylist-max-o mInnerTextX:[F

.field private final greylist-max-o mInnerTextY:[F

.field private greylist-max-o mInputEnabled:Z

.field private greylist-max-o mIs24HourMode:Z

.field private greylist-max-o mIsOnInnerCircle:Z

.field private greylist-max-o mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private greylist-max-o mMaxDistForOuterNumber:I

.field private greylist-max-o mMinDistForInnerNumber:I

.field private greylist-max-o mMinutesText:[Ljava/lang/String;

.field private final greylist-max-o mMinutesTexts:[Ljava/lang/String;

.field private final greylist-max-o mOuterHours24Texts:[Ljava/lang/String;

.field private greylist-max-o mOuterTextHours:[Ljava/lang/String;

.field private final greylist-max-o mOuterTextX:[[F

.field private final greylist-max-o mOuterTextY:[[F

.field private final greylist-max-o mPaint:[Landroid/graphics/Paint;

.field private final greylist-max-o mPaintBackground:Landroid/graphics/Paint;

.field private final greylist-max-o mPaintCenter:Landroid/graphics/Paint;

.field private final greylist-max-o mPaintSelector:[Landroid/graphics/Paint;

.field private final greylist-max-o mSelectionDegrees:[I

.field private greylist-max-o mSelectorColor:I

.field private greylist-max-o mSelectorDotColor:I

.field private greylist-max-o mSelectorDotRadius:I

.field private final greylist-max-o mSelectorPath:Landroid/graphics/Path;

.field private greylist-max-o mSelectorRadius:I

.field private greylist-max-o mSelectorStroke:I

.field private greylist-max-o mShowHours:Z

.field private final greylist-max-o mTextColor:[Landroid/content/res/ColorStateList;

.field private final greylist-max-o mTextInset:[I

.field private final greylist-max-o mTextSize:[I

.field private final greylist-max-o mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private final greylist-max-o mTypeface:Landroid/graphics/Typeface;

.field private greylist-max-o mXCenter:I

.field private greylist-max-o mYCenter:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAmOrPm(Landroid/widget/RadialTimePickerView;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHoursToMinutes(Landroid/widget/RadialTimePickerView;)F
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXCenter(Landroid/widget/RadialTimePickerView;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYCenter(Landroid/widget/RadialTimePickerView;)I
    .registers 1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHoursToMinutes(Landroid/widget/RadialTimePickerView;F)V
    .registers 2

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesForHour(Landroid/widget/RadialTimePickerView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesForMinute(Landroid/widget/RadialTimePickerView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesFromXY(Landroid/widget/RadialTimePickerView;FFZ)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHourForDegrees(Landroid/widget/RadialTimePickerView;IZ)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInnerCircleForHour(Landroid/widget/RadialTimePickerView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInnerCircleFromXY(Landroid/widget/RadialTimePickerView;FF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMinuteForDegrees(Landroid/widget/RadialTimePickerView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsnapOnly30s(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 91
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_52

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 92
    new-array v1, v0, [I

    fill-array-data v1, :array_6e

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 93
    new-array v1, v0, [I

    fill-array-data v1, :array_8a

    sput-object v1, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 98
    const/16 v1, 0x169

    new-array v1, v1, [I

    sput-object v1, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 101
    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    .line 102
    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    .line 109
    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    .line 111
    const-wide v1, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 112
    .local v1, "increment":D
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 113
    .local v3, "angle":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_33
    if-ge v5, v0, :cond_50

    .line 114
    sget-object v6, Landroid/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    .line 115
    sget-object v6, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    .line 116
    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v3, v6

    .line 113
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 118
    .end local v1    # "increment":D
    .end local v3    # "angle":D
    .end local v5    # "i":I
    :cond_50
    return-void

    nop

    :array_52
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

    :array_6e
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

    :array_8a
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

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 322
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 325
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 326
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 330
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 334
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    new-instance v0, Landroid/widget/RadialTimePickerView$1;

    const-string v1, "hoursToMinutes"

    invoke-direct {v0, p0, v1}, Landroid/widget/RadialTimePickerView$1;-><init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    .line 134
    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 135
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 136
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 137
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 139
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Paint;

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 140
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 141
    const/4 v2, 0x3

    new-array v3, v2, [Landroid/graphics/Paint;

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 142
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 146
    new-array v3, v2, [Landroid/content/res/ColorStateList;

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 147
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    .line 148
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 150
    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v4, 0x0

    aput v1, v2, v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 151
    new-array v2, v1, [I

    aput v0, v2, v3

    aput v1, v2, v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 153
    new-array v2, v0, [F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 154
    new-array v2, v0, [F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 156
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 160
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 200
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 966
    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 336
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 339
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 340
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010033

    invoke-virtual {v5, v6, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 341
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 343
    const-string/jumbo v5, "sans-serif"

    invoke-static {v5, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 345
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v4

    .line 346
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 347
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v4

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 349
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    .line 350
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 351
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 353
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v4

    .line 356
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 358
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    .line 359
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 361
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v1

    .line 362
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 365
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 367
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 368
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x1050399

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 369
    const v6, 0x105039a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    .line 370
    const v6, 0x1050398

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    .line 371
    const v6, 0x1050390

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 373
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const v7, 0x105039f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v6, v4

    .line 374
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v3

    .line 375
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const v7, 0x105039e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    .line 377
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const v7, 0x105039d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v6, v4

    .line 378
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v3

    .line 379
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const v7, 0x105039c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    .line 381
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 382
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 383
    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 384
    iput v4, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 387
    new-instance v1, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {v1, p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 388
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0, v1}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 390
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_193

    .line 391
    invoke-virtual {p0, v3}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    .line 394
    :cond_193
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 395
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 398
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 399
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 400
    .local v6, "currentHour":I
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 402
    .local v0, "currentMinute":I
    invoke-direct {p0, v6, v4, v4}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 403
    invoke-direct {p0, v0, v4}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 405
    invoke-virtual {p0, v3}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    .line 406
    return-void
.end method

.method private greylist-max-o animatePicker(ZJ)V
    .registers 9
    .param p1, "hoursToMinutes"    # Z
    .param p2, "duration"    # J

    .line 708
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 709
    .local v0, "target":F
    :goto_6
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_21

    .line 711
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 712
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 713
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 717
    :cond_20
    return-void

    .line 720
    :cond_21
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 721
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 722
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 723
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 724
    return-void
.end method

.method private static greylist-max-o calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .registers 9
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "radius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "x"    # [F
    .param p6, "y"    # [F

    .line 887
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 888
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 890
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2a

    .line 891
    sget-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    aput v1, p5, v0

    .line 892
    sget-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    aput v1, p6, v0

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 894
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method private greylist-max-o calculatePositionsHours()V
    .registers 13

    .line 856
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 859
    .local v4, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v0, v2

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v0, v2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v0, v2

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 863
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_46

    .line 864
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    sub-int/2addr v0, v1

    .line 865
    .local v0, "innerNumbersRadius":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v1, v2

    int-to-float v6, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v7, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v8, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v3

    int-to-float v9, v1

    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v5 .. v11}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 868
    .end local v0    # "innerNumbersRadius":I
    :cond_46
    return-void
.end method

.method private greylist-max-o calculatePositionsMinutes()V
    .registers 11

    .line 872
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 875
    .local v4, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v0, v2

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v0, v2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v0, v2

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 877
    return-void
.end method

.method private greylist-max-o drawCenter(Landroid/graphics/Canvas;F)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .line 789
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 790
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 791
    return-void
.end method

.method private greylist-max-o drawCircleBackground(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 727
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 728
    return-void
.end method

.method private greylist-max-o drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .line 731
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 732
    .local v0, "hoursAlpha":I
    if-lez v0, :cond_2e

    .line 735
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 736
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 737
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 738
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 742
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 743
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 744
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 745
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 747
    :cond_2e
    return-void
.end method

.method private greylist-max-o drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "hoursAlpha"    # I
    .param p3, "showActivated"    # Z

    .line 751
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v13, 0x0

    aget v1, v1, v13

    int-to-float v2, v1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v1, v13

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v1, v13

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v1, v13

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v1, v13

    const/4 v14, 0x1

    if-eqz p3, :cond_23

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v1, :cond_23

    move v10, v14

    goto :goto_24

    :cond_23
    move v10, v13

    :goto_24
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v1, v13

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 756
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_68

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v1, :cond_68

    .line 757
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v2, v13

    if-eqz p3, :cond_58

    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v2, :cond_58

    move v10, v14

    goto :goto_59

    :cond_58
    move v10, v13

    :goto_59
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v2, v13

    move-object v0, p0

    move/from16 v9, p2

    move/from16 v12, p3

    move v2, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 761
    :cond_68
    return-void
.end method

.method private greylist-max-o drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .line 764
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 765
    .local v0, "minutesAlpha":I
    if-lez v0, :cond_2b

    .line 768
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 769
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 770
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 771
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 775
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 776
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 777
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 778
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 780
    :cond_2b
    return-void
.end method

.method private greylist-max-o drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .registers 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "minutesAlpha"    # I
    .param p3, "showActivated"    # Z

    .line 783
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v7, v2

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v8, v2

    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v9, v2

    move/from16 v12, p3

    move-object v0, p0

    move v9, p2

    move/from16 v10, p3

    move v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 786
    return-void
.end method

.method private greylist-max-o drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    iget-boolean v2, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    move v8, v2

    .line 800
    .local v8, "hoursIndex":I
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v9, v2, v8

    .line 801
    .local v9, "hoursInset":I
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v5, v8, 0x2

    aget v10, v2, v5

    .line 802
    .local v10, "hoursAngleDeg":I
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v5, v8, 0x2

    aget v2, v2, v5

    rem-int/lit8 v2, v2, 0x1e

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_26

    move v2, v5

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    move v11, v2

    .line 804
    .local v11, "hoursDotScale":F
    const/4 v12, 0x1

    .line 805
    .local v12, "minutesIndex":I
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v13, 0x1

    aget v14, v2, v13

    .line 806
    .local v14, "minutesInset":I
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v15, v2, v13

    .line 807
    .local v15, "minutesAngleDeg":I
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v2, v2, v13

    rem-int/lit8 v2, v2, 0x1e

    if-eqz v2, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v5, 0x0

    :goto_3c
    move v2, v5

    .line 810
    .local v2, "minutesDotScale":F
    iget v5, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 811
    .local v5, "selRadius":I
    const/16 v16, 0x0

    iget v3, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v3, v3

    const/16 v17, 0x2

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 812
    invoke-static {v9, v14, v4}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v4

    sub-float v18, v3, v4

    .line 813
    .local v18, "selLength":F
    int-to-float v3, v10

    int-to-float v4, v15

    const/16 v19, 0x0

    iget v6, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 814
    invoke-static {v3, v4, v6}, Landroid/util/MathUtils;->lerpDeg(FFF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .line 815
    .local v20, "selAngleRad":D
    iget v3, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v3, v3

    move v4, v13

    move/from16 v22, v14

    .end local v14    # "minutesInset":I
    .local v22, "minutesInset":I
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v6, v13

    mul-float v6, v6, v18

    add-float v13, v3, v6

    .line 816
    .local v13, "selCenterX":F
    iget v3, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v3

    move v14, v4

    move v6, v5

    .end local v5    # "selRadius":I
    .local v6, "selRadius":I
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v18

    sub-float/2addr v3, v4

    .line 819
    .local v3, "selCenterY":F
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v4, v4, v16

    .line 820
    .local v4, "paint":Landroid/graphics/Paint;
    iget v5, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 821
    int-to-float v5, v6

    invoke-virtual {v1, v13, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 824
    if-eqz v7, :cond_94

    .line 825
    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 826
    int-to-float v5, v6

    move/from16 v16, v14

    sget-object v14, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v13, v3, v5, v14}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_96

    .line 824
    :cond_94
    move/from16 v16, v14

    .line 830
    :goto_96
    iget v5, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v11, v2, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    .line 831
    .local v14, "dotScale":F
    cmpl-float v5, v14, v19

    if-lez v5, :cond_b3

    .line 832
    iget-object v5, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v16

    .line 833
    .local v5, "dotPaint":Landroid/graphics/Paint;
    move/from16 v16, v2

    .end local v2    # "minutesDotScale":F
    .local v16, "minutesDotScale":F
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 834
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v2, v2

    mul-float/2addr v2, v14

    invoke-virtual {v1, v13, v3, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_b5

    .line 831
    .end local v5    # "dotPaint":Landroid/graphics/Paint;
    .end local v16    # "minutesDotScale":F
    .restart local v2    # "minutesDotScale":F
    :cond_b3
    move/from16 v16, v2

    .line 839
    .end local v2    # "minutesDotScale":F
    .restart local v16    # "minutesDotScale":F
    :goto_b5
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    .line 840
    .local v23, "sin":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    .line 841
    .local v25, "cos":D
    int-to-float v2, v6

    sub-float v2, v18, v2

    .line 842
    .local v2, "lineLength":F
    iget v5, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v1, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    move/from16 v19, v3

    move-object/from16 v27, v4

    .end local v3    # "selCenterY":F
    .end local v4    # "paint":Landroid/graphics/Paint;
    .local v19, "selCenterY":F
    .local v27, "paint":Landroid/graphics/Paint;
    int-to-double v3, v1

    mul-double v3, v3, v23

    double-to-int v1, v3

    add-int v28, v5, v1

    .line 843
    .local v28, "centerX":I
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    iget v3, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v3, v3

    mul-double v3, v3, v25

    double-to-int v3, v3

    sub-int v29, v1, v3

    .line 844
    .local v29, "centerY":I
    float-to-double v3, v2

    mul-double v3, v3, v23

    double-to-int v1, v3

    add-int v1, v28, v1

    int-to-float v4, v1

    .line 845
    .local v4, "linePointX":F
    move v1, v4

    .end local v4    # "linePointX":F
    .local v1, "linePointX":F
    float-to-double v3, v2

    mul-double v3, v3, v25

    double-to-int v3, v3

    sub-int v3, v29, v3

    int-to-float v5, v3

    .line 848
    .local v5, "linePointY":F
    iget-object v3, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v3, v3, v17

    .line 849
    .local v3, "linePaint":Landroid/graphics/Paint;
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 850
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 851
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v4, v4

    move/from16 v17, v1

    .end local v1    # "linePointX":F
    .local v17, "linePointX":F
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    move/from16 v30, v2

    move v2, v4

    move/from16 v4, v17

    move/from16 v17, v6

    move-object v6, v3

    move v3, v1

    move-object/from16 v1, p1

    .end local v2    # "lineLength":F
    .end local v3    # "linePaint":Landroid/graphics/Paint;
    .restart local v4    # "linePointX":F
    .local v6, "linePaint":Landroid/graphics/Paint;
    .local v17, "selRadius":I
    .local v30, "lineLength":F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 852
    move v1, v4

    .end local v4    # "linePointX":F
    .restart local v1    # "linePointX":F
    return-void
.end method

.method private greylist-max-o drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .registers 29
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

    .line 902
    move-object/from16 v0, p8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 903
    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 906
    move/from16 v3, p11

    int-to-float v4, v3

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v4, v5

    .line 907
    .local v4, "activatedIndex":F
    float-to-int v5, v4

    .line 908
    .local v5, "activatedFloor":I
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0xc

    rem-int/2addr v6, v7

    .line 910
    .local v6, "activatedCeil":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1d
    if-ge v8, v7, :cond_6d

    .line 911
    const/4 v9, 0x0

    if-eq v5, v8, :cond_27

    if-ne v6, v8, :cond_25

    goto :goto_27

    :cond_25
    move v10, v9

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v10, 0x1

    .line 912
    .local v10, "activated":Z
    :goto_28
    if-eqz p12, :cond_35

    if-nez v10, :cond_35

    .line 913
    move-object/from16 v12, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p4

    move/from16 v14, p9

    goto :goto_64

    .line 916
    :cond_35
    nop

    .line 917
    if-eqz p10, :cond_3d

    if-eqz v10, :cond_3d

    const/16 v11, 0x20

    goto :goto_3e

    :cond_3d
    move v11, v9

    :goto_3e
    const/16 v12, 0x8

    or-int/2addr v11, v12

    .line 918
    .local v11, "stateMask":I
    invoke-static {v11}, Landroid/util/StateSet;->get(I)[I

    move-result-object v12

    move-object/from16 v13, p4

    invoke-virtual {v13, v12, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    .line 919
    .local v9, "color":I
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 920
    move-object/from16 v12, p0

    move/from16 v14, p9

    invoke-direct {v12, v9, v14}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 922
    aget-object v15, p5, v8

    aget v7, p6, v8

    aget v1, p7, v8

    move-object/from16 v2, p1

    invoke-virtual {v2, v15, v7, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 910
    .end local v9    # "color":I
    .end local v10    # "activated":Z
    .end local v11    # "stateMask":I
    :goto_64
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/16 v7, 0xc

    goto :goto_1d

    :cond_6d
    move-object/from16 v12, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p4

    move/from16 v14, p9

    .line 924
    .end local v8    # "i":I
    return-void
.end method

.method private greylist-max-o getDegreesForHour(I)I
    .registers 4
    .param p1, "hour"    # I

    .line 554
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_b

    .line 555
    if-lt p1, v1, :cond_e

    .line 556
    add-int/lit8 p1, p1, -0xc

    goto :goto_e

    .line 558
    :cond_b
    if-ne p1, v1, :cond_e

    .line 559
    const/4 p1, 0x0

    .line 561
    :cond_e
    :goto_e
    mul-int/lit8 v0, p1, 0x1e

    return v0
.end method

.method private greylist-max-o getDegreesForMinute(I)I
    .registers 3
    .param p1, "minute"    # I

    .line 595
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private greylist-max-o getDegreesFromXY(FFZ)I
    .registers 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    .line 930
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_d

    .line 931
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 932
    .local v0, "innerBound":I
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .local v1, "outerBound":I
    goto :goto_21

    .line 934
    .end local v0    # "innerBound":I
    .end local v1    # "outerBound":I
    :cond_d
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    .line 935
    .local v0, "index":I
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    .line 936
    .local v1, "center":I
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int v2, v1, v2

    .line 937
    .local v2, "innerBound":I
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v3, v1

    move v0, v2

    move v1, v3

    .line 940
    .end local v2    # "innerBound":I
    .local v0, "innerBound":I
    .local v1, "outerBound":I
    :goto_21
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    float-to-double v2, v2

    .line 941
    .local v2, "dX":D
    iget v4, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    float-to-double v4, v4

    .line 942
    .local v4, "dY":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 943
    .local v6, "distFromCenter":D
    int-to-double v8, v0

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_5b

    if-eqz p3, :cond_43

    int-to-double v8, v1

    cmpl-double v8, v6, v8

    if-lez v8, :cond_43

    goto :goto_5b

    .line 948
    :cond_43
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    .line 949
    .local v8, "degrees":I
    if-gez v8, :cond_5a

    .line 950
    add-int/lit16 v9, v8, 0x168

    return v9

    .line 952
    :cond_5a
    return v8

    .line 944
    .end local v8    # "degrees":I
    :cond_5b
    :goto_5b
    const/4 v8, -0x1

    return v8
.end method

.method private greylist-max-o getHourForDegrees(IZ)I
    .registers 6
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .line 532
    div-int/lit8 v0, p1, 0x1e

    rem-int/lit8 v0, v0, 0xc

    .line 533
    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_16

    .line 536
    if-nez p2, :cond_f

    if-nez v0, :cond_f

    .line 538
    const/16 v0, 0xc

    goto :goto_1d

    .line 539
    :cond_f
    if-eqz p2, :cond_1d

    if-eqz v0, :cond_1d

    .line 541
    add-int/lit8 v0, v0, 0xc

    goto :goto_1d

    .line 543
    :cond_16
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 544
    add-int/lit8 v0, v0, 0xc

    .line 546
    :cond_1d
    :goto_1d
    return v0
.end method

.method private greylist-max-o getInnerCircleForHour(I)Z
    .registers 3
    .param p1, "hour"    # I

    .line 568
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_a

    const/16 v0, 0xc

    if-le p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private greylist-max-o getInnerCircleFromXY(FF)Z
    .registers 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 957
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_27

    .line 958
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v2, v0

    .line 959
    .local v2, "dX":D
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    float-to-double v4, v0

    .line 960
    .local v4, "dY":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 961
    .local v6, "distFromCenter":D
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1

    .line 963
    .end local v2    # "dX":D
    .end local v4    # "dY":D
    .end local v6    # "distFromCenter":D
    :cond_27
    return v1
.end method

.method private greylist-max-o getMinuteForDegrees(I)I
    .registers 3
    .param p1, "degrees"    # I

    .line 591
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private greylist-max-o getMultipliedAlpha(II)I
    .registers 9
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .line 794
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private greylist-max-o handleTouchInput(FFZZ)Z
    .registers 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .line 1003
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    .line 1004
    .local v0, "isOnInnerCircle":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v2

    .line 1005
    .local v2, "degrees":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    .line 1006
    return v1

    .line 1010
    :cond_d
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const-wide/16 v4, 0x3c

    invoke-direct {p0, v3, v4, v5}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    .line 1016
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_39

    .line 1017
    invoke-static {v2, v1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    .line 1018
    .local v3, "snapDegrees":I
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne v5, v0, :cond_2c

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v1

    if-eq v5, v3, :cond_2a

    goto :goto_2c

    :cond_2a
    move v5, v1

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v5, v4

    .line 1020
    .local v5, "valueChanged":Z
    :goto_2d
    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1021
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v1

    .line 1022
    const/4 v6, 0x0

    .line 1023
    .local v6, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v3

    .line 1024
    .local v3, "newValue":I
    goto :goto_52

    .line 1025
    .end local v3    # "newValue":I
    .end local v5    # "valueChanged":Z
    .end local v6    # "type":I
    :cond_39
    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    .line 1026
    .local v3, "snapDegrees":I
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v4

    if-eq v5, v3, :cond_47

    move v5, v4

    goto :goto_48

    :cond_47
    move v5, v1

    .line 1027
    .restart local v5    # "valueChanged":Z
    :goto_48
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v4

    .line 1028
    const/4 v6, 0x1

    .line 1029
    .restart local v6    # "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v7

    move v3, v7

    .line 1032
    .local v3, "newValue":I
    :goto_52
    if-nez v5, :cond_5a

    if-nez p3, :cond_5a

    if-eqz p4, :cond_59

    goto :goto_5a

    .line 1046
    :cond_59
    return v1

    .line 1034
    :cond_5a
    :goto_5a
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v1, :cond_63

    .line 1035
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v1, v6, v3, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1039
    :cond_63
    if-nez v5, :cond_67

    if-eqz p3, :cond_6e

    .line 1040
    :cond_67
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    .line 1041
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1043
    :cond_6e
    return v4
.end method

.method private greylist-max-o initData()V
    .registers 2

    .line 640
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_d

    .line 641
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 642
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_15

    .line 644
    :cond_d
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 645
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 648
    :goto_15
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 649
    return-void
.end method

.method private greylist-max-o initHoursAndMinutesText()V
    .registers 6

    .line 631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_5c

    .line 632
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    sget-object v2, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 633
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    sget-object v2, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%02d"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 634
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    sget-object v2, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 635
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    sget-object v2, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    .end local v0    # "i":I
    :cond_5c
    return-void
.end method

.method private static greylist-max-o preparePrefer30sMap()V
    .registers 5

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "snappedOutputDegrees":I
    const/4 v1, 0x1

    .line 252
    .local v1, "count":I
    const/16 v2, 0x8

    .line 254
    .local v2, "expectedCount":I
    const/4 v3, 0x0

    .local v3, "degrees":I
    :goto_5
    const/16 v4, 0x169

    if-ge v3, v4, :cond_26

    .line 256
    sget-object v4, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v0, v4, v3

    .line 259
    if-ne v1, v2, :cond_21

    .line 260
    add-int/lit8 v0, v0, 0x6

    .line 261
    const/16 v4, 0x168

    if-ne v0, v4, :cond_17

    .line 262
    const/4 v2, 0x7

    goto :goto_1f

    .line 263
    :cond_17
    rem-int/lit8 v4, v0, 0x1e

    if-nez v4, :cond_1e

    .line 264
    const/16 v2, 0xe

    goto :goto_1f

    .line 266
    :cond_1e
    const/4 v2, 0x4

    .line 268
    :goto_1f
    const/4 v1, 0x1

    goto :goto_23

    .line 270
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 254
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 273
    .end local v3    # "degrees":I
    :cond_26
    return-void
.end method

.method private greylist-max-o setCurrentHourInternal(IZZ)V
    .registers 9
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .line 501
    rem-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x1e

    .line 502
    .local v0, "degrees":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 505
    if-eqz p1, :cond_14

    rem-int/lit8 v1, p1, 0x18

    const/16 v3, 0xc

    if-ge v1, v3, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    :goto_14
    move v1, v2

    .line 506
    .local v1, "amOrPm":I
    :goto_15
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v3

    .line 507
    .local v3, "isOnInnerCircle":Z
    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v4, v1, :cond_21

    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v4, v3, :cond_2d

    .line 508
    :cond_21
    iput v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 509
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 511
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 512
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 515
    :cond_2d
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 517
    if-eqz p2, :cond_3b

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v4, :cond_3b

    .line 518
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v4, v2, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 520
    :cond_3b
    return-void
.end method

.method private greylist-max-o setCurrentMinuteInternal(IZ)V
    .registers 6
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .line 576
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 578
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 580
    if-eqz p2, :cond_18

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_18

    .line 581
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 583
    :cond_18
    return-void
.end method

.method private greylist-max-o showPicker(ZZ)V
    .registers 5
    .param p1, "hours"    # Z
    .param p2, "animate"    # Z

    .line 685
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-ne v0, p1, :cond_5

    .line 686
    return-void

    .line 689
    :cond_5
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 691
    if-eqz p2, :cond_f

    .line 692
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    goto :goto_2b

    .line 695
    :cond_f
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 696
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 699
    :cond_23
    if-eqz p1, :cond_27

    const/4 v0, 0x0

    goto :goto_29

    :cond_27
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_29
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 702
    :goto_2b
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 703
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 704
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 705
    return-void
.end method

.method private static greylist-max-o snapOnly30s(II)I
    .registers 7
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .line 299
    const/16 v0, 0x1e

    .line 300
    .local v0, "stepSize":I
    div-int/lit8 v1, p0, 0x1e

    mul-int/lit8 v1, v1, 0x1e

    .line 301
    .local v1, "floor":I
    add-int/lit8 v2, v1, 0x1e

    .line 302
    .local v2, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_d

    .line 303
    move p0, v2

    goto :goto_1f

    .line 304
    :cond_d
    const/4 v3, -0x1

    if-ne p1, v3, :cond_16

    .line 305
    if-ne p0, v1, :cond_14

    .line 306
    add-int/lit8 v1, v1, -0x1e

    .line 308
    :cond_14
    move p0, v1

    goto :goto_1f

    .line 310
    :cond_16
    sub-int v3, p0, v1

    sub-int v4, v2, p0

    if-ge v3, v4, :cond_1e

    .line 311
    move p0, v1

    goto :goto_1f

    .line 313
    :cond_1e
    move p0, v2

    .line 316
    :goto_1f
    return p0
.end method

.method private static greylist-max-o snapPrefer30s(I)I
    .registers 2
    .param p0, "degrees"    # I

    .line 283
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_6

    .line 284
    const/4 v0, -0x1

    return v0

    .line 286
    :cond_6
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method greylist-max-o applyAttributes(Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 409
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 410
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 412
    .local v4, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "attrs":Landroid/util/AttributeSet;
    .end local p2    # "defStyleAttr":I
    .end local p3    # "defStyleRes":I
    .local v3, "attrs":Landroid/util/AttributeSet;
    .local v5, "defStyleAttr":I
    .local v6, "defStyleRes":I
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 415
    const/4 p1, 0x3

    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 417
    .local p1, "numbersTextColor":Landroid/content/res/ColorStateList;
    const/16 p2, 0x9

    invoke-virtual {v4, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 419
    .local p2, "numbersInnerTextColor":Landroid/content/res/ColorStateList;
    iget-object p3, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const v2, -0xff01

    if-nez p1, :cond_2e

    .line 420
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    goto :goto_2f

    :cond_2e
    move-object v7, p1

    :goto_2f
    const/4 v8, 0x0

    aput-object v7, p3, v8

    .line 421
    iget-object p3, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    if-nez p2, :cond_3b

    .line 422
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_3c

    :cond_3b
    move-object v2, p2

    :goto_3c
    const/4 v7, 0x2

    aput-object v2, p3, v7

    .line 423
    iget-object p3, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v8

    const/4 v7, 0x1

    aput-object v2, p3, v7

    .line 426
    const/4 p3, 0x5

    invoke-virtual {v4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 429
    .local p3, "selectorColors":Landroid/content/res/ColorStateList;
    const/16 v2, 0x28

    if-eqz p3, :cond_5a

    .line 430
    invoke-static {v2}, Landroid/util/StateSet;->get(I)[I

    move-result-object v7

    .line 432
    .local v7, "stateSetEnabledActivated":[I
    invoke-virtual {p3, v7, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    .line 434
    .local v7, "selectorActivatedColor":I
    goto :goto_5d

    .line 435
    .end local v7    # "selectorActivatedColor":I
    :cond_5a
    const v7, -0xff01

    .line 438
    .restart local v7    # "selectorActivatedColor":I
    :goto_5d
    iget-object v9, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 440
    invoke-static {v2}, Landroid/util/StateSet;->get(I)[I

    move-result-object v2

    .line 443
    .local v2, "stateSetActivated":[I
    iput v7, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    .line 444
    iget-object v9, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v9, v9, v8

    invoke-virtual {v9, v2, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    iput v8, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 446
    iget-object v8, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 447
    const v9, 0x10603bc

    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 446
    const/4 v10, 0x4

    invoke-virtual {v4, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 450
    return-void
.end method

.method public whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1052
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1053
    const/4 v0, 0x1

    return v0

    .line 1055
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getAmOrPm()I
    .registers 2

    .line 618
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public greylist-max-o getCurrentHour()I
    .registers 3

    .line 528
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getCurrentItemShowing()I
    .registers 2

    .line 476
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o getCurrentMinute()I
    .registers 3

    .line 587
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o initialize(IIZ)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .line 453
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_9

    .line 454
    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 455
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 458
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 459
    invoke-direct {p0, p2, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 460
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 673
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 675
    .local v0, "alphaMod":F
    :goto_9
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 677
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 678
    .local v1, "selectorPath":Landroid/graphics/Path;
    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 679
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 680
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 681
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    .line 682
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 653
    if-nez p1, :cond_3

    .line 654
    return-void

    .line 657
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 658
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 659
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 661
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v1

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 662
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 663
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 665
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    .line 666
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    .line 668
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 669
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1066
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1067
    const/4 v0, 0x0

    return-object v0

    .line 1069
    :cond_8
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1070
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    .line 1071
    .local v0, "degrees":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    .line 1072
    invoke-static {}, Landroid/view/flags/Flags;->enableArrowIconOnHoverWhenClickable()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1073
    const/16 v1, 0x3e8

    goto :goto_2b

    .line 1074
    :cond_29
    const/16 v1, 0x3ea

    :goto_2b
    nop

    .line 1075
    .local v1, "pointerIcon":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    return-object v2

    .line 1078
    .end local v0    # "degrees":I
    .end local v1    # "pointerIcon":I
    :cond_35
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 970
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 971
    return v1

    .line 974
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 975
    .local v0, "action":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    if-eq v0, v1, :cond_11

    if-nez v0, :cond_32

    .line 978
    :cond_11
    const/4 v2, 0x0

    .line 979
    .local v2, "forceSelection":Z
    const/4 v3, 0x0

    .line 981
    .local v3, "autoAdvance":Z
    if-nez v0, :cond_19

    .line 983
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_21

    .line 984
    :cond_19
    if-ne v0, v1, :cond_21

    .line 985
    const/4 v3, 0x1

    .line 989
    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v4, :cond_21

    .line 990
    const/4 v2, 0x1

    .line 994
    :cond_21
    :goto_21
    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 995
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 994
    invoke-direct {p0, v5, v6, v2, v3}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 998
    .end local v2    # "forceSelection":Z
    .end local v3    # "autoAdvance":Z
    :cond_32
    return v1
.end method

.method public greylist-max-o setAmOrPm(I)Z
    .registers 3
    .param p1, "amOrPm"    # I

    .line 607
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-eq v0, p1, :cond_15

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_9

    goto :goto_15

    .line 611
    :cond_9
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 612
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 613
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 614
    const/4 v0, 0x1

    return v0

    .line 608
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setCurrentHour(I)V
    .registers 4
    .param p1, "hour"    # I

    .line 489
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 490
    return-void
.end method

.method public greylist-max-o setCurrentItemShowing(IZ)V
    .registers 5
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .line 463
    packed-switch p1, :pswitch_data_26

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockView does not support showing item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadialTimePickerView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 468
    :pswitch_1c
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    .line 469
    goto :goto_24

    .line 465
    :pswitch_20
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    .line 466
    nop

    .line 473
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method public greylist-max-o setCurrentMinute(I)V
    .registers 3
    .param p1, "minute"    # I

    .line 572
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 573
    return-void
.end method

.method public greylist-max-o setInputEnabled(Z)V
    .registers 2
    .param p1, "inputEnabled"    # Z

    .line 1059
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 1060
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1061
    return-void
.end method

.method public greylist-max-o setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 480
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 481
    return-void
.end method

.method public greylist-max-o showHours(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .line 622
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 623
    return-void
.end method

.method public greylist-max-o showMinutes(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .line 626
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 627
    return-void
.end method
