.class Landroid/widget/DayPickerPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerPagerAdapter$1;,
        Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;,
        Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MONTHS_IN_YEAR:I = 0xc


# instance fields
.field private mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final mCalendarViewId:I

.field private mCount:I

.field private mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private mDayOfWeekTextAppearance:I

.field private mDaySelectorColor:Landroid/content/res/ColorStateList;

.field private mDayTextAppearance:I

.field private mFirstDayOfWeek:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/DayPickerPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Landroid/icu/util/Calendar;

.field private final mMinDate:Landroid/icu/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Landroid/icu/util/Calendar;


# direct methods
.method static synthetic -get0(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I
    .param p3, "calendarViewId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 65
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    #@4
    .line 41
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@a
    .line 42
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    #@10
    .line 44
    new-instance v1, Landroid/util/SparseArray;

    #@12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@15
    iput-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    #@17
    .line 50
    const/4 v1, 0x0

    #@18
    iput-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    #@1a
    .line 302
    new-instance v1, Landroid/widget/DayPickerPagerAdapter$1;

    #@1c
    invoke-direct {v1, p0}, Landroid/widget/DayPickerPagerAdapter$1;-><init>(Landroid/widget/DayPickerPagerAdapter;)V

    #@1f
    iput-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    #@21
    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@24
    move-result-object v1

    #@25
    iput-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@27
    .line 68
    iput p2, p0, Landroid/widget/DayPickerPagerAdapter;->mLayoutResId:I

    #@29
    .line 69
    iput p3, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    #@2b
    .line 71
    const/4 v1, 0x1

    #@2c
    new-array v1, v1, [I

    #@2e
    .line 72
    const v2, 0x101042c

    #@31
    aput v2, v1, v3

    #@33
    .line 71
    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@36
    move-result-object v0

    #@37
    .line 73
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    #@3d
    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@40
    .line 66
    return-void
.end method

.method private getMonthForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    add-int/2addr v0, p1

    #@8
    rem-int/lit8 v0, v0, 0xc

    #@a
    return v0
.end method

.method private getPositionForDay(Landroid/icu/util/Calendar;)I
    .locals 7
    .param p1, "day"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    .line 202
    if-nez p1, :cond_0

    #@4
    .line 203
    const/4 v3, -0x1

    #@5
    return v3

    #@6
    .line 206
    :cond_0
    invoke-virtual {p1, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@9
    move-result v3

    #@a
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@c
    invoke-virtual {v4, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@f
    move-result v4

    #@10
    sub-int v2, v3, v4

    #@12
    .line 207
    .local v2, "yearOffset":I
    invoke-virtual {p1, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@15
    move-result v3

    #@16
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@18
    invoke-virtual {v4, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@1b
    move-result v4

    #@1c
    sub-int v0, v3, v4

    #@1e
    .line 208
    .local v0, "monthOffset":I
    mul-int/lit8 v3, v2, 0xc

    #@20
    add-int v1, v3, v0

    #@22
    .line 209
    .local v1, "position":I
    return v1
.end method

.method private getYearForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 197
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@2
    const/4 v2, 0x2

    #@3
    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@6
    move-result v1

    #@7
    add-int/2addr v1, p1

    #@8
    div-int/lit8 v0, v1, 0xc

    #@a
    .line 198
    .local v0, "yearOffset":I
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@10
    move-result v1

    #@11
    add-int/2addr v1, v0

    #@12
    return v1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p3

    #@1
    .line 273
    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    #@3
    .line 274
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    #@5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@8
    .line 276
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    #@d
    .line 272
    return-void
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 183
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mCount:I

    #@2
    return v0
.end method

.method getDayOfWeekTextAppearance()I
    .locals 1

    #@0
    .prologue
    .line 169
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    #@2
    return v0
.end method

.method getDayTextAppearance()I
    .locals 1

    #@0
    .prologue
    .line 178
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    #@2
    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    #@2
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 281
    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    #@3
    .line 282
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    #@5
    return v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 287
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    #@9
    iget-object v0, v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    #@b
    .line 288
    .local v0, "v":Landroid/widget/SimpleMonthView;
    if-eqz v0, :cond_0

    #@d
    .line 289
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getMonthYearLabel()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 291
    :cond_0
    return-object v2
.end method

.method getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 295
    if-nez p1, :cond_0

    #@3
    .line 296
    return-object v1

    #@4
    :cond_0
    move-object v0, p1

    #@5
    .line 298
    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    #@7
    .line 299
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    #@9
    return-object v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    #@0
    .prologue
    .line 214
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    iget v9, p0, Landroid/widget/DayPickerPagerAdapter;->mLayoutResId:I

    #@4
    const/4 v10, 0x0

    #@5
    invoke-virtual {v4, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@8
    move-result-object v8

    #@9
    .line 216
    .local v8, "itemView":Landroid/view/View;
    iget v4, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarViewId:I

    #@b
    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/widget/SimpleMonthView;

    #@11
    .line 217
    .local v0, "v":Landroid/widget/SimpleMonthView;
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    #@13
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V

    #@16
    .line 218
    iget v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    #@18
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setMonthTextAppearance(I)V

    #@1b
    .line 219
    iget v4, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    #@1d
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    #@20
    .line 220
    iget v4, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    #@22
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayTextAppearance(I)V

    #@25
    .line 222
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    #@27
    if-eqz v4, :cond_0

    #@29
    .line 223
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    #@2b
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    #@2e
    .line 226
    :cond_0
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    #@30
    if-eqz v4, :cond_1

    #@32
    .line 227
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    #@34
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    #@37
    .line 230
    :cond_1
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    #@39
    if-eqz v4, :cond_2

    #@3b
    .line 231
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    #@3d
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    #@40
    .line 232
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    #@42
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    #@45
    .line 233
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    #@47
    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    #@4a
    .line 236
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/DayPickerPagerAdapter;->getMonthForPosition(I)I

    #@4d
    move-result v2

    #@4e
    .line 237
    .local v2, "month":I
    invoke-direct {p0, p2}, Landroid/widget/DayPickerPagerAdapter;->getYearForPosition(I)I

    #@51
    move-result v3

    #@52
    .line 240
    .local v3, "year":I
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    #@54
    if-eqz v4, :cond_3

    #@56
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    #@58
    const/4 v9, 0x2

    #@59
    invoke-virtual {v4, v9}, Landroid/icu/util/Calendar;->get(I)I

    #@5c
    move-result v4

    #@5d
    if-ne v4, v2, :cond_3

    #@5f
    .line 241
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    #@61
    const/4 v9, 0x5

    #@62
    invoke-virtual {v4, v9}, Landroid/icu/util/Calendar;->get(I)I

    #@65
    move-result v1

    #@66
    .line 247
    .local v1, "selectedDay":I
    :goto_0
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@68
    const/4 v9, 0x2

    #@69
    invoke-virtual {v4, v9}, Landroid/icu/util/Calendar;->get(I)I

    #@6c
    move-result v4

    #@6d
    if-ne v4, v2, :cond_4

    #@6f
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@71
    const/4 v9, 0x1

    #@72
    invoke-virtual {v4, v9}, Landroid/icu/util/Calendar;->get(I)I

    #@75
    move-result v4

    #@76
    if-ne v4, v3, :cond_4

    #@78
    .line 248
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@7a
    const/4 v9, 0x5

    #@7b
    invoke-virtual {v4, v9}, Landroid/icu/util/Calendar;->get(I)I

    #@7e
    move-result v5

    #@7f
    .line 254
    .local v5, "enabledDayRangeStart":I
    :goto_1
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    #@81
    const/4 v9, 0x2

    #@82
    invoke-virtual {v4, v9}, Landroid/icu/util/Calendar;->get(I)I

    #@85
    move-result v4

    #@86
    if-ne v4, v2, :cond_5

    #@88
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    #@8a
    const/4 v9, 0x1

    #@8b
    invoke-virtual {v4, v9}, Landroid/icu/util/Calendar;->get(I)I

    #@8e
    move-result v4

    #@8f
    if-ne v4, v3, :cond_5

    #@91
    .line 255
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    #@93
    const/4 v9, 0x5

    #@94
    invoke-virtual {v4, v9}, Landroid/icu/util/Calendar;->get(I)I

    #@97
    move-result v6

    #@98
    .line 260
    .local v6, "enabledDayRangeEnd":I
    :goto_2
    iget v4, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    #@9a
    invoke-virtual/range {v0 .. v6}, Landroid/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    #@9d
    .line 263
    new-instance v7, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    #@9f
    invoke-direct {v7, p2, v8, v0}, Landroid/widget/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Landroid/widget/SimpleMonthView;)V

    #@a2
    .line 264
    .local v7, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v4, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    #@a4
    invoke-virtual {v4, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@a7
    .line 266
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@aa
    .line 268
    return-object v7

    #@ab
    .line 243
    .end local v1    # "selectedDay":I
    .end local v5    # "enabledDayRangeStart":I
    .end local v6    # "enabledDayRangeEnd":I
    .end local v7    # "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    :cond_3
    const/4 v1, -0x1

    #@ac
    .restart local v1    # "selectedDay":I
    goto :goto_0

    #@ad
    .line 250
    :cond_4
    const/4 v5, 0x1

    #@ae
    .restart local v5    # "enabledDayRangeStart":I
    goto :goto_1

    #@af
    .line 257
    :cond_5
    const/16 v6, 0x1f

    #@b1
    .restart local v6    # "enabledDayRangeEnd":I
    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p2

    #@1
    .line 188
    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    #@3
    .line 189
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    #@5
    if-ne p1, v1, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    :goto_0
    return v1

    #@9
    :cond_0
    const/4 v1, 0x0

    #@a
    goto :goto_0
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "calendarTextColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 149
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    #@5
    .line 148
    return-void
.end method

.method setDayOfWeekTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 164
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    #@2
    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    #@5
    .line 163
    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "selectorColor"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 154
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    #@2
    .line 155
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    #@5
    .line 153
    return-void
.end method

.method setDayTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 173
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    #@2
    .line 174
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    #@5
    .line 172
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 4
    .param p1, "weekStart"    # I

    #@0
    .prologue
    .line 96
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    #@2
    .line 99
    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v0

    #@8
    .line 100
    .local v0, "count":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 101
    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    #@13
    iget-object v2, v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    #@15
    .line 102
    .local v2, "monthView":Landroid/widget/SimpleMonthView;
    invoke-virtual {v2, p1}, Landroid/widget/SimpleMonthView;->setFirstDayOfWeek(I)V

    #@18
    .line 100
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 95
    .end local v2    # "monthView":Landroid/widget/SimpleMonthView;
    :cond_0
    return-void
.end method

.method setMonthTextAppearance(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 159
    iput p1, p0, Landroid/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    #@2
    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    #@5
    .line 158
    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    #@0
    .prologue
    .line 145
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    #@2
    .line 144
    return-void
.end method

.method public setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .locals 8
    .param p1, "min"    # Landroid/icu/util/Calendar;
    .param p2, "max"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    .line 78
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@4
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@7
    move-result-wide v4

    #@8
    invoke-virtual {v2, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@b
    .line 79
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    #@d
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@10
    move-result-wide v4

    #@11
    invoke-virtual {v2, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@14
    .line 81
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    #@16
    invoke-virtual {v2, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@19
    move-result v2

    #@1a
    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@1c
    invoke-virtual {v3, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@1f
    move-result v3

    #@20
    sub-int v1, v2, v3

    #@22
    .line 82
    .local v1, "diffYear":I
    iget-object v2, p0, Landroid/widget/DayPickerPagerAdapter;->mMaxDate:Landroid/icu/util/Calendar;

    #@24
    invoke-virtual {v2, v7}, Landroid/icu/util/Calendar;->get(I)I

    #@27
    move-result v2

    #@28
    iget-object v3, p0, Landroid/widget/DayPickerPagerAdapter;->mMinDate:Landroid/icu/util/Calendar;

    #@2a
    invoke-virtual {v3, v7}, Landroid/icu/util/Calendar;->get(I)I

    #@2d
    move-result v3

    #@2e
    sub-int v0, v2, v3

    #@30
    .line 83
    .local v0, "diffMonth":I
    mul-int/lit8 v2, v1, 0xc

    #@32
    add-int/2addr v2, v0

    #@33
    add-int/lit8 v2, v2, 0x1

    #@35
    iput v2, p0, Landroid/widget/DayPickerPagerAdapter;->mCount:I

    #@37
    .line 86
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    #@3a
    .line 77
    return-void
.end method

.method public setSelectedDay(Landroid/icu/util/Calendar;)V
    .locals 8
    .param p1, "day"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 116
    iget-object v5, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    #@3
    invoke-direct {p0, v5}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    #@6
    move-result v4

    #@7
    .line 117
    .local v4, "oldPosition":I
    invoke-direct {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->getPositionForDay(Landroid/icu/util/Calendar;)I

    #@a
    move-result v2

    #@b
    .line 120
    .local v2, "newPosition":I
    if-eq v4, v2, :cond_0

    #@d
    if-ltz v4, :cond_0

    #@f
    .line 121
    iget-object v5, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    #@17
    .line 122
    .local v3, "oldMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    if-eqz v3, :cond_0

    #@19
    .line 123
    iget-object v5, v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    #@1b
    const/4 v6, -0x1

    #@1c
    invoke-virtual {v5, v6}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    #@1f
    .line 128
    .end local v3    # "oldMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    :cond_0
    if-ltz v2, :cond_1

    #@21
    .line 129
    iget-object v5, p0, Landroid/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v5, v2, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    #@29
    .line 130
    .local v1, "newMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    if-eqz v1, :cond_1

    #@2b
    .line 131
    const/4 v5, 0x5

    #@2c
    invoke-virtual {p1, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@2f
    move-result v0

    #@30
    .line 132
    .local v0, "dayOfMonth":I
    iget-object v5, v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    #@32
    invoke-virtual {v5, v0}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    #@35
    .line 136
    .end local v0    # "dayOfMonth":I
    .end local v1    # "newMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    :cond_1
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter;->mSelectedDay:Landroid/icu/util/Calendar;

    #@37
    .line 115
    return-void
.end method
