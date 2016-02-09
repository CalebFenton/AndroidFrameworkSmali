.class Landroid/widget/CalendarViewLegacyDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;,
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;,
        Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDayNamesLong:[Ljava/lang/String;

.field private mDayNamesShort:[Ljava/lang/String;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method static synthetic -get0(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    #@2
    return v0
.end method

.method static synthetic -get10(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    #@2
    return v0
.end method

.method static synthetic -get12(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    #@2
    return v0
.end method

.method static synthetic -get14(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    #@2
    return v0
.end method

.method static synthetic -get15(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    #@2
    return v0
.end method

.method static synthetic -get16(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    #@2
    return v0
.end method

.method static synthetic -get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    #@2
    return v0
.end method

.method static synthetic -get19(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    #@2
    return v0
.end method

.method static synthetic -get20(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    #@2
    return v0
.end method

.method static synthetic -get21(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)I
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->onScroll(Landroid/widget/AbsListView;III)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "calendar"    # Ljava/util/Calendar;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    #@0
    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    #@3
    .line 131
    const/4 v6, 0x2

    #@4
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    #@6
    .line 136
    const/16 v6, 0xc

    #@8
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    #@a
    .line 141
    const/16 v6, 0x14

    #@c
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    #@e
    .line 156
    const/4 v6, 0x7

    #@f
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    #@11
    .line 161
    const v6, 0x3d4ccccd    # 0.05f

    #@14
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    #@16
    .line 166
    const v6, 0x3eaa7efa    # 0.333f

    #@19
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    #@1b
    .line 206
    const/4 v6, -0x1

    #@1c
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    #@1e
    .line 216
    const/4 v6, 0x0

    #@1f
    iput-boolean v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    #@21
    .line 221
    const/4 v6, 0x0

    #@22
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    #@24
    .line 226
    const/4 v6, 0x0

    #@25
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    #@27
    .line 236
    new-instance v6, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    #@29
    const/4 v7, 0x0

    #@2a
    invoke-direct {v6, p0, v7}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;)V

    #@2d
    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    #@2f
    .line 263
    sget-object v6, Lcom/android/internal/R$styleable;->CalendarView:[I

    #@31
    .line 262
    invoke-virtual {p2, p3, v6, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@34
    move-result-object v0

    #@35
    .line 264
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    #@36
    .line 265
    const/4 v7, 0x1

    #@37
    .line 264
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3a
    move-result v6

    #@3b
    iput-boolean v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    #@3d
    .line 267
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@40
    move-result-object v6

    #@41
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@44
    move-result-object v6

    #@45
    iget-object v6, v6, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    #@47
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@4a
    move-result v6

    #@4b
    .line 266
    const/4 v7, 0x0

    #@4c
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4f
    move-result v6

    #@50
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    #@52
    .line 268
    const/4 v6, 0x2

    #@53
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    .line 269
    .local v5, "minDate":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@59
    invoke-static {v5, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    #@5c
    move-result v6

    #@5d
    if-nez v6, :cond_0

    #@5f
    .line 270
    const-string/jumbo v6, "01/01/1900"

    #@62
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@64
    invoke-static {v6, v7}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    #@67
    .line 272
    :cond_0
    const/4 v6, 0x3

    #@68
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    .line 273
    .local v4, "maxDate":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@6e
    invoke-static {v4, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    #@71
    move-result v6

    #@72
    if-nez v6, :cond_1

    #@74
    .line 274
    const-string/jumbo v6, "01/01/2100"

    #@77
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@79
    invoke-static {v6, v7}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    #@7c
    .line 276
    :cond_1
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@7e
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@80
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@83
    move-result v6

    #@84
    if-eqz v6, :cond_2

    #@86
    .line 277
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@88
    const-string/jumbo v7, "Max date cannot be before min date."

    #@8b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v6

    #@8f
    .line 279
    :cond_2
    const/4 v6, 0x4

    #@90
    .line 280
    const/4 v7, 0x6

    #@91
    .line 279
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@94
    move-result v6

    #@95
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    #@97
    .line 282
    const/4 v6, 0x5

    #@98
    const/4 v7, 0x0

    #@99
    .line 281
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    #@9c
    move-result v6

    #@9d
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    #@9f
    .line 284
    const/4 v6, 0x6

    #@a0
    const/4 v7, 0x0

    #@a1
    .line 283
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    #@a4
    move-result v6

    #@a5
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    #@a7
    .line 286
    const/4 v6, 0x7

    #@a8
    const/4 v7, 0x0

    #@a9
    .line 285
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    #@ac
    move-result v6

    #@ad
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    #@af
    .line 288
    const/16 v6, 0x9

    #@b1
    const/4 v7, 0x0

    #@b2
    .line 287
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    #@b5
    move-result v6

    #@b6
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    #@b8
    .line 289
    const/16 v6, 0x8

    #@ba
    const/4 v7, 0x0

    #@bb
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    #@be
    move-result v6

    #@bf
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    #@c1
    .line 291
    const/16 v6, 0xa

    #@c3
    .line 290
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@c6
    move-result-object v6

    #@c7
    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    #@c9
    .line 294
    const/16 v6, 0xc

    #@cb
    const v7, 0x1030046

    #@ce
    .line 293
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@d1
    move-result v6

    #@d2
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    #@d4
    .line 295
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    #@d7
    .line 298
    const/16 v6, 0xb

    #@d9
    .line 299
    const/4 v7, -0x1

    #@da
    .line 297
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@dd
    move-result v6

    #@de
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    #@e0
    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@e3
    .line 302
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    #@e5
    invoke-virtual {v6}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    #@e8
    move-result-object v6

    #@e9
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@ec
    move-result-object v2

    #@ed
    .line 304
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/high16 v6, 0x41400000    # 12.0f

    #@ef
    .line 303
    const/4 v7, 0x1

    #@f0
    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@f3
    move-result v6

    #@f4
    float-to-int v6, v6

    #@f5
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    #@f7
    .line 306
    const/high16 v6, 0x40000000    # 2.0f

    #@f9
    .line 305
    const/4 v7, 0x1

    #@fa
    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@fd
    move-result v6

    #@fe
    float-to-int v6, v6

    #@ff
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    #@101
    .line 308
    const/high16 v6, 0x41a00000    # 20.0f

    #@103
    .line 307
    const/4 v7, 0x1

    #@104
    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@107
    move-result v6

    #@108
    float-to-int v6, v6

    #@109
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    #@10b
    .line 310
    const/high16 v6, 0x40c00000    # 6.0f

    #@10d
    .line 309
    const/4 v7, 0x1

    #@10e
    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@111
    move-result v6

    #@112
    float-to-int v6, v6

    #@113
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    #@115
    .line 312
    const/high16 v6, 0x3f800000    # 1.0f

    #@117
    .line 311
    const/4 v7, 0x1

    #@118
    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@11b
    move-result v6

    #@11c
    float-to-int v6, v6

    #@11d
    iput v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I

    #@11f
    .line 314
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    #@121
    .line 315
    const-string/jumbo v7, "layout_inflater"

    #@124
    .line 314
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@127
    move-result-object v3

    #@128
    check-cast v3, Landroid/view/LayoutInflater;

    #@12a
    .line 316
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x109003b

    #@12d
    const/4 v7, 0x0

    #@12e
    const/4 v8, 0x0

    #@12f
    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@132
    move-result-object v1

    #@133
    .line 317
    .local v1, "content":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    #@135
    invoke-virtual {v6, v1}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    #@138
    .line 319
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    #@13a
    const v7, 0x102000a

    #@13d
    invoke-virtual {v6, v7}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    #@140
    move-result-object v6

    #@141
    check-cast v6, Landroid/widget/ListView;

    #@143
    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@145
    .line 320
    const v6, 0x102030f

    #@148
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@14b
    move-result-object v6

    #@14c
    check-cast v6, Landroid/view/ViewGroup;

    #@14e
    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    #@150
    .line 321
    const v6, 0x102030e

    #@153
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@156
    move-result-object v6

    #@157
    check-cast v6, Landroid/widget/TextView;

    #@159
    iput-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    #@15b
    .line 323
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    #@15e
    .line 324
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpListView()V

    #@161
    .line 325
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpAdapter()V

    #@164
    .line 328
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@169
    move-result-wide v8

    #@16a
    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@16d
    .line 329
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@16f
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@171
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@174
    move-result v6

    #@175
    if-eqz v6, :cond_3

    #@177
    .line 330
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@179
    const/4 v7, 0x0

    #@17a
    const/4 v8, 0x1

    #@17b
    const/4 v9, 0x1

    #@17c
    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    #@17f
    .line 337
    :goto_0
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    #@181
    invoke-virtual {v6}, Landroid/widget/CalendarView;->invalidate()V

    #@184
    .line 259
    return-void

    #@185
    .line 331
    :cond_3
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@187
    iget-object v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@189
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@18c
    move-result v6

    #@18d
    if-eqz v6, :cond_4

    #@18f
    .line 332
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@191
    const/4 v7, 0x0

    #@192
    const/4 v8, 0x1

    #@193
    const/4 v9, 0x1

    #@194
    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    #@197
    goto :goto_0

    #@198
    .line 334
    :cond_4
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@19a
    const/4 v7, 0x0

    #@19b
    const/4 v8, 0x1

    #@19c
    const/4 v9, 0x1

    #@19d
    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    #@1a0
    goto :goto_0
.end method

.method private static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 4
    .param p0, "oldCalendar"    # Ljava/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 649
    if-nez p0, :cond_0

    #@2
    .line 650
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@5
    move-result-object v3

    #@6
    return-object v3

    #@7
    .line 652
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@a
    move-result-wide v0

    #@b
    .line 653
    .local v0, "currentTimeMillis":J
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@e
    move-result-object v2

    #@f
    .line 654
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@12
    .line 655
    return-object v2
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 12
    .param p1, "date"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 924
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@2
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@5
    move-result v6

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 925
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v8, "fromDate: "

    #@12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@18
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    .line 926
    const-string/jumbo v8, " does not precede toDate: "

    #@23
    .line 925
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v7

    #@27
    .line 926
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@2a
    move-result-object v8

    #@2b
    .line 925
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v6

    #@37
    .line 928
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@3a
    move-result-wide v6

    #@3b
    .line 929
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@3e
    move-result-object v8

    #@3f
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@42
    move-result-wide v10

    #@43
    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    #@46
    move-result v8

    #@47
    int-to-long v8, v8

    #@48
    .line 928
    add-long v2, v6, v8

    #@4a
    .line 930
    .local v2, "endTimeMillis":J
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@4c
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@4f
    move-result-wide v6

    #@50
    .line 931
    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@52
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@55
    move-result-object v8

    #@56
    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@58
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    #@5b
    move-result-wide v10

    #@5c
    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    #@5f
    move-result v8

    #@60
    int-to-long v8, v8

    #@61
    .line 930
    add-long v4, v6, v8

    #@63
    .line 932
    .local v4, "startTimeMillis":J
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@65
    const/4 v7, 0x7

    #@66
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    #@69
    move-result v6

    #@6a
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    #@6c
    sub-int/2addr v6, v7

    #@6d
    int-to-long v6, v6

    #@6e
    .line 933
    const-wide/32 v8, 0x5265c00

    #@71
    .line 932
    mul-long v0, v6, v8

    #@73
    .line 934
    .local v0, "dayOffsetMillis":J
    sub-long v6, v2, v4

    #@75
    add-long/2addr v6, v0

    #@76
    const-wide/32 v8, 0x240c8400

    #@79
    div-long/2addr v6, v8

    #@7a
    long-to-int v6, v6

    #@7b
    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 9
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 773
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@3
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@b
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 774
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Time not between "

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@21
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    .line 775
    const-string/jumbo v6, " and "

    #@2c
    .line 774
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    .line 775
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@32
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@35
    move-result-object v6

    #@36
    .line 774
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v4

    #@42
    .line 778
    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@44
    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    #@47
    move-result v1

    #@48
    .line 779
    .local v1, "firstFullyVisiblePosition":I
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@4a
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@4d
    move-result-object v0

    #@4e
    .line 780
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_2

    #@50
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@53
    move-result v4

    #@54
    if-gez v4, :cond_2

    #@56
    .line 781
    add-int/lit8 v1, v1, 0x1

    #@58
    .line 783
    :cond_2
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    #@5a
    add-int/2addr v4, v1

    #@5b
    add-int/lit8 v2, v4, -0x1

    #@5d
    .line 784
    .local v2, "lastFullyVisiblePosition":I
    if-eqz v0, :cond_3

    #@5f
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@62
    move-result v4

    #@63
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    #@65
    if-le v4, v5, :cond_3

    #@67
    .line 785
    add-int/lit8 v2, v2, -0x1

    #@69
    .line 787
    :cond_3
    if-eqz p3, :cond_4

    #@6b
    .line 788
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@6d
    invoke-virtual {v4, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    #@70
    .line 791
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    #@73
    move-result v3

    #@74
    .line 795
    .local v3, "position":I
    if-lt v3, v1, :cond_5

    #@76
    if-le v3, v2, :cond_7

    #@78
    .line 797
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    #@7a
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@7d
    move-result-wide v6

    #@7e
    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@81
    .line 798
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    #@83
    const/4 v5, 0x5

    #@84
    const/4 v6, 0x1

    #@85
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    #@88
    .line 800
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    #@8a
    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    #@8d
    .line 803
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    #@8f
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@91
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@94
    move-result v4

    #@95
    if-eqz v4, :cond_8

    #@97
    .line 804
    const/4 v3, 0x0

    #@98
    .line 809
    :goto_0
    const/4 v4, 0x2

    #@99
    iput v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    #@9b
    .line 810
    if-eqz p2, :cond_9

    #@9d
    .line 811
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@9f
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    #@a1
    .line 812
    const/16 v6, 0x3e8

    #@a3
    .line 811
    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    #@a6
    .line 772
    :cond_6
    :goto_1
    return-void

    #@a7
    .line 795
    :cond_7
    if-nez p4, :cond_5

    #@a9
    .line 818
    if-eqz p3, :cond_6

    #@ab
    .line 820
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    #@ae
    goto :goto_1

    #@af
    .line 806
    :cond_8
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    #@b1
    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    #@b4
    move-result v3

    #@b5
    goto :goto_0

    #@b6
    .line 814
    :cond_9
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@b8
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    #@ba
    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@bd
    .line 816
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@bf
    invoke-direct {p0, v4, v8}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    #@c2
    goto :goto_1
.end method

.method private invalidateAllWeekViews()V
    .locals 4

    #@0
    .prologue
    .line 635
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@2
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    #@5
    move-result v0

    #@6
    .line 636
    .local v0, "childCount":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 637
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@b
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    .line 638
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    #@12
    .line 636
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 634
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private static isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "firstDate"    # Ljava/util/Calendar;
    .param p1, "secondDate"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    .line 664
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v2

    #@7
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    #@a
    move-result v3

    #@b
    if-ne v2, v3, :cond_1

    #@d
    .line 665
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    #@10
    move-result v2

    #@11
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    #@14
    move-result v3

    #@15
    if-ne v2, v3, :cond_0

    #@17
    .line 664
    :goto_0
    return v0

    #@18
    :cond_0
    move v0, v1

    #@19
    .line 665
    goto :goto_0

    #@1a
    :cond_1
    move v0, v1

    #@1b
    .line 664
    goto :goto_0
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    #@0
    .prologue
    .line 838
    const/4 v7, 0x0

    #@1
    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    #@7
    .line 839
    .local v0, "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    if-nez v0, :cond_0

    #@9
    .line 840
    return-void

    #@a
    .line 845
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    #@d
    move-result v7

    #@e
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getHeight()I

    #@11
    move-result v8

    #@12
    mul-int/2addr v7, v8

    #@13
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    #@16
    move-result v8

    #@17
    sub-int/2addr v7, v8

    #@18
    int-to-long v2, v7

    #@19
    .line 848
    .local v2, "currScroll":J
    iget-wide v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    #@1b
    cmp-long v7, v2, v8

    #@1d
    if-gez v7, :cond_3

    #@1f
    .line 849
    const/4 v7, 0x1

    #@20
    iput-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    #@22
    .line 860
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    #@25
    move-result v7

    #@26
    iget v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    #@28
    if-ge v7, v8, :cond_5

    #@2a
    const/4 v6, 0x1

    #@2b
    .line 861
    .local v6, "offset":I
    :goto_1
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    #@2d
    if-eqz v7, :cond_6

    #@2f
    .line 862
    add-int/lit8 v7, v6, 0x2

    #@31
    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@34
    move-result-object v0

    #@35
    .end local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    #@37
    .line 867
    .restart local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    #@39
    .line 870
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    #@3b
    if-eqz v7, :cond_7

    #@3d
    .line 871
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfFirstWeekDay()I

    #@40
    move-result v4

    #@41
    .line 878
    .local v4, "month":I
    :goto_3
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    #@43
    const/16 v8, 0xb

    #@45
    if-ne v7, v8, :cond_8

    #@47
    if-nez v4, :cond_8

    #@49
    .line 879
    const/4 v5, 0x1

    #@4a
    .line 888
    .local v5, "monthDiff":I
    :goto_4
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    #@4c
    if-nez v7, :cond_a

    #@4e
    if-lez v5, :cond_a

    #@50
    .line 889
    :goto_5
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getFirstDay()Ljava/util/Calendar;

    #@53
    move-result-object v1

    #@54
    .line 890
    .local v1, "firstDay":Ljava/util/Calendar;
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    #@56
    if-eqz v7, :cond_b

    #@58
    .line 891
    const/4 v7, 0x5

    #@59
    const/4 v8, -0x7

    #@5a
    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    #@5d
    .line 895
    :goto_6
    invoke-direct {p0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    #@60
    .line 898
    .end local v1    # "firstDay":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "monthDiff":I
    :cond_2
    iput-wide v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    #@62
    .line 899
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    #@64
    iput v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    #@66
    .line 837
    return-void

    #@67
    .line 850
    .end local v6    # "offset":I
    :cond_3
    iget-wide v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    #@69
    cmp-long v7, v2, v8

    #@6b
    if-lez v7, :cond_4

    #@6d
    .line 851
    const/4 v7, 0x0

    #@6e
    iput-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    #@70
    goto :goto_0

    #@71
    .line 853
    :cond_4
    return-void

    #@72
    .line 860
    :cond_5
    const/4 v6, 0x0

    #@73
    .restart local v6    # "offset":I
    goto :goto_1

    #@74
    .line 863
    :cond_6
    if-eqz v6, :cond_1

    #@76
    .line 864
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@79
    move-result-object v0

    #@7a
    .end local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    #@7c
    .restart local v0    # "child":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    goto :goto_2

    #@7d
    .line 873
    :cond_7
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfLastWeekDay()I

    #@80
    move-result v4

    #@81
    .restart local v4    # "month":I
    goto :goto_3

    #@82
    .line 880
    :cond_8
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    #@84
    if-nez v7, :cond_9

    #@86
    const/16 v7, 0xb

    #@88
    if-ne v4, v7, :cond_9

    #@8a
    .line 881
    const/4 v5, -0x1

    #@8b
    .line 880
    .restart local v5    # "monthDiff":I
    goto :goto_4

    #@8c
    .line 883
    .end local v5    # "monthDiff":I
    :cond_9
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    #@8e
    sub-int v5, v4, v7

    #@90
    .restart local v5    # "monthDiff":I
    goto :goto_4

    #@91
    .line 888
    :cond_a
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    #@93
    if-eqz v7, :cond_2

    #@95
    if-gez v5, :cond_2

    #@97
    goto :goto_5

    #@98
    .line 893
    .restart local v1    # "firstDay":Ljava/util/Calendar;
    :cond_b
    const/4 v7, 0x5

    #@99
    const/4 v8, 0x7

    #@9a
    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    #@9d
    goto :goto_6
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    #@0
    .prologue
    .line 829
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    #@5
    .line 828
    return-void
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 8
    .param p1, "calendar"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 909
    const/4 v1, 0x2

    #@1
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    #@4
    move-result v1

    #@5
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    #@7
    .line 910
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@9
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    #@b
    invoke-virtual {v1, v4}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setFocusMonth(I)V

    #@e
    .line 911
    const/16 v0, 0x34

    #@10
    .line 913
    .local v0, "flags":I
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@13
    move-result-wide v2

    #@14
    .line 914
    .local v2, "millis":J
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    #@16
    const/16 v6, 0x34

    #@18
    move-wide v4, v2

    #@19
    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    #@1c
    move-result-object v7

    #@1d
    .line 915
    .local v7, "newMonthName":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    #@1f
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@22
    .line 916
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    #@24
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    #@27
    .line 908
    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    #@0
    .prologue
    .line 672
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 673
    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@6
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    #@8
    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    #@b
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@d
    .line 674
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@f
    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$1;

    #@11
    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$1;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@17
    .line 686
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@19
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@1b
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@1e
    .line 690
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@20
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    #@23
    .line 671
    return-void
.end method

.method private setUpHeader()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    const/4 v7, 0x0

    #@3
    .line 697
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    #@5
    new-array v4, v4, [Ljava/lang/String;

    #@7
    iput-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    #@9
    .line 698
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    #@b
    new-array v4, v4, [Ljava/lang/String;

    #@d
    iput-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    #@f
    .line 699
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    #@11
    .local v2, "i":I
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    #@13
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    #@15
    add-int v1, v4, v5

    #@17
    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@19
    .line 700
    const/4 v4, 0x7

    #@1a
    if-le v2, v4, :cond_0

    #@1c
    add-int/lit8 v0, v2, -0x7

    #@1e
    .line 701
    .local v0, "calendarDay":I
    :goto_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    #@20
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    #@22
    sub-int v5, v2, v5

    #@24
    .line 702
    const/16 v6, 0x32

    #@26
    .line 701
    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    aput-object v6, v4, v5

    #@2c
    .line 703
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    #@2e
    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    #@30
    sub-int v5, v2, v5

    #@32
    .line 704
    const/16 v6, 0xa

    #@34
    .line 703
    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    aput-object v6, v4, v5

    #@3a
    .line 699
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 700
    .end local v0    # "calendarDay":I
    :cond_0
    move v0, v2

    #@3e
    .restart local v0    # "calendarDay":I
    goto :goto_1

    #@3f
    .line 707
    .end local v0    # "calendarDay":I
    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    #@41
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@44
    move-result-object v3

    #@45
    check-cast v3, Landroid/widget/TextView;

    #@47
    .line 708
    .local v3, "label":Landroid/widget/TextView;
    iget-boolean v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    #@49
    if-eqz v4, :cond_3

    #@4b
    .line 709
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@4e
    .line 713
    :goto_2
    const/4 v2, 0x1

    #@4f
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    #@51
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    #@54
    move-result v1

    #@55
    :goto_3
    if-ge v2, v1, :cond_5

    #@57
    .line 714
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    #@59
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@5c
    move-result-object v3

    #@5d
    .end local v3    # "label":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    #@5f
    .line 715
    .restart local v3    # "label":Landroid/widget/TextView;
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    #@61
    const/4 v5, -0x1

    #@62
    if-le v4, v5, :cond_2

    #@64
    .line 716
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    #@66
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@69
    .line 718
    :cond_2
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    #@6b
    add-int/lit8 v4, v4, 0x1

    #@6d
    if-ge v2, v4, :cond_4

    #@6f
    .line 719
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    #@71
    add-int/lit8 v5, v2, -0x1

    #@73
    aget-object v4, v4, v5

    #@75
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@78
    .line 720
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    #@7a
    add-int/lit8 v5, v2, -0x1

    #@7c
    aget-object v4, v4, v5

    #@7e
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@81
    .line 721
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    #@84
    .line 713
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@86
    goto :goto_3

    #@87
    .line 711
    :cond_3
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    #@8a
    goto :goto_2

    #@8b
    .line 723
    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    #@8e
    goto :goto_4

    #@8f
    .line 726
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    #@91
    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    #@94
    .line 696
    return-void
.end method

.method private setUpListView()V
    .locals 2

    #@0
    .prologue
    .line 734
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    #@6
    .line 735
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    #@c
    .line 736
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    #@12
    .line 737
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@14
    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$2;

    #@16
    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$2;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    #@1c
    .line 750
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@1e
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    #@20
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    #@23
    .line 751
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@25
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    #@27
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    #@2a
    .line 732
    return-void
.end method

.method private updateDateTextSize()V
    .locals 4

    #@0
    .prologue
    .line 624
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    #@2
    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    .line 625
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    #@8
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    #@a
    .line 624
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@d
    move-result-object v0

    #@e
    .line 627
    .local v0, "dateTextAppearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@f
    const/16 v2, 0xe

    #@11
    .line 626
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    #@17
    .line 628
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 623
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    #@0
    .prologue
    .line 596
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@2
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-get0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    #@0
    .prologue
    .line 487
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    #@2
    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 577
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    #@2
    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    #@0
    .prologue
    .line 388
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    #@2
    return v0
.end method

.method public getMaxDate()J
    .locals 2

    #@0
    .prologue
    .line 546
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 460
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    #@0
    .prologue
    .line 369
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    #@2
    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    #@0
    .prologue
    .line 561
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    #@2
    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    #@0
    .prologue
    .line 350
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    #@2
    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    #@0
    .prologue
    .line 407
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    #@2
    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    #@0
    .prologue
    .line 473
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    #@2
    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    #@0
    .prologue
    .line 422
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    #@2
    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    #@0
    .prologue
    .line 435
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    #@2
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 606
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@5
    .line 605
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 616
    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@3
    .line 618
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@5
    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@b
    .line 619
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    #@d
    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    #@13
    .line 620
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@15
    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@1b
    .line 621
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@1d
    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@23
    .line 615
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 582
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(JZZ)V

    #@4
    .line 581
    return-void
.end method

.method public setDate(JZZ)V
    .locals 3
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    #@0
    .prologue
    .line 587
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@5
    .line 588
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@7
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@9
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-get0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    #@c
    move-result-object v1

    #@d
    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 589
    return-void

    #@14
    .line 591
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@16
    const/4 v1, 0x1

    #@17
    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    #@1a
    .line 586
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    #@0
    .prologue
    .line 478
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 479
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    #@6
    .line 480
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    #@9
    .line 481
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    #@c
    .line 477
    :cond_0
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    #@0
    .prologue
    .line 566
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 567
    return-void

    #@5
    .line 569
    :cond_0
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    #@7
    .line 570
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@9
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    #@c
    .line 571
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@e
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    #@11
    .line 572
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    #@14
    .line 565
    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 4
    .param p1, "color"    # I

    #@0
    .prologue
    .line 374
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    #@2
    if-eq v3, p1, :cond_1

    #@4
    .line 375
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    #@6
    .line 376
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@8
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    #@b
    move-result v0

    #@c
    .line 377
    .local v0, "childCount":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@f
    .line 378
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@11
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    #@17
    .line 379
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-get0(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 380
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    #@20
    .line 377
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 373
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 525
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@3
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@6
    .line 526
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@8
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@a
    invoke-static {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 527
    return-void

    #@11
    .line 529
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@13
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@16
    .line 531
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@18
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    #@1b
    .line 532
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@1d
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-get0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    #@20
    move-result-object v0

    #@21
    .line 533
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@23
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 534
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    #@2b
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@2e
    move-result-wide v2

    #@2f
    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    #@32
    .line 524
    :goto_0
    return-void

    #@33
    .line 540
    :cond_1
    const/4 v1, 0x1

    #@34
    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    #@37
    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 492
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@3
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@6
    .line 493
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@8
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@a
    invoke-static {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 494
    return-void

    #@11
    .line 496
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@13
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@16
    .line 501
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@18
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-get0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    #@1b
    move-result-object v0

    #@1c
    .line 502
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@1e
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 503
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@26
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@28
    invoke-virtual {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    #@2b
    .line 506
    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@2d
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    #@30
    .line 507
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    #@32
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_2

    #@38
    .line 508
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    #@3a
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@3d
    move-result-wide v2

    #@3e
    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    #@41
    .line 491
    :goto_0
    return-void

    #@42
    .line 514
    :cond_2
    const/4 v1, 0x1

    #@43
    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    #@46
    goto :goto_0
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    #@0
    .prologue
    .line 601
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    #@2
    .line 600
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 2
    .param p1, "resourceId"    # I

    #@0
    .prologue
    .line 440
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    #@2
    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    .line 441
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 439
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 446
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v3, p1, :cond_1

    #@4
    .line 447
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    #@6
    .line 448
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@8
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    #@b
    move-result v0

    #@c
    .line 449
    .local v0, "childCount":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@f
    .line 450
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@11
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    #@17
    .line 451
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-get1(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 452
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    #@20
    .line 449
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 445
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    #@0
    .prologue
    .line 355
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    #@2
    if-eq v3, p1, :cond_1

    #@4
    .line 356
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    #@6
    .line 357
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@8
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    #@b
    move-result v0

    #@c
    .line 358
    .local v0, "childCount":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@f
    .line 359
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@11
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    #@17
    .line 360
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-get1(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 361
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    #@20
    .line 358
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 354
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1
    .param p1, "showWeekNumber"    # Z

    #@0
    .prologue
    .line 551
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 552
    return-void

    #@5
    .line 554
    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    #@7
    .line 555
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@9
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    #@c
    .line 556
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    #@f
    .line 550
    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 342
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 343
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    #@6
    .line 344
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    #@8
    invoke-virtual {v0}, Landroid/widget/CalendarView;->invalidate()V

    #@b
    .line 341
    :cond_0
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 4
    .param p1, "color"    # I

    #@0
    .prologue
    .line 393
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    #@2
    if-eq v3, p1, :cond_1

    #@4
    .line 394
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    #@6
    .line 395
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@8
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    #@b
    move-result v0

    #@c
    .line 396
    .local v0, "childCount":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@f
    .line 397
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    #@11
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    #@17
    .line 398
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->-get2(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 399
    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    #@20
    .line 396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 392
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    #@0
    .prologue
    .line 465
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 466
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    #@6
    .line 467
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    #@9
    .line 464
    :cond_0
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1
    .param p1, "color"    # I

    #@0
    .prologue
    .line 412
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 413
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    #@6
    .line 414
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 415
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    #@d
    .line 411
    :cond_0
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1
    .param p1, "color"    # I

    #@0
    .prologue
    .line 427
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 428
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    #@6
    .line 429
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    #@9
    .line 426
    :cond_0
    return-void
.end method
