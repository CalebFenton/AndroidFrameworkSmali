.class Landroid/widget/CalendarViewLegacyDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;,
        Landroid/widget/CalendarViewLegacyDelegate$WeekView;,
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    }
.end annotation


# static fields
.field private static final blacklist ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final blacklist DAYS_PER_WEEK:I = 0x7

.field private static final blacklist DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final blacklist DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final blacklist DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final blacklist DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final blacklist GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final blacklist MILLIS_IN_DAY:J = 0x5265c00L

.field private static final blacklist MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final blacklist SCROLL_CHANGE_DELAY:I = 0x28

.field private static final blacklist SCROLL_HYST_WEEKS:I = 0x2

.field private static final blacklist UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final blacklist UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final blacklist UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final blacklist UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final blacklist UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private blacklist mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

.field private blacklist mBottomBuffer:I

.field private blacklist mCurrentMonthDisplayed:I

.field private blacklist mCurrentScrollState:I

.field private blacklist mDateTextAppearanceResId:I

.field private blacklist mDateTextSize:I

.field private blacklist mDayNamesHeader:Landroid/view/ViewGroup;

.field private blacklist mDayNamesLong:[Ljava/lang/String;

.field private blacklist mDayNamesShort:[Ljava/lang/String;

.field private blacklist mDaysPerWeek:I

.field private blacklist mFirstDayOfMonth:Landroid/icu/util/Calendar;

.field private blacklist mFirstDayOfWeek:I

.field private blacklist mFocusedMonthDateColor:I

.field private blacklist mFriction:F

.field private blacklist mIsScrollingUp:Z

.field private blacklist mListScrollTopOffset:I

.field private blacklist mListView:Landroid/widget/ListView;

.field private blacklist mMaxDate:Landroid/icu/util/Calendar;

.field private blacklist mMinDate:Landroid/icu/util/Calendar;

.field private blacklist mMonthName:Landroid/widget/TextView;

.field private blacklist mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private blacklist mPreviousScrollPosition:J

.field private blacklist mPreviousScrollState:I

.field private blacklist mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

.field private blacklist mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final blacklist mSelectedDateVerticalBarWidth:I

.field private blacklist mSelectedWeekBackgroundColor:I

.field private blacklist mShowWeekNumber:Z

.field private blacklist mShownWeekCount:I

.field private blacklist mTempDate:Landroid/icu/util/Calendar;

.field private blacklist mUnfocusedMonthDateColor:I

.field private blacklist mVelocityScale:F

.field private blacklist mWeekDayTextAppearanceResId:I

.field private blacklist mWeekMinVisibleHeight:I

.field private blacklist mWeekNumberColor:I

.field private blacklist mWeekSeparatorLineColor:I

.field private final blacklist mWeekSeparatorLineWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDateTextSize(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDaysPerWeek(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstDayOfWeek(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusedMonthDateColor(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsScrollingUp(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListScrollTopOffset(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListView(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDateChangeListener(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousScrollState(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedDateVerticalBar(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedDateVerticalBarWidth(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedWeekBackgroundColor(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowWeekNumber(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShownWeekCount(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfocusedMonthDateColor(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekNumberColor(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekSeparatorLineColor(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekSeparatorLineWidth(Landroid/widget/CalendarViewLegacyDelegate;)I
    .registers 1

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentScrollState(Landroid/widget/CalendarViewLegacyDelegate;I)V
    .registers 2

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousScrollState(Landroid/widget/CalendarViewLegacyDelegate;I)V
    .registers 2

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWeeksSinceMinDate(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monScroll(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monScrollStateChanged(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMonthDisplayed(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 22
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 258
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 129
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 134
    const/16 v2, 0xc

    iput v2, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 139
    const/16 v3, 0x14

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 154
    const/4 v3, 0x7

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    .line 159
    const v4, 0x3d4ccccd    # 0.05f

    iput v4, v0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    .line 164
    const v4, 0x3eaa7efa    # 0.333f

    iput v4, v0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    .line 204
    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 214
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 219
    iput v5, v0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 224
    iput v5, v0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    .line 234
    new-instance v6, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate-IA;)V

    iput-object v6, v0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    .line 260
    sget-object v6, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual {v8, v9, v6, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 262
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v12, 0x1

    invoke-virtual {v6, v12, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 264
    nop

    .line 265
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v13

    .line 264
    invoke-virtual {v6, v5, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 266
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "minDate":Ljava/lang/String;
    iget-object v13, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v1, v13}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_66

    .line 268
    const-string v13, "01/01/1900"

    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v13, v14}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 270
    :cond_66
    const/4 v13, 0x3

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 271
    .local v13, "maxDate":Ljava/lang/String;
    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v13, v14}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v14

    if-nez v14, :cond_7a

    .line 272
    const-string v14, "01/01/2100"

    iget-object v15, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v14, v15}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 274
    :cond_7a
    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    iget-object v15, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v14, v15}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17b

    .line 277
    const/4 v14, 0x4

    const/4 v15, 0x6

    invoke-virtual {v6, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 279
    const/4 v14, 0x5

    invoke-virtual {v6, v14, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    iput v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 281
    invoke-virtual {v6, v15, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    iput v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 283
    invoke-virtual {v6, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 285
    const/16 v3, 0x9

    invoke-virtual {v6, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 287
    const/16 v3, 0x8

    invoke-virtual {v6, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 288
    const/16 v3, 0xa

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 291
    const v3, 0x1030046

    invoke-virtual {v6, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 293
    invoke-direct {v0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    .line 295
    const/16 v2, 0xb

    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 298
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    iget-object v2, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v2}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 301
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v12, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 303
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v12, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 305
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v12, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 307
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v12, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    .line 309
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v12, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineWidth:I

    .line 312
    iget-object v3, v0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    .line 313
    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 314
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x109004f

    invoke-virtual {v3, v4, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 315
    .local v4, "content":Landroid/view/View;
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v7, v4}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 317
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const v14, 0x102000a

    invoke-virtual {v7, v14}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 318
    const v7, 0x10202c9

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 319
    const v7, 0x1020406

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    .line 321
    invoke-direct {v0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 322
    invoke-direct {v0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpListView()V

    .line 323
    invoke-direct {v0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpAdapter()V

    .line 326
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 327
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v7, v14}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_160

    .line 328
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v7, v5, v12, v12}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    goto :goto_175

    .line 329
    :cond_160
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    iget-object v14, v0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v7, v14}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_170

    .line 330
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v7, v5, v12, v12}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    goto :goto_175

    .line 332
    :cond_170
    iget-object v7, v0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v7, v5, v12, v12}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 335
    :goto_175
    iget-object v5, v0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v5}, Landroid/widget/CalendarView;->invalidate()V

    .line 336
    return-void

    .line 275
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v4    # "content":Landroid/view/View;
    :cond_17b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Max date cannot be before min date."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .registers 5
    .param p0, "oldCalendar"    # Landroid/icu/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 671
    if-nez p0, :cond_7

    .line 672
    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 674
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 675
    .local v0, "currentTimeMillis":J
    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 676
    .local v2, "newCalendar":Landroid/icu/util/Calendar;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 677
    return-object v2
.end method

.method private blacklist getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I
    .registers 12
    .param p1, "date"    # Landroid/icu/util/Calendar;

    .line 946
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 950
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 951
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 952
    .local v0, "endTimeMillis":J
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 953
    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v5}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 954
    .local v2, "startTimeMillis":J
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    .line 956
    .local v4, "dayOffsetMillis":J
    sub-long v6, v0, v2

    add-long/2addr v6, v4

    const-wide/32 v8, 0x240c8400

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6

    .line 947
    .end local v0    # "endTimeMillis":J
    .end local v2    # "startTimeMillis":J
    .end local v4    # "dayOffsetMillis":J
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not precede toDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 948
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist goTo(Landroid/icu/util/Calendar;ZZZ)V
    .registers 14
    .param p1, "date"    # Landroid/icu/util/Calendar;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .line 795
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 800
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 801
    .local v0, "firstFullyVisiblePosition":I
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 802
    .local v1, "firstChild":Landroid/view/View;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_27

    .line 803
    add-int/lit8 v0, v0, 0x1

    .line 805
    :cond_27
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 806
    .local v3, "lastFullyVisiblePosition":I
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    if-le v5, v6, :cond_38

    .line 807
    add-int/lit8 v3, v3, -0x1

    .line 809
    :cond_38
    if-eqz p3, :cond_3f

    .line 810
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v5, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 813
    :cond_3f
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result v5

    .line 817
    .local v5, "position":I
    if-lt v5, v0, :cond_50

    if-gt v5, v3, :cond_50

    if-eqz p4, :cond_4a

    goto :goto_50

    .line 840
    :cond_4a
    if-eqz p3, :cond_93

    .line 842
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    goto :goto_93

    .line 819
    :cond_50
    :goto_50
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 820
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 822
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    .line 825
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v4, v6}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 826
    const/4 v4, 0x0

    move v5, v4

    .end local v5    # "position":I
    .local v4, "position":I
    goto :goto_78

    .line 828
    .end local v4    # "position":I
    .restart local v5    # "position":I
    :cond_71
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result v4

    move v5, v4

    .line 831
    :goto_78
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 832
    if-eqz p2, :cond_87

    .line 833
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v2, v5, v4, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_93

    .line 836
    :cond_87
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 838
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 844
    :cond_93
    :goto_93
    return-void

    .line 796
    .end local v0    # "firstFullyVisiblePosition":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v3    # "lastFullyVisiblePosition":I
    .end local v5    # "position":I
    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeInMillis must be between the values of getMinDate() and getMaxDate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist invalidateAllWeekViews()V
    .registers 4

    .line 657
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 658
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 659
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 660
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 658
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 662
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method private static blacklist isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .registers 5
    .param p0, "firstDate"    # Landroid/icu/util/Calendar;
    .param p1, "secondDate"    # Landroid/icu/util/Calendar;

    .line 686
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_17

    .line 687
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 686
    :goto_18
    return v0
.end method

.method private blacklist onScroll(Landroid/widget/AbsListView;III)V
    .registers 14
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 860
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 861
    .local v1, "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    if-nez v1, :cond_a

    .line 862
    return-void

    .line 866
    :cond_a
    nop

    .line 867
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 870
    .local v2, "currScroll":J
    iget-wide v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-gez v4, :cond_24

    .line 871
    iput-boolean v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    goto :goto_2c

    .line 872
    :cond_24
    iget-wide v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long v4, v2, v6

    if-lez v4, :cond_99

    .line 873
    iput-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 882
    :goto_2c
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v4

    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    if-ge v4, v6, :cond_35

    move v0, v5

    .line 883
    .local v0, "offset":I
    :cond_35
    iget-boolean v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v4, :cond_43

    .line 884
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    goto :goto_4c

    .line 885
    :cond_43
    if-eqz v0, :cond_4c

    .line 886
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 889
    :cond_4c
    :goto_4c
    if-eqz v1, :cond_92

    .line 892
    iget-boolean v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v4, :cond_57

    .line 893
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    .local v4, "month":I
    goto :goto_5b

    .line 895
    .end local v4    # "month":I
    :cond_57
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    .line 900
    .restart local v4    # "month":I
    :goto_5b
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_65

    if-nez v4, :cond_65

    .line 901
    const/4 v5, 0x1

    .local v5, "monthDiff":I
    goto :goto_71

    .line 902
    .end local v5    # "monthDiff":I
    :cond_65
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    if-nez v5, :cond_6d

    if-ne v4, v6, :cond_6d

    .line 903
    const/4 v5, -0x1

    .restart local v5    # "monthDiff":I
    goto :goto_71

    .line 905
    .end local v5    # "monthDiff":I
    :cond_6d
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v5

    .line 910
    .restart local v5    # "monthDiff":I
    :goto_71
    iget-boolean v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-nez v6, :cond_77

    if-gtz v5, :cond_7d

    :cond_77
    iget-boolean v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v6, :cond_92

    if-gez v5, :cond_92

    .line 911
    :cond_7d
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getFirstDay()Landroid/icu/util/Calendar;

    move-result-object v6

    .line 912
    .local v6, "firstDay":Landroid/icu/util/Calendar;
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    const/4 v8, 0x5

    if-eqz v7, :cond_8b

    .line 913
    const/4 v7, -0x7

    invoke-virtual {v6, v8, v7}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_8f

    .line 915
    :cond_8b
    const/4 v7, 0x7

    invoke-virtual {v6, v8, v7}, Landroid/icu/util/Calendar;->add(II)V

    .line 917
    :goto_8f
    invoke-direct {p0, v6}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    .line 920
    .end local v4    # "month":I
    .end local v5    # "monthDiff":I
    .end local v6    # "firstDay":Landroid/icu/util/Calendar;
    :cond_92
    iput-wide v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    .line 921
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    iput v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 922
    return-void

    .line 875
    .end local v0    # "offset":I
    :cond_99
    return-void
.end method

.method private blacklist onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 851
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 852
    return-void
.end method

.method private blacklist setMonthDisplayed(Landroid/icu/util/Calendar;)V
    .registers 9
    .param p1, "calendar"    # Landroid/icu/util/Calendar;

    .line 931
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 932
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setFocusMonth(I)V

    .line 933
    const/16 v0, 0x34

    .line 935
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 936
    .local v2, "millis":J
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, "newMonthName":Ljava/lang/String;
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->invalidate()V

    .line 939
    return-void
.end method

.method private blacklist setUpAdapter()V
    .registers 3

    .line 694
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    if-nez v0, :cond_1e

    .line 695
    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 696
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$1;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 708
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 712
    :cond_1e
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 713
    return-void
.end method

.method private blacklist setUpHeader()V
    .registers 8

    .line 719
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    .line 720
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    .line 721
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .local v0, "i":I
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int/2addr v1, v2

    .local v1, "count":I
    :goto_13
    if-ge v0, v1, :cond_3b

    .line 722
    const/4 v2, 0x7

    if-le v0, v2, :cond_1b

    add-int/lit8 v2, v0, -0x7

    goto :goto_1c

    :cond_1b
    move v2, v0

    .line 723
    .local v2, "calendarDay":I
    :goto_1c
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v4, v0, v4

    const/16 v5, 0x32

    invoke-static {v2, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 725
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v4, v0, v4

    const/16 v5, 0xa

    invoke-static {v2, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 721
    .end local v2    # "calendarDay":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 729
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_3b
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 730
    .local v0, "label":Landroid/widget/TextView;
    iget-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_4e

    .line 731
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_51

    .line 733
    :cond_4e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    :goto_51
    const/4 v2, 0x1

    .local v2, "i":I
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .local v4, "count":I
    :goto_58
    if-ge v2, v4, :cond_8f

    .line 736
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    .line 737
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_6d

    .line 738
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 740
    :cond_6d
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_89

    .line 741
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 743
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8c

    .line 745
    :cond_89
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    :goto_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 748
    .end local v2    # "i":I
    .end local v4    # "count":I
    :cond_8f
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 749
    return-void
.end method

.method private blacklist setUpListView()V
    .registers 3

    .line 756
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 757
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 758
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 759
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$2;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 772
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 773
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 774
    return-void
.end method

.method private blacklist updateDateTextSize()V
    .registers 4

    .line 646
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    sget-object v2, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 648
    .local v0, "dateTextAppearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    .line 650
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 651
    return-void
.end method


# virtual methods
.method public blacklist getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 13
    .param p1, "date"    # J
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 604
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 605
    .local v0, "calendarDate":Landroid/icu/util/Calendar;
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 606
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 607
    .local v1, "listViewEntryCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_3f

    .line 608
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 609
    .local v3, "currWeekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-virtual {v3, v0, p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 612
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 613
    .local v5, "weekViewPositionOnScreen":[I
    new-array v4, v4, [I

    .line 614
    .local v4, "delegatorPositionOnScreen":[I
    invoke-virtual {v3, v5}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getLocationOnScreen([I)V

    .line 615
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v6, v4}, Landroid/widget/CalendarView;->getLocationOnScreen([I)V

    .line 616
    const/4 v6, 0x1

    aget v7, v5, v6

    aget v8, v4, v6

    sub-int/2addr v7, v8

    .line 618
    .local v7, "extraVerticalOffset":I
    iget v8, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v7

    iput v8, p3, Landroid/graphics/Rect;->top:I

    .line 619
    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v7

    iput v8, p3, Landroid/graphics/Rect;->bottom:I

    .line 620
    return v6

    .line 607
    .end local v3    # "currWeekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    .end local v4    # "delegatorPositionOnScreen":[I
    .end local v5    # "weekViewPositionOnScreen":[I
    .end local v7    # "extraVerticalOffset":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 623
    .end local v2    # "i":I
    :cond_3f
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist getDate()J
    .registers 3

    .line 594
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$fgetmSelectedDate(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDateTextAppearance()I
    .registers 2

    .line 485
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    return v0
.end method

.method public blacklist getFirstDayOfWeek()I
    .registers 2

    .line 575
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method public blacklist getFocusedMonthDateColor()I
    .registers 2

    .line 386
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public blacklist getMaxDate()J
    .registers 3

    .line 544
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinDate()J
    .registers 3

    .line 518
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 458
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getSelectedWeekBackgroundColor()I
    .registers 2

    .line 367
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public blacklist getShowWeekNumber()Z
    .registers 2

    .line 559
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method public blacklist getShownWeekCount()I
    .registers 2

    .line 348
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method public blacklist getUnfocusedMonthDateColor()I
    .registers 2

    .line 405
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method public blacklist getWeekDayTextAppearance()I
    .registers 2

    .line 471
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public blacklist getWeekNumberColor()I
    .registers 2

    .line 420
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method public blacklist getWeekSeparatorLineColor()I
    .registers 2

    .line 433
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 628
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 629
    return-void
.end method

.method protected blacklist setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 638
    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 640
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 641
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    .line 642
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 643
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 644
    return-void
.end method

.method public blacklist setDate(J)V
    .registers 4
    .param p1, "date"    # J

    .line 580
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(JZZ)V

    .line 581
    return-void
.end method

.method public blacklist setDate(JZZ)V
    .registers 7
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .line 585
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 586
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$fgetmSelectedDate(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 587
    return-void

    .line 589
    :cond_14
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 590
    return-void
.end method

.method public blacklist setDateTextAppearance(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .line 476
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_c

    .line 477
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 478
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    .line 479
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 481
    :cond_c
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .line 564
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_5

    .line 565
    return-void

    .line 567
    :cond_5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 568
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$minit(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 569
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 570
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 571
    return-void
.end method

.method public blacklist setFocusedMonthDateColor(I)V
    .registers 6
    .param p1, "color"    # I

    .line 372
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    if-eq v0, p1, :cond_23

    .line 373
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 374
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 375
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 376
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 377
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-$$Nest$fgetmHasFocusedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 378
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 375
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 382
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method public blacklist setMaxDate(J)V
    .registers 6
    .param p1, "maxDate"    # J

    .line 523
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 524
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 525
    return-void

    .line 527
    :cond_10
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 529
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$minit(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 530
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$fgetmSelectedDate(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 531
    .local v0, "date":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 532
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    goto :goto_37

    .line 538
    :cond_32
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 540
    :goto_37
    return-void
.end method

.method public blacklist setMinDate(J)V
    .registers 6
    .param p1, "minDate"    # J

    .line 490
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 491
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 492
    return-void

    .line 494
    :cond_10
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 499
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$fgetmSelectedDate(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 500
    .local v0, "date":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 501
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 504
    :cond_2a
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-$$Nest$minit(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 505
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 506
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    goto :goto_46

    .line 512
    :cond_41
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 514
    :goto_46
    return-void
.end method

.method public blacklist setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .line 599
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 600
    return-void
.end method

.method public blacklist setSelectedDateVerticalBar(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .line 438
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 439
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    .line 440
    return-void
.end method

.method public blacklist setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 444
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_23

    .line 445
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 446
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 447
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 448
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 449
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-$$Nest$fgetmHasSelectedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 450
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 447
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 454
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method public blacklist setSelectedWeekBackgroundColor(I)V
    .registers 6
    .param p1, "color"    # I

    .line 353
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    if-eq v0, p1, :cond_23

    .line 354
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 355
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 356
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 357
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 358
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-$$Nest$fgetmHasSelectedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 359
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 356
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 363
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method public blacklist setShowWeekNumber(Z)V
    .registers 3
    .param p1, "showWeekNumber"    # Z

    .line 549
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_5

    .line 550
    return-void

    .line 552
    :cond_5
    iput-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 553
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 554
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 555
    return-void
.end method

.method public blacklist setShownWeekCount(I)V
    .registers 3
    .param p1, "count"    # I

    .line 340
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    if-eq v0, p1, :cond_b

    .line 341
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 342
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->invalidate()V

    .line 344
    :cond_b
    return-void
.end method

.method public blacklist setUnfocusedMonthDateColor(I)V
    .registers 6
    .param p1, "color"    # I

    .line 391
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    if-eq v0, p1, :cond_23

    .line 392
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 393
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 394
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 395
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 396
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-$$Nest$fgetmHasUnfocusedDay(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 397
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    .line 394
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 401
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method public blacklist setWeekDayTextAppearance(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .line 463
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_9

    .line 464
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 465
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 467
    :cond_9
    return-void
.end method

.method public blacklist setWeekNumberColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 410
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    if-eq v0, p1, :cond_d

    .line 411
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 412
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-eqz v0, :cond_d

    .line 413
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 416
    :cond_d
    return-void
.end method

.method public blacklist setWeekSeparatorLineColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 425
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_9

    .line 426
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 427
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 429
    :cond_9
    return-void
.end method
