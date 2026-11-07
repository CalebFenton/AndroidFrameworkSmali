.class Landroid/widget/DatePickerCalendarDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePickerCalendarDelegate$ClickActionDelegate;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DURATION:I = 0x12c

.field private static final blacklist ATTRS_DISABLED_ALPHA:[I

.field private static final blacklist ATTRS_TEXT_COLOR:[I

.field private static final blacklist DEFAULT_END_YEAR:I = 0x834

.field private static final blacklist DEFAULT_START_YEAR:I = 0x76c

.field private static final blacklist UNINITIALIZED:I = -0x1

.field private static final blacklist USE_LOCALE:I = 0x0

.field private static final blacklist VIEW_MONTH_DAY:I = 0x0

.field private static final blacklist VIEW_YEAR:I = 0x1


# instance fields
.field private blacklist mAnimator:Landroid/widget/ViewAnimator;

.field private blacklist mContainer:Landroid/view/ViewGroup;

.field private blacklist mCurrentView:I

.field private blacklist mDayPickerView:Landroid/widget/DayPickerView;

.field private blacklist mFirstDayOfWeek:I

.field private blacklist mHeaderMonthDay:Landroid/widget/TextView;

.field private blacklist mHeaderYear:Landroid/widget/TextView;

.field private final blacklist mMaxDate:Landroid/icu/util/Calendar;

.field private final blacklist mMinDate:Landroid/icu/util/Calendar;

.field private blacklist mMonthDayFormat:Landroid/icu/text/DateFormat;

.field private final blacklist mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final blacklist mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private final blacklist mTempDate:Landroid/icu/util/Calendar;

.field private blacklist mYearFormat:Landroid/icu/text/DateFormat;

.field private blacklist mYearPickerView:Landroid/widget/YearPickerView;


# direct methods
.method public static synthetic blacklist $r8$lambda$1sHHUjUzSaU3NaJQPsxH7rZyzTo(Landroid/widget/DatePickerCalendarDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->lambda$setCurrentView$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sdJYFs1J4NrQBPWEqHvI9RPE1I0(Landroid/widget/DatePickerCalendarDelegate;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeaderYear(Landroid/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxDate(Landroid/widget/DatePickerCalendarDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinDate(Landroid/widget/DatePickerCalendarDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monDateChanged(Landroid/widget/DatePickerCalendarDelegate;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCurrentView(Landroid/widget/DatePickerCalendarDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetDaysInMonth(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const v0, 0x1010098

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    .line 62
    const v0, 0x1010033

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 23
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    .line 80
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 86
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 252
    new-instance v3, Landroid/widget/DatePickerCalendarDelegate$1;

    invoke-direct {v3, v0}, Landroid/widget/DatePickerCalendarDelegate$1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    iput-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    .line 263
    new-instance v3, Landroid/widget/DatePickerCalendarDelegate$2;

    invoke-direct {v3, v0}, Landroid/widget/DatePickerCalendarDelegate$2;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    iput-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    .line 297
    new-instance v3, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    iput-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 92
    iget-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 93
    .local v3, "locale":Ljava/util/Locale;
    invoke-static {v3}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 94
    invoke-static {v3}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 95
    invoke-static {v3}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 96
    invoke-static {v3}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v4

    iput-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 98
    iget-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    const/16 v5, 0x76c

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Landroid/icu/util/Calendar;->set(III)V

    .line 99
    iget-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    const/16 v5, 0xb

    const/16 v7, 0x1f

    const/16 v8, 0x834

    invoke-virtual {v4, v8, v5, v7}, Landroid/icu/util/Calendar;->set(III)V

    .line 101
    iget-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 102
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual {v5, v8, v7, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 104
    .local v5, "a":Landroid/content/res/TypedArray;
    iget-object v7, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v7, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 106
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/16 v11, 0x13

    const v12, 0x1090070

    invoke-virtual {v5, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 110
    .local v11, "layoutResourceId":I
    iget-object v12, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v7, v11, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    iput-object v12, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 111
    iget-object v12, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    .line 112
    iget-object v12, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    iget-object v13, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v13}, Landroid/widget/DatePicker;->addView(Landroid/view/View;)V

    .line 115
    iget-object v12, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const v13, 0x10202c3

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 116
    .local v12, "header":Landroid/view/ViewGroup;
    const v13, 0x10202c5

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 117
    iget-object v13, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v13, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$ClickActionDelegate;

    const v15, 0x104099a

    invoke-direct {v14, v1, v15}, Landroid/widget/DatePickerCalendarDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 120
    iget-object v13, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 122
    const v13, 0x10202c4

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 123
    iget-object v13, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v13, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$ClickActionDelegate;

    const v15, 0x1040993

    invoke-direct {v14, v1, v15}, Landroid/widget/DatePickerCalendarDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 126
    iget-object v13, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 131
    const/4 v13, 0x0

    .line 134
    .local v13, "headerTextColor":Landroid/content/res/ColorStateList;
    const/16 v14, 0xa

    invoke-virtual {v5, v14, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 136
    .local v14, "monthHeaderTextAppearance":I
    if-eqz v14, :cond_fc

    .line 137
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v1, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v15, v6, v1, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 139
    .local v1, "textAppearance":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 140
    .local v6, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    invoke-direct {v0, v6}, Landroid/widget/DatePickerCalendarDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 141
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    .end local v1    # "textAppearance":Landroid/content/res/TypedArray;
    .end local v6    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    :cond_fc
    if-nez v13, :cond_104

    .line 145
    const/16 v1, 0x12

    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 148
    :cond_104
    if-eqz v13, :cond_110

    .line 149
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 150
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 154
    :cond_110
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 155
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_11d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const v6, 0x1020215

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewAnimator;

    iput-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 164
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    const v6, 0x10202c2

    invoke-virtual {v1, v6}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DayPickerView;

    iput-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 165
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget v6, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {v1, v6}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 166
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v6, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    move-object/from16 v16, v3

    .end local v3    # "locale":Ljava/util/Locale;
    .local v16, "locale":Ljava/util/Locale;
    invoke-virtual {v6}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 167
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 168
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 169
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    .line 172
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    const v2, 0x10202c6

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/YearPickerView;

    iput-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 173
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2, v3}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 174
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/YearPickerView;->setYear(I)V

    .line 175
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/YearPickerView;->setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V

    .line 179
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 181
    const/4 v15, 0x0

    invoke-direct {v0, v15}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 182
    return-void
.end method

.method private blacklist applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 8
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 195
    if-eqz p1, :cond_61

    const v0, 0x10102fe

    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_61

    .line 201
    :cond_c
    const v1, 0x10100a1

    invoke-virtual {p1, v1}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 202
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 204
    .local v1, "activatedColor":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .local v3, "defaultColor":I
    goto :goto_46

    .line 207
    .end local v1    # "activatedColor":I
    .end local v3    # "defaultColor":I
    :cond_2b
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 210
    .restart local v1    # "activatedColor":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 211
    .local v3, "ta":Landroid/content/res/TypedArray;
    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 212
    .local v4, "disabledAlpha":F
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    invoke-direct {p0, v1, v4}, Landroid/widget/DatePickerCalendarDelegate;->multiplyAlphaComponent(IF)I

    move-result v5

    move v3, v5

    .line 216
    .end local v4    # "disabledAlpha":F
    .local v3, "defaultColor":I
    :goto_46
    if-eqz v1, :cond_5f

    if-nez v3, :cond_4b

    goto :goto_5f

    .line 221
    :cond_4b
    filled-new-array {v0}, [I

    move-result-object v0

    new-array v2, v2, [I

    filled-new-array {v0, v2}, [[I

    move-result-object v0

    .line 222
    .local v0, "stateSet":[[I
    filled-new-array {v1, v3}, [I

    move-result-object v2

    .line 223
    .local v2, "colors":[I
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    .line 218
    .end local v0    # "stateSet":[[I
    .end local v2    # "colors":[I
    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    return-object v0

    .line 196
    .end local v1    # "activatedColor":I
    .end local v3    # "defaultColor":I
    :cond_61
    :goto_61
    return-object p1
.end method

.method private static blacklist getDaysInMonth(II)I
    .registers 4
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 603
    packed-switch p0, :pswitch_data_24

    .line 620
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :pswitch_b
    const/16 v0, 0x1e

    return v0

    .line 618
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

    .line 611
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

.method private synthetic blacklist lambda$new$0(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 298
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    goto :goto_14

    .line 302
    :pswitch_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 303
    goto :goto_14

    .line 305
    :pswitch_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 308
    :goto_14
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x10202c4
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method private synthetic blacklist lambda$setCurrentView$1()V
    .registers 2

    .line 362
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->requestFocus()Z

    .line 363
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, "selected":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 365
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 367
    :cond_10
    return-void
.end method

.method private blacklist multiplyAlphaComponent(IF)I
    .registers 7
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .line 227
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 228
    .local v0, "srcRgb":I
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 229
    .local v1, "srcAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 230
    .local v2, "dstAlpha":I
    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method private blacklist onCurrentDateChanged()V
    .registers 4

    .line 333
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 336
    return-void

    .line 339
    :cond_5
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Landroid/icu/text/DateFormat;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "year":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "monthDay":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method

.method private blacklist onDateChanged(ZZ)V
    .registers 8
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .line 403
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 405
    .local v0, "year":I
    if-eqz p2, :cond_35

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_35

    .line 407
    :cond_11
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 408
    .local v1, "monthOfYear":I
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 409
    .local v2, "dayOfMonth":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_2a

    .line 410
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 412
    :cond_2a
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_35

    .line 413
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 417
    .end local v1    # "monthOfYear":I
    .end local v2    # "dayOfMonth":I
    :cond_35
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 418
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v1, v0}, Landroid/widget/YearPickerView;->setYear(I)V

    .line 420
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged()V

    .line 422
    if-eqz p1, :cond_4d

    .line 423
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    .line 425
    :cond_4d
    return-void
.end method

.method private blacklist setCurrentView(I)V
    .registers 7
    .param p1, "viewIndex"    # I

    .line 347
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_52

    goto :goto_51

    .line 359
    :pswitch_6
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 360
    .local v2, "year":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/YearPickerView;->setYear(I)V

    .line 361
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    new-instance v4, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    invoke-virtual {v3, v4}, Landroid/widget/YearPickerView;->post(Ljava/lang/Runnable;)Z

    .line 369
    iget v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v3, p1, :cond_51

    .line 370
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 371
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 372
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 373
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    goto :goto_51

    .line 349
    .end local v2    # "year":I
    :pswitch_31
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 351
    iget v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_51

    .line 352
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 353
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 354
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 355
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 378
    :cond_51
    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_31
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist setDate(III)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 396
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/icu/util/Calendar;->set(II)V

    .line 397
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/icu/util/Calendar;->set(II)V

    .line 398
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 399
    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->resetAutofilledValue()V

    .line 400
    return-void
.end method

.method private blacklist tryVibrate()V
    .registers 3

    .line 625
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->performHapticFeedback(I)Z

    .line 626
    return-void
.end method


# virtual methods
.method public blacklist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 594
    invoke-virtual {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 595
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 599
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarView()Landroid/widget/CalendarView;
    .registers 3

    .line 517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by calendar-mode DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCalendarViewShown()Z
    .registers 2

    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDayOfMonth()I
    .registers 3

    .line 439
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getFirstDayOfWeek()I
    .registers 2

    .line 495
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    if-eqz v0, :cond_7

    .line 496
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    return v0

    .line 498
    :cond_7
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxDate()Landroid/icu/util/Calendar;
    .registers 2

    .line 483
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public blacklist getMinDate()Landroid/icu/util/Calendar;
    .registers 2

    .line 461
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public blacklist getMonth()I
    .registers 3

    .line 434
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getSpinnersShown()Z
    .registers 2

    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getYear()I
    .registers 3

    .line 429
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "callBack"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 383
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerCalendarDelegate;->setDate(III)V

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 386
    iput-object p4, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 387
    return-void
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 512
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 542
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 543
    return-void
.end method

.method protected blacklist onLocaleChanged(Ljava/util/Locale;)V
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 312
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 313
    .local v0, "headerYear":Landroid/widget/TextView;
    if-nez v0, :cond_5

    .line 316
    return-void

    .line 320
    :cond_5
    const-string v1, "EMMMd"

    invoke-static {v1, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    .line 325
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 326
    const-string/jumbo v1, "y"

    invoke-static {v1, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Landroid/icu/text/DateFormat;

    .line 329
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged()V

    .line 330
    return-void
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 567
    instance-of v0, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_4f

    .line 568
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 571
    .local v0, "ss":Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/icu/util/Calendar;->set(III)V

    .line 572
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 573
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 575
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged()V

    .line 577
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    move-result v1

    .line 578
    .local v1, "currentView":I
    invoke-direct {p0, v1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 580
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    move-result v2

    .line 581
    .local v2, "listPosition":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4f

    .line 582
    if-nez v1, :cond_43

    .line 583
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/DayPickerView;->setPosition(I)V

    goto :goto_4f

    .line 584
    :cond_43
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4f

    .line 585
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    move-result v3

    .line 586
    .local v3, "listPositionOffset":I
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/YearPickerView;->setSelectionFromTop(II)V

    .line 590
    .end local v0    # "ss":Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    .end local v1    # "currentView":I
    .end local v2    # "listPosition":I
    .end local v3    # "listPositionOffset":I
    :cond_4f
    :goto_4f
    return-void
.end method

.method public blacklist onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 16
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 547
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    .line 548
    .local v4, "year":I
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    .line 549
    .local v5, "month":I
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    .line 551
    .local v6, "day":I
    const/4 v0, -0x1

    .line 552
    .local v0, "listPosition":I
    const/4 v2, -0x1

    .line 554
    .local v2, "listPositionOffset":I
    iget v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v3, :cond_24

    .line 555
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v1}, Landroid/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    move v12, v0

    move v13, v2

    goto :goto_39

    .line 556
    :cond_24
    iget v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-ne v3, v1, :cond_37

    .line 557
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v1}, Landroid/widget/YearPickerView;->getFirstVisiblePosition()I

    move-result v0

    .line 558
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v1}, Landroid/widget/YearPickerView;->getFirstPositionOffset()I

    move-result v2

    move v12, v0

    move v13, v2

    goto :goto_39

    .line 556
    :cond_37
    move v12, v0

    move v13, v2

    .line 561
    .end local v0    # "listPosition":I
    .end local v2    # "listPositionOffset":I
    .local v12, "listPosition":I
    .local v13, "listPositionOffset":I
    :goto_39
    new-instance v2, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 562
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iget v11, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    move-object v3, p1

    .end local p1    # "superState":Landroid/os/Parcelable;
    .local v3, "superState":Landroid/os/Parcelable;
    invoke-direct/range {v2 .. v13}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 561
    return-object v2
.end method

.method public blacklist setCalendarViewShown(Z)V
    .registers 2
    .param p1, "shown"    # Z

    .line 523
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 503
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 504
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setEnabled(Z)V

    .line 505
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView;->setEnabled(Z)V

    .line 506
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 507
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 508
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .line 488
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 490
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 491
    return-void
.end method

.method public blacklist setMaxDate(J)V
    .registers 7
    .param p1, "maxDate"    # J

    .line 466
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 467
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_24

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 468
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_24

    .line 470
    return-void

    .line 472
    :cond_24
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 473
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 476
    :cond_37
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 477
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 478
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 479
    return-void
.end method

.method public blacklist setMinDate(J)V
    .registers 7
    .param p1, "minDate"    # J

    .line 444
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 445
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_24

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 446
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_24

    .line 448
    return-void

    .line 450
    :cond_24
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 451
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 452
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 454
    :cond_37
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 455
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 456
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 457
    return-void
.end method

.method public blacklist setSpinnersShown(Z)V
    .registers 2
    .param p1, "shown"    # Z

    .line 533
    return-void
.end method

.method public blacklist updateDate(III)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 391
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerCalendarDelegate;->setDate(III)V

    .line 392
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 393
    return-void
.end method
