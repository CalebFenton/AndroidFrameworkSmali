.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;,
        Landroid/widget/SimpleMonthView$OnDayClickListener;
    }
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DAY_OF_WEEK_FORMAT:Ljava/lang/String; = "EEEEE"

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_TITLE_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCellWidth:I

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayOfWeekFormatter:Ljava/text/SimpleDateFormat;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabelCalendar:Ljava/util/Calendar;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mTitle:Ljava/lang/CharSequence;

.field private final mTitleFormatter:Ljava/text/SimpleDateFormat;

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mTouchedItem:I

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method static synthetic -get0(Landroid/widget/SimpleMonthView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/SimpleMonthView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/widget/SimpleMonthView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/SimpleMonthView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/SimpleMonthView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p1, "day"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p1, "day"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p1, "day"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/SimpleMonthView;II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 140
    const v0, 0x101035c

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 64
    new-instance v3, Landroid/text/TextPaint;

    #@7
    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    #@a
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@c
    .line 65
    new-instance v3, Landroid/text/TextPaint;

    #@e
    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    #@11
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@13
    .line 66
    new-instance v3, Landroid/text/TextPaint;

    #@15
    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    #@18
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@1a
    .line 67
    new-instance v3, Landroid/graphics/Paint;

    #@1c
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    #@1f
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@21
    .line 68
    new-instance v3, Landroid/graphics/Paint;

    #@23
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    #@26
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    #@28
    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    #@2e
    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@31
    move-result-object v3

    #@32
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabelCalendar:Ljava/util/Calendar;

    #@34
    .line 102
    iput v4, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@36
    .line 108
    iput v4, p0, Landroid/widget/SimpleMonthView;->mToday:I

    #@38
    .line 111
    iput v5, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@3a
    .line 123
    iput v5, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    #@3c
    .line 126
    const/16 v3, 0x1f

    #@3e
    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    #@40
    .line 133
    iput v4, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    #@42
    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@45
    move-result-object v1

    #@46
    .line 151
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x1050125

    #@49
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@4c
    move-result v3

    #@4d
    iput v3, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    #@4f
    .line 152
    const v3, 0x1050126

    #@52
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@55
    move-result v3

    #@56
    iput v3, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    #@58
    .line 153
    const v3, 0x1050127

    #@5b
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@5e
    move-result v3

    #@5f
    iput v3, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    #@61
    .line 154
    const v3, 0x1050128

    #@64
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@67
    move-result v3

    #@68
    iput v3, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    #@6a
    .line 156
    const v3, 0x1050129

    #@6d
    .line 155
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@70
    move-result v3

    #@71
    iput v3, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    #@73
    .line 159
    new-instance v3, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@75
    invoke-direct {v3, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    #@78
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@7a
    .line 160
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@7c
    invoke-virtual {p0, v3}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@7f
    .line 161
    invoke-virtual {p0, v5}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    #@82
    .line 163
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@85
    move-result-object v3

    #@86
    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@88
    .line 164
    .local v0, "locale":Ljava/util/Locale;
    const-string/jumbo v3, "MMMMy"

    #@8b
    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    .line 165
    .local v2, "titleFormat":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    #@91
    invoke-direct {v3, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@94
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mTitleFormatter:Ljava/text/SimpleDateFormat;

    #@96
    .line 166
    new-instance v3, Ljava/text/SimpleDateFormat;

    #@98
    const-string/jumbo v4, "EEEEE"

    #@9b
    invoke-direct {v3, v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@9e
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekFormatter:Ljava/text/SimpleDateFormat;

    #@a0
    .line 167
    invoke-static {v0}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@a3
    move-result-object v3

    #@a4
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    #@a6
    .line 169
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    #@a9
    .line 147
    return-void
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "resId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 181
    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    #@4
    .line 182
    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    #@6
    .line 181
    invoke-virtual {v4, v7, v5, v6, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object v2

    #@a
    .line 184
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/16 v4, 0xc

    #@c
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 185
    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@12
    .line 186
    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@19
    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    #@1c
    move-result v4

    #@1d
    float-to-int v4, v4

    #@1e
    .line 189
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@21
    move-result v4

    #@22
    int-to-float v4, v4

    #@23
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    #@26
    .line 192
    const/4 v4, 0x3

    #@27
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@2a
    move-result-object v3

    #@2b
    .line 193
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_1

    #@2d
    .line 194
    sget-object v4, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    #@2f
    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@32
    move-result v0

    #@33
    .line 195
    .local v0, "enabledColor":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@36
    .line 198
    .end local v0    # "enabledColor":I
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    .line 200
    return-object v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 409
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@4
    move-object/from16 v17, v0

    #@6
    .line 410
    .local v17, "p":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@8
    iget v0, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@a
    move/from16 v22, v0

    #@c
    move-object/from16 v0, p0

    #@e
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    #@10
    move/from16 v23, v0

    #@12
    add-int v13, v22, v23

    #@14
    .line 411
    .local v13, "headerHeight":I
    move-object/from16 v0, p0

    #@16
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    #@18
    move/from16 v19, v0

    #@1a
    .line 412
    .local v19, "rowHeight":I
    move-object/from16 v0, p0

    #@1c
    iget v9, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@1e
    .line 415
    .local v9, "colWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/text/TextPaint;->ascent()F

    #@21
    move-result v22

    #@22
    invoke-virtual/range {v17 .. v17}, Landroid/text/TextPaint;->descent()F

    #@25
    move-result v23

    #@26
    add-float v22, v22, v23

    #@28
    const/high16 v23, 0x40000000    # 2.0f

    #@2a
    div-float v12, v22, v23

    #@2c
    .line 416
    .local v12, "halfLineHeight":F
    div-int/lit8 v22, v19, 0x2

    #@2e
    add-int v18, v13, v22

    #@30
    .line 418
    .local v18, "rowCenter":I
    const/4 v10, 0x1

    #@31
    .local v10, "day":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    #@34
    move-result v6

    #@35
    .local v6, "col":I
    :goto_0
    move-object/from16 v0, p0

    #@37
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@39
    move/from16 v22, v0

    #@3b
    move/from16 v0, v22

    #@3d
    if-gt v10, v0, :cond_9

    #@3f
    .line 419
    mul-int v22, v9, v6

    #@41
    div-int/lit8 v23, v9, 0x2

    #@43
    add-int v7, v22, v23

    #@45
    .line 421
    .local v7, "colCenter":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    #@48
    move-result v22

    #@49
    if-eqz v22, :cond_4

    #@4b
    .line 422
    move-object/from16 v0, p0

    #@4d
    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@4f
    move/from16 v22, v0

    #@51
    sub-int v8, v22, v7

    #@53
    .line 427
    .local v8, "colCenterRtl":I
    :goto_1
    const/16 v20, 0x0

    #@55
    .line 429
    .local v20, "stateMask":I
    move-object/from16 v0, p0

    #@57
    invoke-direct {v0, v10}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    #@5a
    move-result v15

    #@5b
    .line 430
    .local v15, "isDayEnabled":Z
    if-eqz v15, :cond_0

    #@5d
    .line 431
    const/16 v20, 0x8

    #@5f
    .line 434
    :cond_0
    move-object/from16 v0, p0

    #@61
    iget v0, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@63
    move/from16 v22, v0

    #@65
    move/from16 v0, v22

    #@67
    if-ne v0, v10, :cond_5

    #@69
    const/4 v14, 0x1

    #@6a
    .line 435
    .local v14, "isDayActivated":Z
    :goto_2
    if-eqz v14, :cond_6

    #@6c
    .line 436
    or-int/lit8 v20, v20, 0x20

    #@6e
    .line 439
    int-to-float v0, v8

    #@6f
    move/from16 v22, v0

    #@71
    move/from16 v0, v18

    #@73
    int-to-float v0, v0

    #@74
    move/from16 v23, v0

    #@76
    move-object/from16 v0, p0

    #@78
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    #@7a
    move/from16 v24, v0

    #@7c
    move/from16 v0, v24

    #@7e
    int-to-float v0, v0

    #@7f
    move/from16 v24, v0

    #@81
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@85
    move-object/from16 v25, v0

    #@87
    move-object/from16 v0, p1

    #@89
    move/from16 v1, v22

    #@8b
    move/from16 v2, v23

    #@8d
    move/from16 v3, v24

    #@8f
    move-object/from16 v4, v25

    #@91
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@94
    .line 450
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    #@96
    iget v0, v0, Landroid/widget/SimpleMonthView;->mToday:I

    #@98
    move/from16 v22, v0

    #@9a
    move/from16 v0, v22

    #@9c
    if-ne v0, v10, :cond_7

    #@9e
    const/16 v16, 0x1

    #@a0
    .line 452
    .local v16, "isDayToday":Z
    :goto_4
    if-eqz v16, :cond_2

    #@a2
    if-eqz v14, :cond_8

    #@a4
    .line 455
    :cond_2
    invoke-static/range {v20 .. v20}, Landroid/util/StateSet;->get(I)[I

    #@a7
    move-result-object v21

    #@a8
    .line 456
    .local v21, "stateSet":[I
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    #@ac
    move-object/from16 v22, v0

    #@ae
    const/16 v23, 0x0

    #@b0
    move-object/from16 v0, v22

    #@b2
    move-object/from16 v1, v21

    #@b4
    move/from16 v2, v23

    #@b6
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@b9
    move-result v11

    #@ba
    .line 458
    .end local v21    # "stateSet":[I
    .local v11, "dayTextColor":I
    :goto_5
    move-object/from16 v0, v17

    #@bc
    invoke-virtual {v0, v11}, Landroid/text/TextPaint;->setColor(I)V

    #@bf
    .line 460
    move-object/from16 v0, p0

    #@c1
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    #@c3
    move-object/from16 v22, v0

    #@c5
    int-to-long v0, v10

    #@c6
    move-wide/from16 v24, v0

    #@c8
    move-object/from16 v0, v22

    #@ca
    move-wide/from16 v1, v24

    #@cc
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    #@cf
    move-result-object v22

    #@d0
    int-to-float v0, v8

    #@d1
    move/from16 v23, v0

    #@d3
    move/from16 v0, v18

    #@d5
    int-to-float v0, v0

    #@d6
    move/from16 v24, v0

    #@d8
    sub-float v24, v24, v12

    #@da
    move-object/from16 v0, p1

    #@dc
    move-object/from16 v1, v22

    #@de
    move/from16 v2, v23

    #@e0
    move/from16 v3, v24

    #@e2
    move-object/from16 v4, v17

    #@e4
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@e7
    .line 462
    add-int/lit8 v6, v6, 0x1

    #@e9
    .line 464
    const/16 v22, 0x7

    #@eb
    move/from16 v0, v22

    #@ed
    if-ne v6, v0, :cond_3

    #@ef
    .line 465
    const/4 v6, 0x0

    #@f0
    .line 466
    add-int v18, v18, v19

    #@f2
    .line 418
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@f4
    goto/16 :goto_0

    #@f6
    .line 424
    .end local v8    # "colCenterRtl":I
    .end local v11    # "dayTextColor":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayEnabled":Z
    .end local v16    # "isDayToday":Z
    .end local v20    # "stateMask":I
    :cond_4
    move v8, v7

    #@f7
    .restart local v8    # "colCenterRtl":I
    goto/16 :goto_1

    #@f9
    .line 434
    .restart local v15    # "isDayEnabled":Z
    .restart local v20    # "stateMask":I
    :cond_5
    const/4 v14, 0x0

    #@fa
    .restart local v14    # "isDayActivated":Z
    goto/16 :goto_2

    #@fc
    .line 440
    :cond_6
    move-object/from16 v0, p0

    #@fe
    iget v0, v0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    #@100
    move/from16 v22, v0

    #@102
    move/from16 v0, v22

    #@104
    if-ne v0, v10, :cond_1

    #@106
    .line 441
    or-int/lit8 v20, v20, 0x10

    #@108
    .line 443
    if-eqz v15, :cond_1

    #@10a
    .line 445
    int-to-float v0, v8

    #@10b
    move/from16 v22, v0

    #@10d
    move/from16 v0, v18

    #@10f
    int-to-float v0, v0

    #@110
    move/from16 v23, v0

    #@112
    .line 446
    move-object/from16 v0, p0

    #@114
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    #@116
    move/from16 v24, v0

    #@118
    move/from16 v0, v24

    #@11a
    int-to-float v0, v0

    #@11b
    move/from16 v24, v0

    #@11d
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    #@121
    move-object/from16 v25, v0

    #@123
    .line 445
    move-object/from16 v0, p1

    #@125
    move/from16 v1, v22

    #@127
    move/from16 v2, v23

    #@129
    move/from16 v3, v24

    #@12b
    move-object/from16 v4, v25

    #@12d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@130
    goto/16 :goto_3

    #@132
    .line 450
    :cond_7
    const/16 v16, 0x0

    #@134
    .restart local v16    # "isDayToday":Z
    goto/16 :goto_4

    #@136
    .line 453
    :cond_8
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@13a
    move-object/from16 v22, v0

    #@13c
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getColor()I

    #@13f
    move-result v11

    #@140
    .restart local v11    # "dayTextColor":I
    goto/16 :goto_5

    #@142
    .line 408
    .end local v7    # "colCenter":I
    .end local v8    # "colCenterRtl":I
    .end local v11    # "dayTextColor":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayEnabled":Z
    .end local v16    # "isDayToday":Z
    .end local v20    # "stateMask":I
    :cond_9
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 376
    iget-object v8, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@2
    .line 377
    .local v8, "p":Landroid/text/TextPaint;
    iget v6, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@4
    .line 378
    .local v6, "headerHeight":I
    iget v10, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    #@6
    .line 379
    .local v10, "rowHeight":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@8
    .line 382
    .local v3, "colWidth":I
    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    #@b
    move-result v11

    #@c
    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    #@f
    move-result v12

    #@10
    add-float/2addr v11, v12

    #@11
    const/high16 v12, 0x40000000    # 2.0f

    #@13
    div-float v5, v11, v12

    #@15
    .line 383
    .local v5, "halfLineHeight":F
    div-int/lit8 v11, v10, 0x2

    #@17
    add-int v9, v6, v11

    #@19
    .line 385
    .local v9, "rowCenter":I
    const/4 v0, 0x0

    #@1a
    .local v0, "col":I
    :goto_0
    const/4 v11, 0x7

    #@1b
    if-ge v0, v11, :cond_1

    #@1d
    .line 386
    mul-int v11, v3, v0

    #@1f
    div-int/lit8 v12, v3, 0x2

    #@21
    add-int v1, v11, v12

    #@23
    .line 388
    .local v1, "colCenter":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    #@26
    move-result v11

    #@27
    if-eqz v11, :cond_0

    #@29
    .line 389
    iget v11, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@2b
    sub-int v2, v11, v1

    #@2d
    .line 394
    .local v2, "colCenterRtl":I
    :goto_1
    iget v11, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@2f
    add-int/2addr v11, v0

    #@30
    rem-int/lit8 v4, v11, 0x7

    #@32
    .line 395
    .local v4, "dayOfWeek":I
    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->getDayOfWeekLabel(I)Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    .line 396
    .local v7, "label":Ljava/lang/String;
    int-to-float v11, v2

    #@37
    int-to-float v12, v9

    #@38
    sub-float/2addr v12, v5

    #@39
    invoke-virtual {p1, v7, v11, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@3c
    .line 385
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 391
    .end local v2    # "colCenterRtl":I
    .end local v4    # "dayOfWeek":I
    .end local v7    # "label":Ljava/lang/String;
    :cond_0
    move v2, v1

    #@40
    .restart local v2    # "colCenterRtl":I
    goto :goto_1

    #@41
    .line 375
    .end local v1    # "colCenter":I
    .end local v2    # "colCenterRtl":I
    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    #@2
    .line 366
    iget v3, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@4
    int-to-float v3, v3

    #@5
    div-float v1, v3, v5

    #@7
    .line 369
    .local v1, "x":F
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@9
    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    #@c
    move-result v3

    #@d
    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@f
    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    #@12
    move-result v4

    #@13
    add-float v0, v3, v4

    #@15
    .line 370
    .local v0, "lineHeight":F
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@17
    int-to-float v3, v3

    #@18
    sub-float/2addr v3, v0

    #@19
    div-float v2, v3, v5

    #@1b
    .line 372
    .local v2, "y":F
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getTitle()Ljava/lang/CharSequence;

    #@1e
    move-result-object v3

    #@1f
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@25
    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@28
    .line 365
    return-void
.end method

.method private findDayOffset()I
    .locals 3

    #@0
    .prologue
    .line 669
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    #@2
    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 670
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    #@8
    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@a
    if-ge v1, v2, :cond_0

    #@c
    .line 671
    add-int/lit8 v1, v0, 0x7

    #@e
    return v1

    #@f
    .line 673
    :cond_0
    return v0
.end method

.method private getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 723
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    #@3
    move-result v8

    #@4
    if-nez v8, :cond_0

    #@6
    .line 724
    const/4 v8, 0x0

    #@7
    return v8

    #@8
    .line 727
    :cond_0
    add-int/lit8 v8, p1, -0x1

    #@a
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    #@d
    move-result v9

    #@e
    add-int v3, v8, v9

    #@10
    .line 730
    .local v3, "index":I
    rem-int/lit8 v0, v3, 0x7

    #@12
    .line 731
    .local v0, "col":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@14
    .line 733
    .local v1, "colWidth":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    #@17
    move-result v8

    #@18
    if-eqz v8, :cond_1

    #@1a
    .line 734
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getWidth()I

    #@1d
    move-result v8

    #@1e
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    #@21
    move-result v9

    #@22
    sub-int/2addr v8, v9

    #@23
    add-int/lit8 v9, v0, 0x1

    #@25
    mul-int/2addr v9, v1

    #@26
    sub-int v4, v8, v9

    #@28
    .line 740
    .local v4, "left":I
    :goto_0
    div-int/lit8 v5, v3, 0x7

    #@2a
    .line 741
    .local v5, "row":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    #@2c
    .line 742
    .local v6, "rowHeight":I
    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@2e
    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    #@30
    add-int v2, v8, v9

    #@32
    .line 743
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    #@35
    move-result v8

    #@36
    add-int/2addr v8, v2

    #@37
    mul-int v9, v5, v6

    #@39
    add-int v7, v8, v9

    #@3b
    .line 745
    .local v7, "top":I
    add-int v8, v4, v1

    #@3d
    add-int v9, v7, v6

    #@3f
    invoke-virtual {p2, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    #@42
    .line 747
    const/4 v8, 0x1

    #@43
    return v8

    #@44
    .line 736
    .end local v2    # "headerHeight":I
    .end local v4    # "left":I
    .end local v5    # "row":I
    .end local v6    # "rowHeight":I
    .end local v7    # "top":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    #@47
    move-result v8

    #@48
    mul-int v9, v0, v1

    #@4a
    add-int v4, v8, v9

    #@4c
    .restart local v4    # "left":I
    goto :goto_0
.end method

.method private getDayAtLocation(II)I
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 686
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    #@4
    move-result v8

    #@5
    sub-int v4, p1, v8

    #@7
    .line 687
    .local v4, "paddedX":I
    if-ltz v4, :cond_0

    #@9
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@b
    if-lt v4, v8, :cond_1

    #@d
    .line 688
    :cond_0
    return v10

    #@e
    .line 691
    :cond_1
    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@10
    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    #@12
    add-int v2, v8, v9

    #@14
    .line 692
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    #@17
    move-result v8

    #@18
    sub-int v6, p2, v8

    #@1a
    .line 693
    .local v6, "paddedY":I
    if-lt v6, v2, :cond_2

    #@1c
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    #@1e
    if-lt v6, v8, :cond_3

    #@20
    .line 694
    :cond_2
    return v10

    #@21
    .line 699
    :cond_3
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_4

    #@27
    .line 700
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@29
    sub-int v5, v8, v4

    #@2b
    .line 705
    .local v5, "paddedXRtl":I
    :goto_0
    sub-int v8, v6, v2

    #@2d
    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    #@2f
    div-int v7, v8, v9

    #@31
    .line 706
    .local v7, "row":I
    mul-int/lit8 v8, v5, 0x7

    #@33
    iget v9, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@35
    div-int v0, v8, v9

    #@37
    .line 707
    .local v0, "col":I
    mul-int/lit8 v8, v7, 0x7

    #@39
    add-int v3, v0, v8

    #@3b
    .line 708
    .local v3, "index":I
    add-int/lit8 v8, v3, 0x1

    #@3d
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    #@40
    move-result v9

    #@41
    sub-int v1, v8, v9

    #@43
    .line 709
    .local v1, "day":I
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    #@46
    move-result v8

    #@47
    if-nez v8, :cond_5

    #@49
    .line 710
    return v10

    #@4a
    .line 702
    .end local v0    # "col":I
    .end local v1    # "day":I
    .end local v3    # "index":I
    .end local v5    # "paddedXRtl":I
    .end local v7    # "row":I
    :cond_4
    move v5, v4

    #@4b
    .restart local v5    # "paddedXRtl":I
    goto :goto_0

    #@4c
    .line 713
    .restart local v0    # "col":I
    .restart local v1    # "day":I
    .restart local v3    # "index":I
    .restart local v7    # "row":I
    :cond_5
    return v1
.end method

.method private getDayOfWeekLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "dayOfWeek"    # I

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabelCalendar:Ljava/util/Calendar;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    #@6
    .line 402
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekFormatter:Ljava/text/SimpleDateFormat;

    #@8
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabelCalendar:Ljava/util/Calendar;

    #@a
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method private static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    #@0
    .prologue
    .line 577
    packed-switch p0, :pswitch_data_0

    #@3
    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Invalid Month"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 585
    :pswitch_0
    const/16 v0, 0x1f

    #@e
    return v0

    #@f
    .line 590
    :pswitch_1
    const/16 v0, 0x1e

    #@11
    return v0

    #@12
    .line 592
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    #@14
    if-nez v0, :cond_0

    #@16
    const/16 v0, 0x1d

    #@18
    :goto_0
    return v0

    #@19
    :cond_0
    const/16 v0, 0x1c

    #@1b
    goto :goto_0

    #@1c
    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 242
    const v6, 0x1040562

    #@5
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    .line 243
    .local v5, "monthTypeface":Ljava/lang/String;
    const v6, 0x1040563

    #@c
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 244
    .local v1, "dayOfWeekTypeface":Ljava/lang/String;
    const v6, 0x1040564

    #@13
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 247
    .local v3, "dayTypeface":Ljava/lang/String;
    const v6, 0x1050122

    #@1a
    .line 246
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1d
    move-result v4

    #@1e
    .line 249
    .local v4, "monthTextSize":I
    const v6, 0x1050123

    #@21
    .line 248
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@24
    move-result v0

    #@25
    .line 251
    .local v0, "dayOfWeekTextSize":I
    const v6, 0x1050124

    #@28
    .line 250
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2b
    move-result v2

    #@2c
    .line 253
    .local v2, "dayTextSize":I
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@2e
    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    #@31
    .line 254
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@33
    int-to-float v7, v4

    #@34
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    #@37
    .line 255
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@39
    invoke-static {v5, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@40
    .line 256
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@42
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@44
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@47
    .line 257
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@49
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@4b
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@4e
    .line 259
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@50
    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    #@53
    .line 260
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@55
    int-to-float v7, v0

    #@56
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    #@59
    .line 261
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@5b
    invoke-static {v1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@62
    .line 262
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@64
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@66
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@69
    .line 263
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@6b
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@6d
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@70
    .line 265
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@72
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@75
    .line 266
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@77
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@79
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@7c
    .line 268
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    #@7e
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@81
    .line 269
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    #@83
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@85
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@88
    .line 271
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@8a
    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    #@8d
    .line 272
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@8f
    int-to-float v7, v2

    #@90
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    #@93
    .line 273
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@95
    invoke-static {v3, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@9c
    .line 274
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@9e
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@a0
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@a3
    .line 275
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@a5
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@a7
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@aa
    .line 241
    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 2
    .param p1, "day"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 472
    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    #@3
    if-lt p1, v1, :cond_0

    #@5
    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    #@7
    if-gt p1, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private isValidDayOfMonth(I)Z
    .locals 3
    .param p1, "day"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 476
    if-lt p1, v0, :cond_0

    #@4
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@6
    if-gt p1, v2, :cond_0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    move v0, v1

    #@a
    goto :goto_0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 3
    .param p0, "day"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 480
    if-lt p0, v0, :cond_0

    #@4
    const/4 v2, 0x7

    #@5
    if-gt p0, v2, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    move v0, v1

    #@9
    goto :goto_0
.end method

.method private static isValidMonth(I)Z
    .locals 2
    .param p0, "month"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 484
    if-ltz p0, :cond_0

    #@3
    const/16 v1, 0xb

    #@5
    if-gt p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private onDayClicked(I)Z
    .locals 4
    .param p1, "day"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 757
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 761
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 762
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@14
    move-result-object v0

    #@15
    .line 763
    .local v0, "date":Ljava/util/Calendar;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    #@17
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    #@19
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    #@1c
    .line 764
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    #@1e
    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Ljava/util/Calendar;)V

    #@21
    .line 768
    .end local v0    # "date":Ljava/util/Calendar;
    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@23
    invoke-virtual {v1, p1, v3}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    #@26
    .line 769
    return v3

    #@27
    .line 758
    :cond_1
    const/4 v1, 0x0

    #@28
    return v1
.end method

.method private sameDay(ILjava/util/Calendar;)Z
    .locals 4
    .param p1, "day"    # I
    .param p2, "today"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 599
    iget v2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    #@4
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    #@7
    move-result v3

    #@8
    if-ne v2, v3, :cond_1

    #@a
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    #@c
    const/4 v3, 0x2

    #@d
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    #@10
    move-result v3

    #@11
    if-ne v2, v3, :cond_1

    #@13
    .line 600
    const/4 v2, 0x5

    #@14
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    #@17
    move-result v2

    #@18
    if-ne p1, v2, :cond_0

    #@1a
    .line 599
    :goto_0
    return v0

    #@1b
    :cond_0
    move v0, v1

    #@1c
    .line 600
    goto :goto_0

    #@1d
    :cond_1
    move v0, v1

    #@1e
    .line 599
    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public getCellWidth()I
    .locals 1

    #@0
    .prologue
    .line 208
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@2
    return v0
.end method

.method public getMonthHeight()I
    .locals 1

    #@0
    .prologue
    .line 204
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@2
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 233
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTitleFormatter:Ljava/text/SimpleDateFormat;

    #@6
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    #@8
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    #@12
    .line 235
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    #@14
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    .line 355
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    #@7
    move-result v1

    #@8
    .line 356
    .local v1, "paddingTop":I
    int-to-float v2, v0

    #@9
    int-to-float v3, v1

    #@a
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@d
    .line 358
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    #@10
    .line 359
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    #@13
    .line 360
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    #@16
    .line 362
    neg-int v2, v0

    #@17
    int-to-float v2, v2

    #@18
    neg-int v3, v1

    #@19
    int-to-float v3, v3

    #@1a
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@1d
    .line 353
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 624
    if-nez p1, :cond_0

    #@2
    .line 625
    return-void

    #@3
    .line 629
    :cond_0
    sub-int v17, p4, p2

    #@5
    .line 630
    .local v17, "w":I
    sub-int v3, p5, p3

    #@7
    .line 631
    .local v3, "h":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    #@a
    move-result v13

    #@b
    .line 632
    .local v13, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    #@e
    move-result v15

    #@f
    .line 633
    .local v15, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    #@12
    move-result v14

    #@13
    .line 634
    .local v14, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    #@16
    move-result v12

    #@17
    .line 635
    .local v12, "paddingBottom":I
    sub-int v10, v17, v14

    #@19
    .line 636
    .local v10, "paddedRight":I
    sub-int v8, v3, v12

    #@1b
    .line 637
    .local v8, "paddedBottom":I
    sub-int v11, v10, v13

    #@1d
    .line 638
    .local v11, "paddedWidth":I
    sub-int v9, v8, v15

    #@1f
    .line 639
    .local v9, "paddedHeight":I
    move-object/from16 v0, p0

    #@21
    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@23
    move/from16 v18, v0

    #@25
    move/from16 v0, v18

    #@27
    if-eq v11, v0, :cond_1

    #@29
    move-object/from16 v0, p0

    #@2b
    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    #@2d
    move/from16 v18, v0

    #@2f
    move/from16 v0, v18

    #@31
    if-ne v9, v0, :cond_2

    #@33
    .line 640
    :cond_1
    return-void

    #@34
    .line 643
    :cond_2
    move-object/from16 v0, p0

    #@36
    iput v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@38
    .line 644
    move-object/from16 v0, p0

    #@3a
    iput v9, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    #@3c
    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getMeasuredHeight()I

    #@3f
    move-result v18

    #@40
    sub-int v18, v18, v15

    #@42
    sub-int v6, v18, v12

    #@44
    .line 649
    .local v6, "measuredPaddedHeight":I
    int-to-float v0, v9

    #@45
    move/from16 v18, v0

    #@47
    int-to-float v0, v6

    #@48
    move/from16 v19, v0

    #@4a
    div-float v16, v18, v19

    #@4c
    .line 650
    .local v16, "scaleH":F
    move-object/from16 v0, p0

    #@4e
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    #@50
    move/from16 v18, v0

    #@52
    move/from16 v0, v18

    #@54
    int-to-float v0, v0

    #@55
    move/from16 v18, v0

    #@57
    mul-float v18, v18, v16

    #@59
    move/from16 v0, v18

    #@5b
    float-to-int v7, v0

    #@5c
    .line 651
    .local v7, "monthHeight":I
    move-object/from16 v0, p0

    #@5e
    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@60
    move/from16 v18, v0

    #@62
    div-int/lit8 v2, v18, 0x7

    #@64
    .line 652
    .local v2, "cellWidth":I
    move-object/from16 v0, p0

    #@66
    iput v7, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@68
    .line 653
    move-object/from16 v0, p0

    #@6a
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    #@6c
    move/from16 v18, v0

    #@6e
    move/from16 v0, v18

    #@70
    int-to-float v0, v0

    #@71
    move/from16 v18, v0

    #@73
    mul-float v18, v18, v16

    #@75
    move/from16 v0, v18

    #@77
    float-to-int v0, v0

    #@78
    move/from16 v18, v0

    #@7a
    move/from16 v0, v18

    #@7c
    move-object/from16 v1, p0

    #@7e
    iput v0, v1, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    #@80
    .line 654
    move-object/from16 v0, p0

    #@82
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    #@84
    move/from16 v18, v0

    #@86
    move/from16 v0, v18

    #@88
    int-to-float v0, v0

    #@89
    move/from16 v18, v0

    #@8b
    mul-float v18, v18, v16

    #@8d
    move/from16 v0, v18

    #@8f
    float-to-int v0, v0

    #@90
    move/from16 v18, v0

    #@92
    move/from16 v0, v18

    #@94
    move-object/from16 v1, p0

    #@96
    iput v0, v1, Landroid/widget/SimpleMonthView;->mDayHeight:I

    #@98
    .line 655
    move-object/from16 v0, p0

    #@9a
    iput v2, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@9c
    .line 659
    div-int/lit8 v18, v2, 0x2

    #@9e
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    #@a1
    move-result v19

    #@a2
    add-int v5, v18, v19

    #@a4
    .line 660
    .local v5, "maxSelectorWidth":I
    move-object/from16 v0, p0

    #@a6
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    #@a8
    move/from16 v18, v0

    #@aa
    div-int/lit8 v18, v18, 0x2

    #@ac
    add-int v4, v18, v12

    #@ae
    .line 661
    .local v4, "maxSelectorHeight":I
    move-object/from16 v0, p0

    #@b0
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    #@b2
    move/from16 v18, v0

    #@b4
    .line 662
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    #@b7
    move-result v19

    #@b8
    .line 661
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    #@bb
    move-result v18

    #@bc
    move/from16 v0, v18

    #@be
    move-object/from16 v1, p0

    #@c0
    iput v0, v1, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    #@c2
    .line 665
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@c6
    move-object/from16 v18, v0

    #@c8
    invoke-virtual/range {v18 .. v18}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    #@cb
    .line 623
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 605
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    #@2
    mul-int/lit8 v4, v4, 0x6

    #@4
    .line 606
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    #@6
    .line 605
    add-int/2addr v4, v5

    #@7
    .line 606
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    #@9
    .line 605
    add-int/2addr v4, v5

    #@a
    .line 607
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    #@d
    move-result v5

    #@e
    .line 605
    add-int/2addr v4, v5

    #@f
    .line 607
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    #@12
    move-result v5

    #@13
    .line 605
    add-int v0, v4, v5

    #@15
    .line 608
    .local v0, "preferredHeight":I
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    #@17
    mul-int/lit8 v4, v4, 0x7

    #@19
    .line 609
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingStart()I

    #@1c
    move-result v5

    #@1d
    .line 608
    add-int/2addr v4, v5

    #@1e
    .line 609
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingEnd()I

    #@21
    move-result v5

    #@22
    .line 608
    add-int v1, v4, v5

    #@24
    .line 610
    .local v1, "preferredWidth":I
    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    #@27
    move-result v3

    #@28
    .line 611
    .local v3, "resolvedWidth":I
    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    #@2b
    move-result v2

    #@2c
    .line 612
    .local v2, "resolvedHeight":I
    invoke-virtual {p0, v3, v2}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    #@2f
    .line 604
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 617
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    #@3
    .line 619
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    #@6
    .line 616
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    #@2
    const/4 v6, 0x0

    #@3
    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@6
    move-result v5

    #@7
    add-float/2addr v5, v7

    #@8
    float-to-int v3, v5

    #@9
    .line 322
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@c
    move-result v5

    #@d
    add-float/2addr v5, v7

    #@e
    float-to-int v4, v5

    #@f
    .line 324
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@12
    move-result v0

    #@13
    .line 325
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@16
    .line 349
    :cond_0
    :goto_0
    const/4 v5, 0x1

    #@17
    return v5

    #@18
    .line 328
    :pswitch_0
    invoke-direct {p0, v3, v4}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    #@1b
    move-result v2

    #@1c
    .line 329
    .local v2, "touchedItem":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    #@1e
    if-eq v5, v2, :cond_1

    #@20
    .line 330
    iput v2, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    #@22
    .line 331
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@25
    .line 333
    :cond_1
    if-nez v0, :cond_0

    #@27
    if-gez v2, :cond_0

    #@29
    .line 335
    return v6

    #@2a
    .line 340
    .end local v2    # "touchedItem":I
    :pswitch_1
    invoke-direct {p0, v3, v4}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    #@2d
    move-result v1

    #@2e
    .line 341
    .local v1, "clickedDay":I
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    #@31
    .line 345
    .end local v1    # "clickedDay":I
    :pswitch_2
    const/4 v5, -0x1

    #@32
    iput v5, p0, Landroid/widget/SimpleMonthView;->mTouchedItem:I

    #@34
    .line 346
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@37
    goto :goto_0

    #@38
    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayHighlightColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 304
    const/16 v1, 0x18

    #@2
    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    .line 303
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@a
    move-result v0

    #@b
    .line 305
    .local v0, "pressedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    #@d
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@10
    .line 306
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@13
    .line 302
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@2
    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    #@5
    .line 219
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@8
    .line 217
    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayOfWeekTextColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 285
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@6
    move-result v0

    #@7
    .line 286
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@9
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    #@c
    .line 287
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@f
    .line 284
    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayBackgroundColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 297
    const/16 v1, 0x28

    #@2
    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    .line 296
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@a
    move-result v0

    #@b
    .line 298
    .local v0, "activatedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@d
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@10
    .line 299
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@13
    .line 295
    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 223
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@2
    invoke-direct {p0, v1, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    .line 224
    .local v0, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    #@8
    .line 225
    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    #@a
    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@d
    .line 222
    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "dayTextColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 291
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 292
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@5
    .line 290
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "weekStart"    # I

    #@0
    .prologue
    .line 508
    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 509
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@8
    .line 515
    :goto_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@a
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    #@d
    .line 516
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@10
    .line 507
    return-void

    #@11
    .line 511
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    #@13
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@19
    goto :goto_0
.end method

.method setMonthParams(IIIIII)V
    .locals 7
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 537
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@3
    .line 539
    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 540
    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    #@b
    .line 542
    :cond_0
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    #@d
    .line 544
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    #@f
    iget v4, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    #@11
    const/4 v5, 0x2

    #@12
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    #@15
    .line 545
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    #@17
    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    #@19
    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    #@1c
    .line 546
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    #@1e
    const/4 v4, 0x5

    #@1f
    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    #@22
    .line 547
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    #@24
    const/4 v4, 0x7

    #@25
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@28
    move-result v3

    #@29
    iput v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    #@2b
    .line 549
    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 550
    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@33
    .line 556
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@36
    move-result-object v2

    #@37
    .line 557
    .local v2, "today":Ljava/util/Calendar;
    const/4 v3, -0x1

    #@38
    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    #@3a
    .line 558
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    #@3c
    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    #@3e
    invoke-static {v3, v4}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    #@41
    move-result v3

    #@42
    iput v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@44
    .line 559
    const/4 v1, 0x0

    #@45
    .local v1, "i":I
    :goto_1
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@47
    if-ge v1, v3, :cond_3

    #@49
    .line 560
    add-int/lit8 v0, v1, 0x1

    #@4b
    .line 561
    .local v0, "day":I
    invoke-direct {p0, v0, v2}, Landroid/widget/SimpleMonthView;->sameDay(ILjava/util/Calendar;)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_1

    #@51
    .line 562
    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    #@53
    .line 559
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_1

    #@56
    .line 552
    .end local v0    # "day":I
    .end local v1    # "i":I
    .end local v2    # "today":Ljava/util/Calendar;
    :cond_2
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    #@58
    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@5b
    move-result v3

    #@5c
    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@5e
    goto :goto_0

    #@5f
    .line 566
    .restart local v1    # "i":I
    .restart local v2    # "today":Ljava/util/Calendar;
    :cond_3
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@61
    invoke-static {p5, v6, v3}, Landroid/util/MathUtils;->constrain(III)I

    #@64
    move-result v3

    #@65
    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    #@67
    .line 567
    iget v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    #@69
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@6b
    invoke-static {p6, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    #@6e
    move-result v3

    #@6f
    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    #@71
    .line 570
    const/4 v3, 0x0

    #@72
    iput-object v3, p0, Landroid/widget/SimpleMonthView;->mTitle:Ljava/lang/CharSequence;

    #@74
    .line 573
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@76
    invoke-virtual {v3}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    #@79
    .line 536
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@2
    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    #@5
    .line 214
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@8
    .line 211
    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "monthTextColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 279
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@6
    move-result v0

    #@7
    .line 280
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@9
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    #@c
    .line 281
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@f
    .line 278
    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SimpleMonthView$OnDayClickListener;

    #@0
    .prologue
    .line 310
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    #@2
    .line 309
    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    #@0
    .prologue
    .line 494
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@2
    .line 497
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@4
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    #@7
    .line 498
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    #@a
    .line 493
    return-void
.end method
