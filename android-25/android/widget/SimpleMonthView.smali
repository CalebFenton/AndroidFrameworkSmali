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

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Landroid/icu/util/Calendar;

.field private mCellWidth:I

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

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

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

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
    .line 147
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 151
    const v0, 0x101035c

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 155
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 71
    new-instance v1, Landroid/text/TextPaint;

    #@7
    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    #@a
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@c
    .line 72
    new-instance v1, Landroid/text/TextPaint;

    #@e
    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    #@11
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@13
    .line 73
    new-instance v1, Landroid/text/TextPaint;

    #@15
    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    #@18
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@1a
    .line 74
    new-instance v1, Landroid/graphics/Paint;

    #@1c
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@1f
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@21
    .line 75
    new-instance v1, Landroid/graphics/Paint;

    #@23
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@26
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    #@28
    .line 76
    new-instance v1, Landroid/graphics/Paint;

    #@2a
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #@2d
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    #@2f
    .line 79
    const/4 v1, 0x7

    #@30
    new-array v1, v1, [Ljava/lang/String;

    #@32
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    #@34
    .line 111
    iput v2, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@36
    .line 117
    iput v2, p0, Landroid/widget/SimpleMonthView;->mToday:I

    #@38
    .line 120
    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@3a
    .line 132
    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    #@3c
    .line 135
    const/16 v1, 0x1f

    #@3e
    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    #@40
    .line 142
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@42
    .line 143
    iput v2, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    #@44
    .line 144
    const/4 v1, 0x0

    #@45
    iput-boolean v1, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    #@47
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4a
    move-result-object v0

    #@4b
    .line 162
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105014e

    #@4e
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@51
    move-result v1

    #@52
    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    #@54
    .line 163
    const v1, 0x105014f

    #@57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@5a
    move-result v1

    #@5b
    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    #@5d
    .line 164
    const v1, 0x1050150

    #@60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@63
    move-result v1

    #@64
    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    #@66
    .line 165
    const v1, 0x1050151

    #@69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@6c
    move-result v1

    #@6d
    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    #@6f
    .line 167
    const v1, 0x1050152

    #@72
    .line 166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@75
    move-result v1

    #@76
    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    #@78
    .line 170
    new-instance v1, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@7a
    invoke-direct {v1, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    #@7d
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@7f
    .line 171
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@81
    invoke-virtual {p0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@84
    .line 172
    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@87
    .line 174
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@8a
    move-result-object v1

    #@8b
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@8d
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    #@8f
    .line 175
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    #@91
    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    #@94
    move-result-object v1

    #@95
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    #@97
    .line 177
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    #@99
    invoke-static {v1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@9c
    move-result-object v1

    #@9d
    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    #@9f
    .line 179
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    #@a2
    .line 180
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    #@a5
    .line 182
    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    #@a8
    .line 158
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
    .line 210
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@4
    .line 211
    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    #@6
    .line 210
    invoke-virtual {v4, v7, v5, v6, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object v2

    #@a
    .line 213
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/16 v4, 0xc

    #@c
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 214
    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@12
    .line 215
    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@19
    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    #@1c
    move-result v4

    #@1d
    float-to-int v4, v4

    #@1e
    .line 218
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@21
    move-result v4

    #@22
    int-to-float v4, v4

    #@23
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    #@26
    .line 221
    const/4 v4, 0x3

    #@27
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@2a
    move-result-object v3

    #@2b
    .line 222
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_1

    #@2d
    .line 223
    sget-object v4, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    #@2f
    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@32
    move-result v0

    #@33
    .line 224
    .local v0, "enabledColor":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@36
    .line 227
    .end local v0    # "enabledColor":I
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    .line 229
    return-object v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 659
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@4
    move-object/from16 v18, v0

    #@6
    .line 660
    .local v18, "p":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@8
    iget v0, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@a
    move/from16 v24, v0

    #@c
    move-object/from16 v0, p0

    #@e
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    #@10
    move/from16 v25, v0

    #@12
    add-int v13, v24, v25

    #@14
    .line 661
    .local v13, "headerHeight":I
    move-object/from16 v0, p0

    #@16
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    #@18
    move/from16 v21, v0

    #@1a
    .line 662
    .local v21, "rowHeight":I
    move-object/from16 v0, p0

    #@1c
    iget v9, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@1e
    .line 665
    .local v9, "colWidth":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->ascent()F

    #@21
    move-result v24

    #@22
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->descent()F

    #@25
    move-result v25

    #@26
    add-float v24, v24, v25

    #@28
    const/high16 v25, 0x40000000    # 2.0f

    #@2a
    div-float v12, v24, v25

    #@2c
    .line 666
    .local v12, "halfLineHeight":F
    div-int/lit8 v24, v21, 0x2

    #@2e
    add-int v20, v13, v24

    #@30
    .line 668
    .local v20, "rowCenter":I
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
    move/from16 v24, v0

    #@3b
    move/from16 v0, v24

    #@3d
    if-gt v10, v0, :cond_b

    #@3f
    .line 669
    mul-int v24, v9, v6

    #@41
    div-int/lit8 v25, v9, 0x2

    #@43
    add-int v7, v24, v25

    #@45
    .line 671
    .local v7, "colCenter":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    #@48
    move-result v24

    #@49
    if-eqz v24, :cond_4

    #@4b
    .line 672
    move-object/from16 v0, p0

    #@4d
    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@4f
    move/from16 v24, v0

    #@51
    sub-int v8, v24, v7

    #@53
    .line 677
    .local v8, "colCenterRtl":I
    :goto_1
    const/16 v22, 0x0

    #@55
    .line 679
    .local v22, "stateMask":I
    move-object/from16 v0, p0

    #@57
    invoke-direct {v0, v10}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    #@5a
    move-result v15

    #@5b
    .line 680
    .local v15, "isDayEnabled":Z
    if-eqz v15, :cond_0

    #@5d
    .line 681
    const/16 v22, 0x8

    #@5f
    .line 684
    :cond_0
    move-object/from16 v0, p0

    #@61
    iget v0, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@63
    move/from16 v24, v0

    #@65
    move/from16 v0, v24

    #@67
    if-ne v0, v10, :cond_5

    #@69
    const/4 v14, 0x1

    #@6a
    .line 685
    .local v14, "isDayActivated":Z
    :goto_2
    move-object/from16 v0, p0

    #@6c
    iget v0, v0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@6e
    move/from16 v24, v0

    #@70
    move/from16 v0, v24

    #@72
    if-ne v0, v10, :cond_6

    #@74
    const/16 v16, 0x1

    #@76
    .line 686
    .local v16, "isDayHighlighted":Z
    :goto_3
    if-eqz v14, :cond_8

    #@78
    .line 687
    or-int/lit8 v22, v22, 0x20

    #@7a
    .line 690
    if-eqz v16, :cond_7

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    #@80
    move-object/from16 v19, v0

    #@82
    .line 692
    .local v19, "paint":Landroid/graphics/Paint;
    :goto_4
    int-to-float v0, v8

    #@83
    move/from16 v24, v0

    #@85
    move/from16 v0, v20

    #@87
    int-to-float v0, v0

    #@88
    move/from16 v25, v0

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    #@8e
    move/from16 v26, v0

    #@90
    move/from16 v0, v26

    #@92
    int-to-float v0, v0

    #@93
    move/from16 v26, v0

    #@95
    move-object/from16 v0, p1

    #@97
    move/from16 v1, v24

    #@99
    move/from16 v2, v25

    #@9b
    move/from16 v3, v26

    #@9d
    move-object/from16 v4, v19

    #@9f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@a2
    .line 703
    .end local v19    # "paint":Landroid/graphics/Paint;
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    #@a4
    iget v0, v0, Landroid/widget/SimpleMonthView;->mToday:I

    #@a6
    move/from16 v24, v0

    #@a8
    move/from16 v0, v24

    #@aa
    if-ne v0, v10, :cond_9

    #@ac
    const/16 v17, 0x1

    #@ae
    .line 705
    .local v17, "isDayToday":Z
    :goto_6
    if-eqz v17, :cond_2

    #@b0
    if-eqz v14, :cond_a

    #@b2
    .line 708
    :cond_2
    invoke-static/range {v22 .. v22}, Landroid/util/StateSet;->get(I)[I

    #@b5
    move-result-object v23

    #@b6
    .line 709
    .local v23, "stateSet":[I
    move-object/from16 v0, p0

    #@b8
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    #@ba
    move-object/from16 v24, v0

    #@bc
    const/16 v25, 0x0

    #@be
    move-object/from16 v0, v24

    #@c0
    move-object/from16 v1, v23

    #@c2
    move/from16 v2, v25

    #@c4
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@c7
    move-result v11

    #@c8
    .line 711
    .end local v23    # "stateSet":[I
    .local v11, "dayTextColor":I
    :goto_7
    move-object/from16 v0, v18

    #@ca
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    #@cd
    .line 713
    move-object/from16 v0, p0

    #@cf
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    #@d1
    move-object/from16 v24, v0

    #@d3
    int-to-long v0, v10

    #@d4
    move-wide/from16 v26, v0

    #@d6
    move-object/from16 v0, v24

    #@d8
    move-wide/from16 v1, v26

    #@da
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    #@dd
    move-result-object v24

    #@de
    int-to-float v0, v8

    #@df
    move/from16 v25, v0

    #@e1
    move/from16 v0, v20

    #@e3
    int-to-float v0, v0

    #@e4
    move/from16 v26, v0

    #@e6
    sub-float v26, v26, v12

    #@e8
    move-object/from16 v0, p1

    #@ea
    move-object/from16 v1, v24

    #@ec
    move/from16 v2, v25

    #@ee
    move/from16 v3, v26

    #@f0
    move-object/from16 v4, v18

    #@f2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@f5
    .line 715
    add-int/lit8 v6, v6, 0x1

    #@f7
    .line 717
    const/16 v24, 0x7

    #@f9
    move/from16 v0, v24

    #@fb
    if-ne v6, v0, :cond_3

    #@fd
    .line 718
    const/4 v6, 0x0

    #@fe
    .line 719
    add-int v20, v20, v21

    #@100
    .line 668
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@102
    goto/16 :goto_0

    #@104
    .line 674
    .end local v8    # "colCenterRtl":I
    .end local v11    # "dayTextColor":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayEnabled":Z
    .end local v16    # "isDayHighlighted":Z
    .end local v17    # "isDayToday":Z
    .end local v22    # "stateMask":I
    :cond_4
    move v8, v7

    #@105
    .restart local v8    # "colCenterRtl":I
    goto/16 :goto_1

    #@107
    .line 684
    .restart local v15    # "isDayEnabled":Z
    .restart local v22    # "stateMask":I
    :cond_5
    const/4 v14, 0x0

    #@108
    .restart local v14    # "isDayActivated":Z
    goto/16 :goto_2

    #@10a
    .line 685
    :cond_6
    const/16 v16, 0x0

    #@10c
    .restart local v16    # "isDayHighlighted":Z
    goto/16 :goto_3

    #@10e
    .line 691
    :cond_7
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@112
    move-object/from16 v19, v0

    #@114
    .restart local v19    # "paint":Landroid/graphics/Paint;
    goto/16 :goto_4

    #@116
    .line 693
    .end local v19    # "paint":Landroid/graphics/Paint;
    :cond_8
    if-eqz v16, :cond_1

    #@118
    .line 694
    or-int/lit8 v22, v22, 0x10

    #@11a
    .line 696
    if-eqz v15, :cond_1

    #@11c
    .line 698
    int-to-float v0, v8

    #@11d
    move/from16 v24, v0

    #@11f
    move/from16 v0, v20

    #@121
    int-to-float v0, v0

    #@122
    move/from16 v25, v0

    #@124
    .line 699
    move-object/from16 v0, p0

    #@126
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    #@128
    move/from16 v26, v0

    #@12a
    move/from16 v0, v26

    #@12c
    int-to-float v0, v0

    #@12d
    move/from16 v26, v0

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    #@133
    move-object/from16 v27, v0

    #@135
    .line 698
    move-object/from16 v0, p1

    #@137
    move/from16 v1, v24

    #@139
    move/from16 v2, v25

    #@13b
    move/from16 v3, v26

    #@13d
    move-object/from16 v4, v27

    #@13f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@142
    goto/16 :goto_5

    #@144
    .line 703
    :cond_9
    const/16 v17, 0x0

    #@146
    goto/16 :goto_6

    #@148
    .line 706
    .restart local v17    # "isDayToday":Z
    :cond_a
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@14c
    move-object/from16 v24, v0

    #@14e
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getColor()I

    #@151
    move-result v11

    #@152
    .restart local v11    # "dayTextColor":I
    goto/16 :goto_7

    #@154
    .line 658
    .end local v7    # "colCenter":I
    .end local v8    # "colCenterRtl":I
    .end local v11    # "dayTextColor":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayEnabled":Z
    .end local v16    # "isDayHighlighted":Z
    .end local v17    # "isDayToday":Z
    .end local v22    # "stateMask":I
    :cond_b
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 632
    iget-object v7, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@2
    .line 633
    .local v7, "p":Landroid/text/TextPaint;
    iget v5, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@4
    .line 634
    .local v5, "headerHeight":I
    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    #@6
    .line 635
    .local v9, "rowHeight":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@8
    .line 638
    .local v3, "colWidth":I
    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    #@b
    move-result v10

    #@c
    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    #@f
    move-result v11

    #@10
    add-float/2addr v10, v11

    #@11
    const/high16 v11, 0x40000000    # 2.0f

    #@13
    div-float v4, v10, v11

    #@15
    .line 639
    .local v4, "halfLineHeight":F
    div-int/lit8 v10, v9, 0x2

    #@17
    add-int v8, v5, v10

    #@19
    .line 641
    .local v8, "rowCenter":I
    const/4 v0, 0x0

    #@1a
    .local v0, "col":I
    :goto_0
    const/4 v10, 0x7

    #@1b
    if-ge v0, v10, :cond_1

    #@1d
    .line 642
    mul-int v10, v3, v0

    #@1f
    div-int/lit8 v11, v3, 0x2

    #@21
    add-int v1, v10, v11

    #@23
    .line 644
    .local v1, "colCenter":I
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@26
    move-result v10

    #@27
    if-eqz v10, :cond_0

    #@29
    .line 645
    iget v10, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@2b
    sub-int v2, v10, v1

    #@2d
    .line 650
    .local v2, "colCenterRtl":I
    :goto_1
    iget-object v10, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    #@2f
    aget-object v6, v10, v0

    #@31
    .line 651
    .local v6, "label":Ljava/lang/String;
    int-to-float v10, v2

    #@32
    int-to-float v11, v8

    #@33
    sub-float/2addr v11, v4

    #@34
    invoke-virtual {p1, v6, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@37
    .line 641
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 647
    .end local v2    # "colCenterRtl":I
    .end local v6    # "label":Ljava/lang/String;
    :cond_0
    move v2, v1

    #@3b
    .restart local v2    # "colCenterRtl":I
    goto :goto_1

    #@3c
    .line 631
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
    .line 618
    iget v3, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@4
    int-to-float v3, v3

    #@5
    div-float v1, v3, v5

    #@7
    .line 621
    .local v1, "x":F
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@9
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    #@c
    move-result v3

    #@d
    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@f
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    #@12
    move-result v4

    #@13
    add-float v0, v3, v4

    #@15
    .line 622
    .local v0, "lineHeight":F
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@17
    int-to-float v3, v3

    #@18
    sub-float/2addr v3, v0

    #@19
    div-float v2, v3, v5

    #@1b
    .line 624
    .local v2, "y":F
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    #@1d
    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@1f
    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@22
    .line 617
    return-void
.end method

.method private ensureFocusedDay()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 580
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 581
    return-void

    #@6
    .line 583
    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    #@8
    if-eq v0, v1, :cond_1

    #@a
    .line 584
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    #@c
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@e
    .line 585
    return-void

    #@f
    .line 587
    :cond_1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@11
    if-eq v0, v1, :cond_2

    #@13
    .line 588
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@15
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@17
    .line 589
    return-void

    #@18
    .line 591
    :cond_2
    const/4 v0, 0x1

    #@19
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@1b
    .line 579
    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 5
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 545
    if-nez p1, :cond_0

    #@2
    .line 546
    const/4 v2, 0x3

    #@3
    return v2

    #@4
    .line 548
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    #@7
    move-result v2

    #@8
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    #@a
    sub-int v0, v2, v3

    #@c
    .line 550
    .local v0, "centerX":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@e
    div-int v2, v0, v2

    #@10
    const/4 v3, 0x0

    #@11
    const/4 v4, 0x6

    #@12
    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    #@15
    move-result v1

    #@16
    .line 551
    .local v1, "columnFromLeft":I
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    rsub-int/lit8 v2, v1, 0x7

    #@1e
    add-int/lit8 v1, v2, -0x1

    #@20
    .end local v1    # "columnFromLeft":I
    :cond_1
    return v1
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 12
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 517
    if-nez p1, :cond_0

    #@3
    .line 518
    const/4 v9, 0x3

    #@4
    return v9

    #@5
    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    #@8
    move-result v0

    #@9
    .line 522
    .local v0, "centerY":I
    iget-object v5, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@b
    .line 523
    .local v5, "p":Landroid/text/TextPaint;
    iget v9, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@d
    iget v11, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    #@f
    add-int v2, v9, v11

    #@11
    .line 524
    .local v2, "headerHeight":I
    iget v8, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    #@13
    .line 527
    .local v8, "rowHeight":I
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    #@16
    move-result v9

    #@17
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    #@1a
    move-result v11

    #@1b
    add-float/2addr v9, v11

    #@1c
    const/high16 v11, 0x40000000    # 2.0f

    #@1e
    div-float v1, v9, v11

    #@20
    .line 528
    .local v1, "halfLineHeight":F
    div-int/lit8 v9, v8, 0x2

    #@22
    add-int v7, v2, v9

    #@24
    .line 530
    .local v7, "rowCenter":I
    int-to-float v9, v0

    #@25
    int-to-float v11, v7

    #@26
    sub-float/2addr v11, v1

    #@27
    sub-float/2addr v9, v11

    #@28
    float-to-int v0, v9

    #@29
    .line 531
    int-to-float v9, v0

    #@2a
    int-to-float v11, v8

    #@2b
    div-float/2addr v9, v11

    #@2c
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    #@2f
    move-result v6

    #@30
    .line 532
    .local v6, "row":I
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    #@33
    move-result v9

    #@34
    iget v11, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@36
    add-int v3, v9, v11

    #@38
    .line 533
    .local v3, "maxDay":I
    div-int/lit8 v11, v3, 0x7

    #@3a
    rem-int/lit8 v9, v3, 0x7

    #@3c
    if-nez v9, :cond_1

    #@3e
    const/4 v9, 0x1

    #@3f
    :goto_0
    sub-int v4, v11, v9

    #@41
    .line 535
    .local v4, "maxRows":I
    invoke-static {v6, v10, v4}, Landroid/util/MathUtils;->constrain(III)I

    #@44
    move-result v6

    #@45
    .line 536
    return v6

    #@46
    .end local v4    # "maxRows":I
    :cond_1
    move v9, v10

    #@47
    .line 533
    goto :goto_0
.end method

.method private findDayOffset()I
    .locals 3

    #@0
    .prologue
    .line 925
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    #@2
    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 926
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    #@8
    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@a
    if-ge v1, v2, :cond_0

    #@c
    .line 927
    add-int/lit8 v1, v0, 0x7

    #@e
    return v1

    #@f
    .line 929
    :cond_0
    return v0
.end method

.method private getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 979
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    #@3
    move-result v8

    #@4
    if-nez v8, :cond_0

    #@6
    .line 980
    const/4 v8, 0x0

    #@7
    return v8

    #@8
    .line 983
    :cond_0
    add-int/lit8 v8, p1, -0x1

    #@a
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    #@d
    move-result v9

    #@e
    add-int v3, v8, v9

    #@10
    .line 986
    .local v3, "index":I
    rem-int/lit8 v0, v3, 0x7

    #@12
    .line 987
    .local v0, "col":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@14
    .line 989
    .local v1, "colWidth":I
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@17
    move-result v8

    #@18
    if-eqz v8, :cond_1

    #@1a
    .line 990
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@1d
    move-result v8

    #@1e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

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
    .line 996
    .local v4, "left":I
    :goto_0
    div-int/lit8 v5, v3, 0x7

    #@2a
    .line 997
    .local v5, "row":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    #@2c
    .line 998
    .local v6, "rowHeight":I
    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@2e
    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    #@30
    add-int v2, v8, v9

    #@32
    .line 999
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@35
    move-result v8

    #@36
    add-int/2addr v8, v2

    #@37
    mul-int v9, v5, v6

    #@39
    add-int v7, v8, v9

    #@3b
    .line 1001
    .local v7, "top":I
    add-int v8, v4, v1

    #@3d
    add-int v9, v7, v6

    #@3f
    invoke-virtual {p2, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    #@42
    .line 1003
    const/4 v8, 0x1

    #@43
    return v8

    #@44
    .line 992
    .end local v2    # "headerHeight":I
    .end local v4    # "left":I
    .end local v5    # "row":I
    .end local v6    # "rowHeight":I
    .end local v7    # "top":I
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

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
    .line 942
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@4
    move-result v8

    #@5
    sub-int v4, p1, v8

    #@7
    .line 943
    .local v4, "paddedX":I
    if-ltz v4, :cond_0

    #@9
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@b
    if-lt v4, v8, :cond_1

    #@d
    .line 944
    :cond_0
    return v10

    #@e
    .line 947
    :cond_1
    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@10
    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    #@12
    add-int v2, v8, v9

    #@14
    .line 948
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@17
    move-result v8

    #@18
    sub-int v6, p2, v8

    #@1a
    .line 949
    .local v6, "paddedY":I
    if-lt v6, v2, :cond_2

    #@1c
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    #@1e
    if-lt v6, v8, :cond_3

    #@20
    .line 950
    :cond_2
    return v10

    #@21
    .line 955
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_4

    #@27
    .line 956
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@29
    sub-int v5, v8, v4

    #@2b
    .line 961
    .local v5, "paddedXRtl":I
    :goto_0
    sub-int v8, v6, v2

    #@2d
    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    #@2f
    div-int v7, v8, v9

    #@31
    .line 962
    .local v7, "row":I
    mul-int/lit8 v8, v5, 0x7

    #@33
    iget v9, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@35
    div-int v0, v8, v9

    #@37
    .line 963
    .local v0, "col":I
    mul-int/lit8 v8, v7, 0x7

    #@39
    add-int v3, v0, v8

    #@3b
    .line 964
    .local v3, "index":I
    add-int/lit8 v8, v3, 0x1

    #@3d
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    #@40
    move-result v9

    #@41
    sub-int v1, v8, v9

    #@43
    .line 965
    .local v1, "day":I
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    #@46
    move-result v8

    #@47
    if-nez v8, :cond_5

    #@49
    .line 966
    return v10

    #@4a
    .line 958
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
    .line 969
    .restart local v0    # "col":I
    .restart local v1    # "day":I
    .restart local v3    # "index":I
    .restart local v7    # "row":I
    :cond_5
    return v1
.end method

.method private static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    #@0
    .prologue
    .line 833
    packed-switch p0, :pswitch_data_0

    #@3
    .line 850
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Invalid Month"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 841
    :pswitch_0
    const/16 v0, 0x1f

    #@e
    return v0

    #@f
    .line 846
    :pswitch_1
    const/16 v0, 0x1e

    #@11
    return v0

    #@12
    .line 848
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
    .line 833
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
    .line 264
    const v6, 0x10405ac

    #@5
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    .line 265
    .local v5, "monthTypeface":Ljava/lang/String;
    const v6, 0x10405ad

    #@c
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 266
    .local v1, "dayOfWeekTypeface":Ljava/lang/String;
    const v6, 0x10405ae

    #@13
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 269
    .local v3, "dayTypeface":Ljava/lang/String;
    const v6, 0x105014b

    #@1a
    .line 268
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1d
    move-result v4

    #@1e
    .line 271
    .local v4, "monthTextSize":I
    const v6, 0x105014c

    #@21
    .line 270
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@24
    move-result v0

    #@25
    .line 273
    .local v0, "dayOfWeekTextSize":I
    const v6, 0x105014d

    #@28
    .line 272
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2b
    move-result v2

    #@2c
    .line 275
    .local v2, "dayTextSize":I
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@2e
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@31
    .line 276
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@33
    int-to-float v7, v4

    #@34
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    #@37
    .line 277
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@39
    invoke-static {v5, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@40
    .line 278
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@42
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@44
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@47
    .line 279
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@49
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@4b
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@4e
    .line 281
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@50
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@53
    .line 282
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@55
    int-to-float v7, v0

    #@56
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    #@59
    .line 283
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@5b
    invoke-static {v1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@62
    .line 284
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@64
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@66
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@69
    .line 285
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@6b
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@6d
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@70
    .line 287
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@72
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@75
    .line 288
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@77
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@79
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@7c
    .line 290
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    #@7e
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@81
    .line 291
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    #@83
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@85
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@88
    .line 293
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    #@8a
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@8d
    .line 294
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    #@8f
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@91
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@94
    .line 296
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@96
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@99
    .line 297
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@9b
    int-to-float v7, v2

    #@9c
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    #@9f
    .line 298
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@a1
    invoke-static {v3, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@a4
    move-result-object v7

    #@a5
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@a8
    .line 299
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@aa
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@ac
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@af
    .line 300
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@b1
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@b3
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@b6
    .line 263
    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 2
    .param p1, "day"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 725
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

.method private isFirstDayOfWeek(I)Z
    .locals 3
    .param p1, "day"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 595
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    #@4
    move-result v0

    #@5
    .line 596
    .local v0, "offset":I
    add-int v2, v0, p1

    #@7
    add-int/lit8 v2, v2, -0x1

    #@9
    rem-int/lit8 v2, v2, 0x7

    #@b
    if-nez v2, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    :cond_0
    return v1
.end method

.method private isLastDayOfWeek(I)Z
    .locals 3
    .param p1, "day"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 600
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    #@4
    move-result v0

    #@5
    .line 601
    .local v0, "offset":I
    add-int v2, v0, p1

    #@7
    rem-int/lit8 v2, v2, 0x7

    #@9
    if-nez v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :cond_0
    return v1
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
    .line 729
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
    .line 733
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
    .line 737
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

.method private moveOneDay(Z)Z
    .locals 3
    .param p1, "positive"    # Z

    #@0
    .prologue
    .line 458
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    #@3
    .line 459
    const/4 v0, 0x0

    #@4
    .line 460
    .local v0, "focusChanged":Z
    if-eqz p1, :cond_1

    #@6
    .line 461
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@8
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@10
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@12
    if-ge v1, v2, :cond_0

    #@14
    .line 462
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@1a
    .line 463
    const/4 v0, 0x1

    #@1b
    .line 471
    :cond_0
    :goto_0
    return v0

    #@1c
    .line 466
    :cond_1
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@1e
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_0

    #@24
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@26
    const/4 v2, 0x1

    #@27
    if-le v1, v2, :cond_0

    #@29
    .line 467
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@2b
    add-int/lit8 v1, v1, -0x1

    #@2d
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@2f
    .line 468
    const/4 v0, 0x1

    #@30
    goto :goto_0
.end method

.method private onDayClicked(I)Z
    .locals 4
    .param p1, "day"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1013
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
    .line 1017
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1018
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    #@14
    move-result-object v0

    #@15
    .line 1019
    .local v0, "date":Landroid/icu/util/Calendar;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    #@17
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    #@19
    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    #@1c
    .line 1020
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    #@1e
    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V

    #@21
    .line 1024
    .end local v0    # "date":Landroid/icu/util/Calendar;
    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@23
    invoke-virtual {v1, p1, v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    #@26
    .line 1025
    return v3

    #@27
    .line 1014
    :cond_1
    const/4 v1, 0x0

    #@28
    return v1
.end method

.method private sameDay(ILandroid/icu/util/Calendar;)Z
    .locals 4
    .param p1, "day"    # I
    .param p2, "today"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 855
    iget v2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    #@4
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@7
    move-result v3

    #@8
    if-ne v2, v3, :cond_1

    #@a
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    #@c
    const/4 v3, 0x2

    #@d
    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@10
    move-result v3

    #@11
    if-ne v2, v3, :cond_1

    #@13
    .line 856
    const/4 v2, 0x5

    #@14
    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@17
    move-result v2

    #@18
    if-ne p1, v2, :cond_0

    #@1a
    .line 855
    :goto_0
    return v0

    #@1b
    :cond_0
    move v0, v1

    #@1c
    .line 856
    goto :goto_0

    #@1d
    :cond_1
    move v0, v1

    #@1e
    .line 855
    goto :goto_0
.end method

.method private updateDayOfWeekLabels()V
    .locals 4

    #@0
    .prologue
    .line 195
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    #@2
    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@5
    move-result-object v2

    #@6
    iget-object v1, v2, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    #@8
    .line 196
    .local v1, "tinyWeekdayNames":[Ljava/lang/String;
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 197
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    #@e
    iget v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@10
    add-int/2addr v3, v0

    #@11
    add-int/lit8 v3, v3, -0x1

    #@13
    rem-int/lit8 v3, v3, 0x7

    #@15
    add-int/lit8 v3, v3, 0x1

    #@17
    aget-object v3, v1, v3

    #@19
    aput-object v3, v2, v0

    #@1b
    .line 196
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 192
    :cond_0
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 4

    #@0
    .prologue
    .line 186
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    #@2
    const-string/jumbo v3, "MMMMy"

    #@5
    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 187
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    #@b
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    #@d
    invoke-direct {v1, v0, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@10
    .line 188
    .local v1, "formatter":Landroid/icu/text/SimpleDateFormat;
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@12
    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    #@15
    .line 189
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    #@17
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    #@21
    .line 185
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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
    .line 237
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@2
    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 557
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 558
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@6
    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    #@9
    .line 556
    :goto_0
    return-void

    #@a
    .line 560
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@d
    goto :goto_0
.end method

.method public getMonthHeight()I
    .locals 1

    #@0
    .prologue
    .line 233
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@2
    return v0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 606
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    .line 607
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@7
    move-result v1

    #@8
    .line 608
    .local v1, "paddingTop":I
    int-to-float v2, v0

    #@9
    int-to-float v3, v1

    #@a
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@d
    .line 610
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    #@10
    .line 611
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    #@13
    .line 612
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    #@16
    .line 614
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
    .line 605
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 477
    if-eqz p1, :cond_0

    #@3
    .line 481
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    #@6
    move-result v3

    #@7
    .line 482
    .local v3, "offset":I
    sparse-switch p2, :sswitch_data_0

    #@a
    .line 507
    :goto_0
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    #@d
    .line 508
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@10
    .line 510
    .end local v3    # "offset":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@13
    .line 476
    return-void

    #@14
    .line 484
    .restart local v3    # "offset":I
    :sswitch_0
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    #@17
    move-result v4

    #@18
    .line 485
    .local v4, "row":I
    if-nez v4, :cond_1

    #@1a
    :goto_1
    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@1c
    goto :goto_0

    #@1d
    :cond_1
    mul-int/lit8 v5, v4, 0x7

    #@1f
    sub-int/2addr v5, v3

    #@20
    add-int/lit8 v5, v5, 0x1

    #@22
    goto :goto_1

    #@23
    .line 489
    .end local v4    # "row":I
    :sswitch_1
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    #@26
    move-result v5

    #@27
    add-int/lit8 v4, v5, 0x1

    #@29
    .line 490
    .restart local v4    # "row":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@2b
    mul-int/lit8 v6, v4, 0x7

    #@2d
    sub-int/2addr v6, v3

    #@2e
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@31
    move-result v5

    #@32
    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@34
    goto :goto_0

    #@35
    .line 494
    .end local v4    # "row":I
    :sswitch_2
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    #@38
    move-result v0

    #@39
    .line 495
    .local v0, "col":I
    sub-int v6, v0, v3

    #@3b
    add-int/lit8 v1, v6, 0x1

    #@3d
    .line 496
    .local v1, "day":I
    if-ge v1, v5, :cond_2

    #@3f
    add-int/lit8 v1, v1, 0x7

    #@41
    .end local v1    # "day":I
    :cond_2
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@43
    goto :goto_0

    #@44
    .line 500
    .end local v0    # "col":I
    :sswitch_3
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    #@47
    move-result v0

    #@48
    .line 501
    .restart local v0    # "col":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@4a
    add-int/2addr v5, v3

    #@4b
    div-int/lit8 v2, v5, 0x7

    #@4d
    .line 502
    .local v2, "maxWeeks":I
    sub-int v5, v0, v3

    #@4f
    mul-int/lit8 v6, v2, 0x7

    #@51
    add-int/2addr v5, v6

    #@52
    add-int/lit8 v1, v5, 0x1

    #@54
    .line 503
    .restart local v1    # "day":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@56
    if-le v1, v5, :cond_3

    #@58
    add-int/lit8 v1, v1, -0x7

    #@5a
    .end local v1    # "day":I
    :cond_3
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@5c
    goto :goto_0

    #@5d
    .line 482
    nop

    #@5e
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onFocusLost()V
    .locals 1

    #@0
    .prologue
    .line 566
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 568
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@6
    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    #@8
    .line 569
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@b
    .line 570
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@e
    .line 572
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    #@11
    .line 565
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 389
    const/4 v1, 0x0

    #@3
    .line 390
    .local v1, "focusChanged":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@6
    move-result v6

    #@7
    sparse-switch v6, :sswitch_data_0

    #@a
    .line 449
    .end local v1    # "focusChanged":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    #@c
    .line 450
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@f
    .line 451
    return v5

    #@10
    .line 392
    .restart local v1    # "focusChanged":Z
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 393
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@19
    move-result v4

    #@1a
    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    #@1d
    move-result v1

    #@1e
    .local v1, "focusChanged":Z
    goto :goto_0

    #@1f
    .line 397
    .local v1, "focusChanged":Z
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_0

    #@25
    .line 398
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_1

    #@2b
    :goto_1
    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    #@2e
    move-result v1

    #@2f
    .local v1, "focusChanged":Z
    goto :goto_0

    #@30
    .local v1, "focusChanged":Z
    :cond_1
    move v4, v5

    #@31
    goto :goto_1

    #@32
    .line 402
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_0

    #@38
    .line 403
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    #@3b
    .line 404
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@3d
    const/4 v6, 0x7

    #@3e
    if-le v4, v6, :cond_0

    #@40
    .line 405
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@42
    add-int/lit8 v4, v4, -0x7

    #@44
    iput v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@46
    .line 406
    const/4 v1, 0x1

    #@47
    goto :goto_0

    #@48
    .line 411
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_0

    #@4e
    .line 412
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    #@51
    .line 413
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@53
    iget v6, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@55
    add-int/lit8 v6, v6, -0x7

    #@57
    if-gt v4, v6, :cond_0

    #@59
    .line 414
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@5b
    add-int/lit8 v4, v4, 0x7

    #@5d
    iput v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@5f
    .line 415
    const/4 v1, 0x1

    #@60
    goto :goto_0

    #@61
    .line 421
    :sswitch_4
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@63
    const/4 v6, -0x1

    #@64
    if-eq v4, v6, :cond_0

    #@66
    .line 422
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@68
    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    #@6b
    .line 423
    return v5

    #@6c
    .line 427
    :sswitch_5
    const/4 v0, 0x0

    #@6d
    .line 428
    .local v0, "focusChangeDirection":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@70
    move-result v4

    #@71
    if-eqz v4, :cond_5

    #@73
    .line 429
    const/4 v0, 0x2

    #@74
    .line 433
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    #@76
    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@79
    move-result-object v3

    #@7a
    .line 436
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v2, p0

    #@7b
    .line 438
    .local v2, "nextFocus":Landroid/view/View;
    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    #@7e
    move-result-object v2

    #@7f
    .line 439
    if-eqz v2, :cond_4

    #@81
    if-eq v2, p0, :cond_4

    #@83
    .line 440
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@86
    move-result-object v4

    #@87
    if-eq v4, v3, :cond_3

    #@89
    .line 441
    :cond_4
    if-eqz v2, :cond_0

    #@8b
    .line 442
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    #@8e
    .line 443
    return v5

    #@8f
    .line 430
    .end local v2    # "nextFocus":Landroid/view/View;
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_5
    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@92
    move-result v4

    #@93
    if-eqz v4, :cond_2

    #@95
    .line 431
    const/4 v0, 0x1

    #@96
    goto :goto_2

    #@97
    .line 453
    .end local v0    # "focusChangeDirection":I
    .end local v1    # "focusChanged":Z
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@9a
    move-result v4

    #@9b
    return v4

    #@9c
    .line 390
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3d -> :sswitch_5
        0x42 -> :sswitch_4
    .end sparse-switch
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
    .line 880
    if-nez p1, :cond_0

    #@2
    .line 881
    return-void

    #@3
    .line 885
    :cond_0
    sub-int v17, p4, p2

    #@5
    .line 886
    .local v17, "w":I
    sub-int v3, p5, p3

    #@7
    .line 887
    .local v3, "h":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    #@a
    move-result v13

    #@b
    .line 888
    .local v13, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    #@e
    move-result v15

    #@f
    .line 889
    .local v15, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    #@12
    move-result v14

    #@13
    .line 890
    .local v14, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    #@16
    move-result v12

    #@17
    .line 891
    .local v12, "paddingBottom":I
    sub-int v10, v17, v14

    #@19
    .line 892
    .local v10, "paddedRight":I
    sub-int v8, v3, v12

    #@1b
    .line 893
    .local v8, "paddedBottom":I
    sub-int v11, v10, v13

    #@1d
    .line 894
    .local v11, "paddedWidth":I
    sub-int v9, v8, v15

    #@1f
    .line 895
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
    .line 896
    :cond_1
    return-void

    #@34
    .line 899
    :cond_2
    move-object/from16 v0, p0

    #@36
    iput v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@38
    .line 900
    move-object/from16 v0, p0

    #@3a
    iput v9, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    #@3c
    .line 904
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    #@3f
    move-result v18

    #@40
    sub-int v18, v18, v15

    #@42
    sub-int v6, v18, v12

    #@44
    .line 905
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
    .line 906
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
    .line 907
    .local v7, "monthHeight":I
    move-object/from16 v0, p0

    #@5e
    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    #@60
    move/from16 v18, v0

    #@62
    div-int/lit8 v2, v18, 0x7

    #@64
    .line 908
    .local v2, "cellWidth":I
    move-object/from16 v0, p0

    #@66
    iput v7, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    #@68
    .line 909
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
    .line 910
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
    .line 911
    move-object/from16 v0, p0

    #@9a
    iput v2, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    #@9c
    .line 915
    div-int/lit8 v18, v2, 0x2

    #@9e
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    #@a1
    move-result v19

    #@a2
    add-int v5, v18, v19

    #@a4
    .line 916
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
    .line 917
    .local v4, "maxSelectorHeight":I
    move-object/from16 v0, p0

    #@b0
    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    #@b2
    move/from16 v18, v0

    #@b4
    .line 918
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    #@b7
    move-result v19

    #@b8
    .line 917
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
    .line 921
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@c6
    move-object/from16 v18, v0

    #@c8
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    #@cb
    .line 879
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 861
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    #@2
    mul-int/lit8 v4, v4, 0x6

    #@4
    .line 862
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    #@6
    .line 861
    add-int/2addr v4, v5

    #@7
    .line 862
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    #@9
    .line 861
    add-int/2addr v4, v5

    #@a
    .line 863
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@d
    move-result v5

    #@e
    .line 861
    add-int/2addr v4, v5

    #@f
    .line 863
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@12
    move-result v5

    #@13
    .line 861
    add-int v0, v4, v5

    #@15
    .line 864
    .local v0, "preferredHeight":I
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    #@17
    mul-int/lit8 v4, v4, 0x7

    #@19
    .line 865
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    #@1c
    move-result v5

    #@1d
    .line 864
    add-int/2addr v4, v5

    #@1e
    .line 865
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    #@21
    move-result v5

    #@22
    .line 864
    add-int v1, v4, v5

    #@24
    .line 866
    .local v1, "preferredWidth":I
    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    #@27
    move-result v3

    #@28
    .line 867
    .local v3, "resolvedWidth":I
    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    #@2b
    move-result v2

    #@2c
    .line 868
    .local v2, "resolvedHeight":I
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    #@2f
    .line 860
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 873
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    #@3
    .line 875
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@6
    .line 872
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/high16 v7, 0x3f000000    # 0.5f

    #@3
    const/4 v6, 0x0

    #@4
    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@7
    move-result v5

    #@8
    add-float/2addr v5, v7

    #@9
    float-to-int v3, v5

    #@a
    .line 349
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@d
    move-result v5

    #@e
    add-float/2addr v5, v7

    #@f
    float-to-int v4, v5

    #@10
    .line 351
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@13
    move-result v0

    #@14
    .line 352
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@17
    .line 379
    :cond_0
    :goto_0
    return v8

    #@18
    .line 355
    :pswitch_0
    invoke-direct {p0, v3, v4}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    #@1b
    move-result v2

    #@1c
    .line 356
    .local v2, "touchedItem":I
    iput-boolean v8, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    #@1e
    .line 357
    iget v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@20
    if-eq v5, v2, :cond_1

    #@22
    .line 358
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@24
    .line 359
    iput v2, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    #@26
    .line 360
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@29
    .line 362
    :cond_1
    if-nez v0, :cond_0

    #@2b
    if-gez v2, :cond_0

    #@2d
    .line 364
    return v6

    #@2e
    .line 369
    .end local v2    # "touchedItem":I
    :pswitch_1
    invoke-direct {p0, v3, v4}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    #@31
    move-result v1

    #@32
    .line 370
    .local v1, "clickedDay":I
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    #@35
    .line 374
    .end local v1    # "clickedDay":I
    :pswitch_2
    const/4 v5, -0x1

    #@36
    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    #@38
    .line 375
    iput-boolean v6, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    #@3a
    .line 376
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@3d
    goto :goto_0

    #@3e
    .line 352
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
    .line 331
    const/16 v1, 0x18

    #@2
    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    .line 330
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@a
    move-result v0

    #@b
    .line 332
    .local v0, "pressedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    #@d
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@10
    .line 333
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@13
    .line 329
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@2
    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    #@5
    .line 248
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@8
    .line 246
    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayOfWeekTextColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 310
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@6
    move-result v0

    #@7
    .line 311
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    #@9
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@c
    .line 312
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@f
    .line 309
    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayBackgroundColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 322
    const/16 v1, 0x28

    #@2
    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    .line 321
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@a
    move-result v0

    #@b
    .line 323
    .local v0, "activatedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    #@d
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@10
    .line 324
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    #@12
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@15
    .line 325
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    #@17
    const/16 v2, 0xb0

    #@19
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    #@1c
    .line 326
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@1f
    .line 320
    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 252
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    #@2
    invoke-direct {p0, v1, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    .line 253
    .local v0, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    #@8
    .line 254
    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    #@a
    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@d
    .line 251
    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "dayTextColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 316
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 317
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@5
    .line 315
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "weekStart"    # I

    #@0
    .prologue
    .line 761
    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 762
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@8
    .line 767
    :goto_0
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    #@b
    .line 770
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    #@10
    .line 771
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@13
    .line 760
    return-void

    #@14
    .line 764
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    #@16
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@1c
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
    .line 792
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@3
    .line 794
    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 795
    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    #@b
    .line 797
    :cond_0
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    #@d
    .line 799
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    #@f
    iget v4, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    #@11
    const/4 v5, 0x2

    #@12
    invoke-virtual {v3, v5, v4}, Landroid/icu/util/Calendar;->set(II)V

    #@15
    .line 800
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    #@17
    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    #@19
    invoke-virtual {v3, v6, v4}, Landroid/icu/util/Calendar;->set(II)V

    #@1c
    .line 801
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    #@1e
    const/4 v4, 0x5

    #@1f
    invoke-virtual {v3, v4, v6}, Landroid/icu/util/Calendar;->set(II)V

    #@22
    .line 802
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    #@24
    const/4 v4, 0x7

    #@25
    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@28
    move-result v3

    #@29
    iput v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    #@2b
    .line 804
    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 805
    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@33
    .line 811
    :goto_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    #@36
    move-result-object v2

    #@37
    .line 812
    .local v2, "today":Landroid/icu/util/Calendar;
    const/4 v3, -0x1

    #@38
    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    #@3a
    .line 813
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
    .line 814
    const/4 v1, 0x0

    #@45
    .local v1, "i":I
    :goto_1
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@47
    if-ge v1, v3, :cond_3

    #@49
    .line 815
    add-int/lit8 v0, v1, 0x1

    #@4b
    .line 816
    .local v0, "day":I
    invoke-direct {p0, v0, v2}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/icu/util/Calendar;)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_1

    #@51
    .line 817
    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    #@53
    .line 814
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_1

    #@56
    .line 807
    .end local v0    # "day":I
    .end local v1    # "i":I
    .end local v2    # "today":Landroid/icu/util/Calendar;
    :cond_2
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    #@58
    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@5b
    move-result v3

    #@5c
    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    #@5e
    goto :goto_0

    #@5f
    .line 821
    .restart local v1    # "i":I
    .restart local v2    # "today":Landroid/icu/util/Calendar;
    :cond_3
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    #@61
    invoke-static {p5, v6, v3}, Landroid/util/MathUtils;->constrain(III)I

    #@64
    move-result v3

    #@65
    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    #@67
    .line 822
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
    .line 824
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    #@74
    .line 825
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    #@77
    .line 828
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@79
    invoke-virtual {v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    #@7c
    .line 829
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@7f
    .line 791
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@2
    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    #@5
    .line 243
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@8
    .line 240
    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "monthTextColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 304
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@6
    move-result v0

    #@7
    .line 305
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    #@9
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@c
    .line 306
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@f
    .line 303
    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SimpleMonthView$OnDayClickListener;

    #@0
    .prologue
    .line 337
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    #@2
    .line 336
    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    #@0
    .prologue
    .line 747
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    #@2
    .line 750
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    #@7
    .line 751
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@a
    .line 746
    return-void
.end method
