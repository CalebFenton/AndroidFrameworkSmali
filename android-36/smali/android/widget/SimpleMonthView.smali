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
.field private static final blacklist DAYS_IN_WEEK:I = 0x7

.field private static final blacklist DEFAULT_SELECTED_DAY:I = -0x1

.field private static final blacklist DEFAULT_WEEK_START:I = 0x1

.field private static final blacklist MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final blacklist MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final blacklist SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private blacklist mActivatedDay:I

.field private final blacklist mCalendar:Landroid/icu/util/Calendar;

.field private blacklist mCellWidth:I

.field private final blacklist mDayFormatter:Ljava/text/NumberFormat;

.field private blacklist mDayHeight:I

.field private final blacklist mDayHighlightPaint:Landroid/graphics/Paint;

.field private final blacklist mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private blacklist mDayOfWeekHeight:I

.field private final blacklist mDayOfWeekLabels:[Ljava/lang/String;

.field private final blacklist mDayOfWeekPaint:Landroid/text/TextPaint;

.field private blacklist mDayOfWeekStart:I

.field private final blacklist mDayPaint:Landroid/text/TextPaint;

.field private final blacklist mDaySelectorPaint:Landroid/graphics/Paint;

.field private blacklist mDaySelectorRadius:I

.field private blacklist mDayTextColor:Landroid/content/res/ColorStateList;

.field private blacklist mDaysInMonth:I

.field private final blacklist mDesiredCellWidth:I

.field private final blacklist mDesiredDayHeight:I

.field private final blacklist mDesiredDayOfWeekHeight:I

.field private final blacklist mDesiredDaySelectorRadius:I

.field private final blacklist mDesiredMonthHeight:I

.field private blacklist mEnabledDayEnd:I

.field private blacklist mEnabledDayStart:I

.field private blacklist mHighlightedDay:I

.field private blacklist mIsTouchHighlighted:Z

.field private final blacklist mLocale:Ljava/util/Locale;

.field private blacklist mMonth:I

.field private blacklist mMonthHeight:I

.field private final blacklist mMonthPaint:Landroid/text/TextPaint;

.field private blacklist mMonthYearLabel:Ljava/lang/String;

.field private blacklist mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private blacklist mPaddedHeight:I

.field private blacklist mPaddedWidth:I

.field private blacklist mPreviouslyHighlightedDay:I

.field private blacklist mToday:I

.field private final blacklist mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private blacklist mWeekStart:I

.field private blacklist mYear:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivatedDay(Landroid/widget/SimpleMonthView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDayFormatter(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .registers 1

    iget-object p0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDaysInMonth(Landroid/widget/SimpleMonthView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMonth(Landroid/widget/SimpleMonthView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToday(Landroid/widget/SimpleMonthView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYear(Landroid/widget/SimpleMonthView;)I
    .registers 1

    iget p0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDayAtLocation(Landroid/widget/SimpleMonthView;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDayEnabled(Landroid/widget/SimpleMonthView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misValidDayOfMonth(Landroid/widget/SimpleMonthView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monDayClicked(Landroid/widget/SimpleMonthView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 157
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 162
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 78
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 79
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 85
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 123
    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 126
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 138
    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 141
    const/16 v2, 0x1f

    iput v2, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 148
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 149
    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x1050147

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 169
    const v2, 0x1050142

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 170
    const v2, 0x1050141

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 171
    const v2, 0x1050146

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 172
    const v2, 0x1050144

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 176
    new-instance v2, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v2, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 177
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v2}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 178
    invoke-virtual {p0, v1}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    .line 180
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 181
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 183
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 185
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 186
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 188
    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    .line 189
    return-void
.end method

.method private blacklist applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .registers 8
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "resId"    # I

    .line 221
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 224
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 226
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 229
    :cond_19
    nop

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    .line 229
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 232
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 233
    .local v2, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_37

    .line 234
    sget-object v4, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 235
    .local v3, "enabledColor":I
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    .end local v3    # "enabledColor":I
    :cond_37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    return-object v2
.end method

.method private blacklist drawDays(Landroid/graphics/Canvas;)V
    .registers 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 676
    .local v2, "p":Landroid/text/TextPaint;
    iget v3, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 677
    .local v3, "headerHeight":I
    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 678
    .local v4, "rowHeight":I
    iget v5, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 681
    .local v5, "colWidth":I
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 682
    .local v6, "halfLineHeight":F
    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v3

    .line 684
    .local v7, "rowCenter":I
    const/4 v8, 0x1

    .local v8, "day":I
    invoke-direct {v0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    .local v9, "col":I
    :goto_23
    iget v10, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt v8, v10, :cond_cf

    .line 685
    mul-int v10, v5, v9

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    .line 687
    .local v10, "colCenter":I
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_36

    .line 688
    iget v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v11, v10

    .local v11, "colCenterRtl":I
    goto :goto_37

    .line 690
    .end local v11    # "colCenterRtl":I
    :cond_36
    move v11, v10

    .line 693
    .restart local v11    # "colCenterRtl":I
    :goto_37
    const/4 v12, 0x0

    .line 695
    .local v12, "stateMask":I
    invoke-direct {v0, v8}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v13

    .line 696
    .local v13, "isDayEnabled":Z
    if-eqz v13, :cond_40

    .line 697
    or-int/lit8 v12, v12, 0x8

    .line 700
    :cond_40
    iget v14, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    const/16 v16, 0x1

    if-ne v14, v8, :cond_49

    move/from16 v14, v16

    goto :goto_4a

    :cond_49
    const/4 v14, 0x0

    .line 701
    .local v14, "isDayActivated":Z
    :goto_4a
    iget v15, v0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-ne v15, v8, :cond_51

    move/from16 v15, v16

    goto :goto_52

    :cond_51
    const/4 v15, 0x0

    .line 702
    .local v15, "isDayHighlighted":Z
    :goto_52
    if-eqz v14, :cond_71

    .line 703
    or-int/lit8 v12, v12, 0x20

    .line 706
    if-eqz v15, :cond_5d

    move/from16 v17, v3

    .end local v3    # "headerHeight":I
    .local v17, "headerHeight":I
    iget-object v3, v0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_61

    .line 707
    .end local v17    # "headerHeight":I
    .restart local v3    # "headerHeight":I
    :cond_5d
    move/from16 v17, v3

    .end local v3    # "headerHeight":I
    .restart local v17    # "headerHeight":I
    iget-object v3, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    :goto_61
    nop

    .line 708
    .local v3, "paint":Landroid/graphics/Paint;
    move/from16 v18, v4

    .end local v4    # "rowHeight":I
    .local v18, "rowHeight":I
    int-to-float v4, v11

    move/from16 v19, v5

    .end local v5    # "colWidth":I
    .local v19, "colWidth":I
    int-to-float v5, v7

    move/from16 v20, v6

    .end local v6    # "halfLineHeight":F
    .local v20, "halfLineHeight":F
    iget v6, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .end local v3    # "paint":Landroid/graphics/Paint;
    goto :goto_8a

    .line 709
    .end local v17    # "headerHeight":I
    .end local v18    # "rowHeight":I
    .end local v19    # "colWidth":I
    .end local v20    # "halfLineHeight":F
    .local v3, "headerHeight":I
    .restart local v4    # "rowHeight":I
    .restart local v5    # "colWidth":I
    .restart local v6    # "halfLineHeight":F
    :cond_71
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    .end local v3    # "headerHeight":I
    .end local v4    # "rowHeight":I
    .end local v5    # "colWidth":I
    .end local v6    # "halfLineHeight":F
    .restart local v17    # "headerHeight":I
    .restart local v18    # "rowHeight":I
    .restart local v19    # "colWidth":I
    .restart local v20    # "halfLineHeight":F
    if-eqz v15, :cond_8a

    .line 710
    or-int/lit8 v12, v12, 0x10

    .line 712
    if-eqz v13, :cond_8b

    .line 714
    int-to-float v3, v11

    int-to-float v4, v7

    iget v5, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    int-to-float v5, v5

    iget-object v6, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_8b

    .line 709
    :cond_8a
    :goto_8a
    nop

    .line 719
    :cond_8b
    :goto_8b
    iget v3, v0, Landroid/widget/SimpleMonthView;->mToday:I

    if-ne v3, v8, :cond_90

    goto :goto_92

    :cond_90
    const/16 v16, 0x0

    .line 721
    .local v16, "isDayToday":Z
    :goto_92
    if-eqz v16, :cond_9d

    if-nez v14, :cond_9d

    .line 722
    iget-object v3, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    .local v3, "dayTextColor":I
    goto :goto_a9

    .line 724
    .end local v3    # "dayTextColor":I
    :cond_9d
    invoke-static {v12}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    .line 725
    .local v3, "stateSet":[I
    iget-object v4, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v3, v4

    .line 727
    .local v3, "dayTextColor":I
    :goto_a9
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 729
    iget-object v4, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    int-to-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v11

    int-to-float v6, v7

    sub-float v6, v6, v20

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 731
    add-int/lit8 v9, v9, 0x1

    .line 733
    const/4 v4, 0x7

    if-ne v9, v4, :cond_c3

    .line 734
    const/4 v4, 0x0

    .line 735
    .end local v9    # "col":I
    .local v4, "col":I
    add-int v7, v7, v18

    move v9, v4

    .line 684
    .end local v3    # "dayTextColor":I
    .end local v4    # "col":I
    .end local v10    # "colCenter":I
    .end local v11    # "colCenterRtl":I
    .end local v12    # "stateMask":I
    .end local v13    # "isDayEnabled":Z
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayHighlighted":Z
    .end local v16    # "isDayToday":Z
    .restart local v9    # "col":I
    :cond_c3
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    goto/16 :goto_23

    .line 738
    .end local v8    # "day":I
    .end local v9    # "col":I
    .end local v17    # "headerHeight":I
    .end local v18    # "rowHeight":I
    .end local v19    # "colWidth":I
    .end local v20    # "halfLineHeight":F
    .local v3, "headerHeight":I
    .local v4, "rowHeight":I
    .restart local v5    # "colWidth":I
    .restart local v6    # "halfLineHeight":F
    :cond_cf
    return-void
.end method

.method private blacklist drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 648
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 649
    .local v0, "p":Landroid/text/TextPaint;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 650
    .local v1, "headerHeight":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 651
    .local v2, "rowHeight":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 654
    .local v3, "colWidth":I
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 655
    .local v4, "halfLineHeight":F
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    .line 657
    .local v5, "rowCenter":I
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_18
    const/4 v7, 0x7

    if-ge v6, v7, :cond_38

    .line 658
    mul-int v7, v3, v6

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    .line 660
    .local v7, "colCenter":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 661
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v8, v7

    .local v8, "colCenterRtl":I
    goto :goto_2b

    .line 663
    .end local v8    # "colCenterRtl":I
    :cond_2a
    move v8, v7

    .line 666
    .restart local v8    # "colCenterRtl":I
    :goto_2b
    iget-object v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v9, v9, v6

    .line 667
    .local v9, "label":Ljava/lang/String;
    int-to-float v10, v8

    int-to-float v11, v5

    sub-float/2addr v11, v4

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 657
    .end local v7    # "colCenter":I
    .end local v8    # "colCenterRtl":I
    .end local v9    # "label":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 669
    .end local v6    # "col":I
    :cond_38
    return-void
.end method

.method private blacklist drawMonth(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 634
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 637
    .local v0, "x":F
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    .line 638
    .local v2, "lineHeight":F
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 640
    .local v3, "y":F
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 641
    return-void
.end method

.method private blacklist ensureFocusedDay()V
    .registers 3

    .line 596
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 597
    return-void

    .line 599
    :cond_6
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_f

    .line 600
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 601
    return-void

    .line 603
    :cond_f
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_18

    .line 604
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 605
    return-void

    .line 607
    :cond_18
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 608
    return-void
.end method

.method private blacklist findClosestColumn(Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 559
    if-nez p1, :cond_4

    .line 560
    const/4 v0, 0x3

    return v0

    .line 561
    :cond_4
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 562
    return v1

    .line 564
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddingLeft:I

    sub-int/2addr v0, v2

    .line 565
    .local v0, "centerX":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    div-int v2, v0, v2

    .line 566
    const/4 v3, 0x6

    invoke-static {v2, v1, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 567
    .local v1, "columnFromLeft":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_25

    rsub-int/lit8 v2, v1, 0x7

    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    :cond_25
    move v2, v1

    :goto_26
    return v2
.end method

.method private blacklist findClosestRow(Landroid/graphics/Rect;)I
    .registers 13
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 529
    if-nez p1, :cond_4

    .line 530
    const/4 v0, 0x3

    return v0

    .line 531
    :cond_4
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 532
    return v1

    .line 534
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 536
    .local v0, "centerY":I
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 537
    .local v2, "p":Landroid/text/TextPaint;
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 538
    .local v3, "headerHeight":I
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 541
    .local v4, "rowHeight":I
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 542
    .local v5, "halfLineHeight":F
    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v3

    .line 544
    .local v6, "rowCenter":I
    int-to-float v7, v0

    int-to-float v8, v6

    sub-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v0, v7

    .line 545
    int-to-float v7, v0

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 546
    .local v7, "row":I
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v8

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v8, v9

    .line 547
    .local v8, "maxDay":I
    div-int/lit8 v9, v8, 0x7

    rem-int/lit8 v10, v8, 0x7

    if-nez v10, :cond_41

    const/4 v10, 0x1

    goto :goto_42

    :cond_41
    move v10, v1

    :goto_42
    sub-int/2addr v9, v10

    .line 549
    .local v9, "maxRows":I
    invoke-static {v7, v1, v9}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 550
    .end local v7    # "row":I
    .local v1, "row":I
    return v1
.end method

.method private blacklist findDayOffset()I
    .registers 4

    .line 941
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    .line 942
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    if-ge v1, v2, :cond_e

    .line 943
    add-int/lit8 v1, v0, 0x7

    return v1

    .line 945
    :cond_e
    return v0
.end method

.method private blacklist getDayAtLocation(II)I
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 958
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    .line 959
    .local v0, "paddedX":I
    const/4 v1, -0x1

    if-ltz v0, :cond_48

    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt v0, v2, :cond_e

    goto :goto_48

    .line 963
    :cond_e
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v2, v3

    .line 964
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    .line 965
    .local v3, "paddedY":I
    if-lt v3, v2, :cond_47

    iget v4, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt v3, v4, :cond_20

    goto :goto_47

    .line 971
    :cond_20
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 972
    iget v4, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v4, v0

    .local v4, "paddedXRtl":I
    goto :goto_2b

    .line 974
    .end local v4    # "paddedXRtl":I
    :cond_2a
    move v4, v0

    .line 977
    .restart local v4    # "paddedXRtl":I
    :goto_2b
    sub-int v5, v3, v2

    iget v6, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int/2addr v5, v6

    .line 978
    .local v5, "row":I
    mul-int/lit8 v6, v4, 0x7

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/2addr v6, v7

    .line 979
    .local v6, "col":I
    mul-int/lit8 v7, v5, 0x7

    add-int/2addr v7, v6

    .line 980
    .local v7, "index":I
    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    sub-int/2addr v8, v9

    .line 981
    .local v8, "day":I
    invoke-direct {p0, v8}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v9

    if-nez v9, :cond_46

    .line 982
    return v1

    .line 985
    :cond_46
    return v8

    .line 966
    .end local v4    # "paddedXRtl":I
    .end local v5    # "row":I
    .end local v6    # "col":I
    .end local v7    # "index":I
    .end local v8    # "day":I
    :cond_47
    :goto_47
    return v1

    .line 960
    .end local v2    # "headerHeight":I
    .end local v3    # "paddedY":I
    :cond_48
    :goto_48
    return v1
.end method

.method private static blacklist getDaysInMonth(II)I
    .registers 4
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 849
    packed-switch p0, :pswitch_data_24

    .line 866
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :pswitch_b
    const/16 v0, 0x1e

    return v0

    .line 864
    :pswitch_e
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1d

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1a

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_1d

    :cond_1a
    const/16 v0, 0x1d

    goto :goto_1f

    :cond_1d
    const/16 v0, 0x1c

    :goto_1f
    return v0

    .line 857
    :pswitch_20
    const/16 v0, 0x1f

    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_e
        :pswitch_20
        :pswitch_b
        :pswitch_20
        :pswitch_b
        :pswitch_20
        :pswitch_20
        :pswitch_b
        :pswitch_20
        :pswitch_b
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist initPaints(Landroid/content/res/Resources;)V
    .registers 12
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 275
    const v0, 0x1040336

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "monthTypeface":Ljava/lang/String;
    const v1, 0x104032c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "dayOfWeekTypeface":Ljava/lang/String;
    const v2, 0x104032d

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "dayTypeface":Ljava/lang/String;
    const v3, 0x1050148

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 281
    .local v3, "monthTextSize":I
    const v4, 0x1050143

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 283
    .local v4, "dayOfWeekTextSize":I
    const v5, 0x1050145

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 286
    .local v5, "dayTextSize":I
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 287
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v8, v3

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 288
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 289
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 290
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 293
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v9, v4

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 294
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 295
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 296
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 302
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 304
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 305
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 308
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 309
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 310
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 311
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 312
    return-void
.end method

.method private blacklist isDayEnabled(I)Z
    .registers 3
    .param p1, "day"    # I

    .line 741
    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist isFirstDayOfWeek(I)Z
    .registers 5
    .param p1, "day"    # I

    .line 611
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 612
    .local v0, "offset":I
    add-int v1, v0, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    return v2
.end method

.method private blacklist isLastDayOfWeek(I)Z
    .registers 4
    .param p1, "day"    # I

    .line 616
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 617
    .local v0, "offset":I
    add-int v1, v0, p1

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private blacklist isValidDayOfMonth(I)Z
    .registers 4
    .param p1, "day"    # I

    .line 745
    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist isValidDayOfWeek(I)Z
    .registers 3
    .param p0, "day"    # I

    .line 749
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x7

    if-gt p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static blacklist isValidMonth(I)Z
    .registers 2
    .param p0, "month"    # I

    .line 753
    if-ltz p0, :cond_8

    const/16 v0, 0xb

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist moveOneDay(Z)Z
    .registers 6
    .param p1, "positive"    # Z

    .line 470
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "focusChanged":Z
    const/4 v1, 0x1

    if-eqz p1, :cond_1c

    .line 473
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v2}, Landroid/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_2e

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v2, v3, :cond_2e

    .line 474
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 475
    const/4 v0, 0x1

    goto :goto_2e

    .line 478
    :cond_1c
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v2}, Landroid/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_2e

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v2, v1, :cond_2e

    .line 479
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 480
    const/4 v0, 0x1

    .line 483
    :cond_2e
    :goto_2e
    return v0
.end method

.method private blacklist onDayClicked(I)Z
    .registers 5
    .param p1, "day"    # I

    .line 1029
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_28

    .line 1033
    :cond_d
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_21

    .line 1034
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 1035
    .local v0, "date":Landroid/icu/util/Calendar;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    .line 1036
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V

    .line 1040
    .end local v0    # "date":Landroid/icu/util/Calendar;
    :cond_21
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    .line 1041
    return v1

    .line 1030
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist sameDay(ILandroid/icu/util/Calendar;)Z
    .registers 6
    .param p1, "day"    # I
    .param p2, "today"    # Landroid/icu/util/Calendar;

    .line 871
    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1a

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1a

    .line 872
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 871
    :goto_1b
    return v1
.end method

.method private blacklist updateDayOfWeekLabels()V
    .registers 6

    .line 205
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "tinyWeekdayNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    const/4 v2, 0x7

    if-ge v1, v2, :cond_21

    .line 208
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v0, v4

    aput-object v2, v3, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 210
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method private blacklist updateMonthYearLabel()V
    .registers 4

    .line 192
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 198
    .local v1, "formatter":Landroid/icu/text/SimpleDateFormat;
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 199
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 200
    return-void
.end method


# virtual methods
.method public whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 354
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public blacklist getBoundsForDay(ILandroid/graphics/Rect;)Z
    .registers 13
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 995
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 996
    const/4 v0, 0x0

    return v0

    .line 999
    :cond_8
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 1002
    .local v0, "index":I
    rem-int/lit8 v1, v0, 0x7

    .line 1003
    .local v1, "col":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 1005
    .local v2, "colWidth":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1006
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    .local v3, "left":I
    goto :goto_2e

    .line 1008
    .end local v3    # "left":I
    :cond_27
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v3

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    .line 1012
    .restart local v3    # "left":I
    :goto_2e
    div-int/lit8 v4, v0, 0x7

    .line 1013
    .local v4, "row":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 1014
    .local v5, "rowHeight":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v6, v7

    .line 1015
    .local v6, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v6

    mul-int v8, v4, v5

    add-int/2addr v7, v8

    .line 1017
    .local v7, "top":I
    add-int v8, v3, v2

    add-int v9, v7, v5

    invoke-virtual {p2, v3, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1019
    const/4 v8, 0x1

    return v8
.end method

.method public blacklist getCellWidth()I
    .registers 2

    .line 248
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    return v0
.end method

.method public whitelist getFocusedRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 573
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_a

    .line 574
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_d

    .line 576
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 578
    :goto_d
    return-void
.end method

.method public blacklist getMonthHeight()I
    .registers 2

    .line 244
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    return v0
.end method

.method public blacklist getMonthYearLabel()Ljava/lang/String;
    .registers 2

    .line 644
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 622
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    .line 623
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    .line 624
    .local v1, "paddingTop":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 626
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 627
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 628
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 630
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 631
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 10
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 489
    if-eqz p1, :cond_5a

    .line 493
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 494
    .local v0, "offset":I
    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_5e

    goto :goto_54

    .line 506
    :sswitch_b
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v2

    .line 507
    .local v2, "col":I
    sub-int v3, v2, v0

    add-int/2addr v3, v1

    .line 508
    .local v3, "day":I
    if-ge v3, v1, :cond_17

    add-int/lit8 v1, v3, 0x7

    goto :goto_18

    :cond_17
    move v1, v3

    :goto_18
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 509
    goto :goto_54

    .line 496
    .end local v2    # "col":I
    .end local v3    # "day":I
    :sswitch_1b
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v2

    .line 497
    .local v2, "row":I
    if-nez v2, :cond_22

    goto :goto_26

    :cond_22
    mul-int/lit8 v3, v2, 0x7

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    :goto_26
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 498
    goto :goto_54

    .line 512
    .end local v2    # "row":I
    :sswitch_29
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v2

    .line 513
    .local v2, "col":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x7

    .line 514
    .local v3, "maxWeeks":I
    sub-int v4, v2, v0

    mul-int/lit8 v5, v3, 0x7

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 515
    .local v4, "day":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-le v4, v1, :cond_3f

    add-int/lit8 v1, v4, -0x7

    goto :goto_40

    :cond_3f
    move v1, v4

    :goto_40
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 516
    goto :goto_54

    .line 501
    .end local v2    # "col":I
    .end local v3    # "maxWeeks":I
    .end local v4    # "day":I
    :sswitch_43
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v2

    add-int/2addr v2, v1

    .line 502
    .local v2, "row":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v3, v2, 0x7

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 503
    nop

    .line 519
    .end local v2    # "row":I
    :goto_54
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 520
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 522
    .end local v0    # "offset":I
    :cond_5a
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 523
    return-void

    :sswitch_data_5e
    .sparse-switch
        0x11 -> :sswitch_43
        0x21 -> :sswitch_29
        0x42 -> :sswitch_1b
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method protected blacklist onFocusLost()V
    .registers 2

    .line 582
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez v0, :cond_e

    .line 584
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 585
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 586
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 588
    :cond_e
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    .line 589
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "focusChanged":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_98

    goto/16 :goto_8c

    .line 439
    :sswitch_c
    const/4 v1, 0x0

    .line 440
    .local v1, "focusChangeDirection":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 441
    const/4 v1, 0x2

    goto :goto_1c

    .line 442
    :cond_15
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 443
    const/4 v1, 0x1

    .line 445
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_8c

    .line 446
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 448
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v4, p0

    .line 450
    .local v4, "nextFocus":Landroid/view/View;
    :cond_23
    invoke-virtual {v4, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 451
    if-eqz v4, :cond_31

    if-eq v4, p0, :cond_31

    .line 452
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v2, :cond_23

    .line 453
    :cond_31
    if-eqz v4, :cond_37

    .line 454
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 455
    return v3

    .line 457
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v4    # "nextFocus":Landroid/view/View;
    :cond_37
    goto :goto_8c

    .line 433
    .end local v1    # "focusChangeDirection":I
    :sswitch_38
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8c

    .line 434
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 435
    return v3

    .line 408
    :sswitch_43
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 409
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v0

    goto :goto_8c

    .line 403
    :sswitch_53
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 404
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v0

    goto :goto_8c

    .line 422
    :sswitch_62
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 423
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 424
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_8c

    .line 425
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 426
    const/4 v0, 0x1

    goto :goto_8c

    .line 413
    :sswitch_79
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 414
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 415
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v1, v2, :cond_8c

    .line 416
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 417
    const/4 v0, 0x1

    .line 461
    :cond_8c
    :goto_8c
    if-eqz v0, :cond_92

    .line 462
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 463
    return v3

    .line 465
    :cond_92
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_98
    .sparse-switch
        0x13 -> :sswitch_79
        0x14 -> :sswitch_62
        0x15 -> :sswitch_53
        0x16 -> :sswitch_43
        0x17 -> :sswitch_38
        0x3d -> :sswitch_c
        0x42 -> :sswitch_38
        0xa0 -> :sswitch_38
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 25
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 896
    move-object/from16 v0, p0

    if-nez p1, :cond_5

    .line 897
    return-void

    .line 901
    :cond_5
    sub-int v1, p4, p2

    .line 902
    .local v1, "w":I
    sub-int v2, p5, p3

    .line 903
    .local v2, "h":I
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v3

    .line 904
    .local v3, "paddingLeft":I
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v4

    .line 905
    .local v4, "paddingTop":I
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v5

    .line 906
    .local v5, "paddingRight":I
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v6

    .line 907
    .local v6, "paddingBottom":I
    sub-int v7, v1, v5

    .line 908
    .local v7, "paddedRight":I
    sub-int v8, v2, v6

    .line 909
    .local v8, "paddedBottom":I
    sub-int v9, v7, v3

    .line 910
    .local v9, "paddedWidth":I
    sub-int v10, v8, v4

    .line 911
    .local v10, "paddedHeight":I
    iget v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-eq v9, v11, :cond_7d

    iget v11, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-ne v10, v11, :cond_30

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    goto :goto_83

    .line 915
    :cond_30
    iput v9, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 916
    iput v10, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    .line 920
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v4

    sub-int/2addr v11, v6

    .line 921
    .local v11, "measuredPaddedHeight":I
    int-to-float v12, v10

    int-to-float v13, v11

    div-float/2addr v12, v13

    .line 922
    .local v12, "scaleH":F
    iget v13, v0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    .line 923
    .local v13, "monthHeight":I
    iget v14, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 v14, v14, 0x7

    .line 924
    .local v14, "cellWidth":I
    iput v13, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 925
    iget v15, v0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 926
    iget v15, v0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 927
    iput v14, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 931
    div-int/lit8 v15, v14, 0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    add-int v15, v15, v16

    .line 932
    .local v15, "maxSelectorWidth":I
    move/from16 v16, v1

    .end local v1    # "w":I
    .local v16, "w":I
    iget v1, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    .line 933
    .local v1, "maxSelectorHeight":I
    move/from16 v17, v2

    .end local v2    # "h":I
    .local v17, "h":I
    iget v2, v0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 934
    move/from16 v18, v3

    .end local v3    # "paddingLeft":I
    .local v18, "paddingLeft":I
    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 933
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 937
    iget-object v2, v0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v2}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 938
    return-void

    .line 911
    .end local v11    # "measuredPaddedHeight":I
    .end local v12    # "scaleH":F
    .end local v13    # "monthHeight":I
    .end local v14    # "cellWidth":I
    .end local v15    # "maxSelectorWidth":I
    .end local v16    # "w":I
    .end local v17    # "h":I
    .end local v18    # "paddingLeft":I
    .local v1, "w":I
    .restart local v2    # "h":I
    .restart local v3    # "paddingLeft":I
    :cond_7d
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    .line 912
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "paddingLeft":I
    .restart local v16    # "w":I
    .restart local v17    # "h":I
    .restart local v18    # "paddingLeft":I
    :goto_83
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 877
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    .line 879
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 880
    .local v0, "preferredHeight":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    .line 881
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 882
    .local v1, "preferredWidth":I
    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v2

    .line 883
    .local v2, "resolvedWidth":I
    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v3

    .line 884
    .local v3, "resolvedHeight":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    .line 885
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1047
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1048
    const/4 v0, 0x0

    return-object v0

    .line 1051
    :cond_8
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1054
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 1055
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v2

    .line 1056
    .local v2, "dayUnderPointer":I
    if-ltz v2, :cond_39

    .line 1057
    invoke-static {}, Landroid/view/flags/Flags;->enableArrowIconOnHoverWhenClickable()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1058
    const/16 v3, 0x3e8

    goto :goto_2f

    .line 1059
    :cond_2d
    const/16 v3, 0x3ea

    :goto_2f
    nop

    .line 1060
    .local v3, "pointerIcon":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    return-object v4

    .line 1063
    .end local v0    # "x":I
    .end local v1    # "y":I
    .end local v2    # "dayUnderPointer":I
    .end local v3    # "pointerIcon":I
    :cond_39
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .line 889
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 891
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    .line 892
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 360
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 362
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 363
    .local v2, "action":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_40

    goto :goto_3e

    .line 380
    :pswitch_18
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v5

    .line 381
    .local v5, "clickedDay":I
    invoke-direct {p0, v5}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 385
    .end local v5    # "clickedDay":I
    :pswitch_1f
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 386
    iput-boolean v3, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 387
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    goto :goto_3e

    .line 366
    :pswitch_28
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v5

    .line 367
    .local v5, "touchedItem":I
    iput-boolean v4, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 368
    iget v6, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v6, v5, :cond_39

    .line 369
    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 370
    iput v5, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 371
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 373
    :cond_39
    if-nez v2, :cond_3e

    if-gez v5, :cond_3e

    .line 375
    return v3

    .line 390
    .end local v5    # "touchedItem":I
    :cond_3e
    :goto_3e
    return v4

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_28
        :pswitch_18
        :pswitch_28
        :pswitch_1f
    .end packed-switch
.end method

.method blacklist setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "dayHighlightColor"    # Landroid/content/res/ColorStateList;

    .line 341
    nop

    .line 342
    const/16 v0, 0x18

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    .line 341
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 343
    .local v0, "pressedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 345
    return-void
.end method

.method public blacklist setDayOfWeekTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 258
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 259
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 260
    return-void
.end method

.method blacklist setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "dayOfWeekTextColor"    # Landroid/content/res/ColorStateList;

    .line 321
    sget-object v0, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 322
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 323
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 324
    return-void
.end method

.method blacklist setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .registers 5
    .param p1, "dayBackgroundColor"    # Landroid/content/res/ColorStateList;

    .line 332
    nop

    .line 333
    const/16 v0, 0x28

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    .line 332
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 334
    .local v0, "activatedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 338
    return-void
.end method

.method public blacklist setDayTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 263
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 264
    .local v0, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_a

    .line 265
    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 268
    :cond_a
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 269
    return-void
.end method

.method blacklist setDayTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "dayTextColor"    # Landroid/content/res/ColorStateList;

    .line 327
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 328
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 329
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "weekStart"    # I

    .line 777
    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 778
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_11

    .line 780
    :cond_9
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 783
    :goto_11
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 786
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 787
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 788
    return-void
.end method

.method blacklist setMonthParams(IIIIII)V
    .registers 12
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I

    .line 808
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 810
    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 811
    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 813
    :cond_a
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 815
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 816
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 817
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 818
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 820
    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 821
    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_3c

    .line 823
    :cond_34
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 827
    :goto_3c
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 828
    .local v0, "today":Landroid/icu/util/Calendar;
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 829
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {v1, v3}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 830
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4e
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v3, :cond_5f

    .line 831
    add-int/lit8 v3, v1, 0x1

    .line 832
    .local v3, "day":I
    invoke-direct {p0, v3, v0}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/icu/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 833
    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 830
    .end local v3    # "day":I
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 837
    .end local v1    # "i":I
    :cond_5f
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p5, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 838
    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 840
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 841
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 844
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 845
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 846
    return-void
.end method

.method public blacklist setMonthTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 252
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 254
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 255
    return-void
.end method

.method blacklist setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "monthTextColor"    # Landroid/content/res/ColorStateList;

    .line 315
    sget-object v0, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 316
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 317
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 318
    return-void
.end method

.method public blacklist setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 348
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 349
    return-void
.end method

.method public blacklist setSelectedDay(I)V
    .registers 3
    .param p1, "dayOfMonth"    # I

    .line 763
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 766
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 767
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 768
    return-void
.end method
