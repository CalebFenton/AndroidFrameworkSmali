.class Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarViewLegacyDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeeksAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;
    }
.end annotation


# instance fields
.field private blacklist mFocusedMonth:I

.field private blacklist mGestureDetector:Landroid/view/GestureDetector;

.field private final blacklist mSelectedDate:Landroid/icu/util/Calendar;

.field private blacklist mSelectedWeek:I

.field private blacklist mTotalWeekCount:I

.field final synthetic blacklist this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSelectedDate(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minit(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1025
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1021
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    .line 1026
    iput-object p2, p1, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    .line 1027
    new-instance v0, Landroid/view/GestureDetector;

    iget-object p1, p1, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;-><init>(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1028
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V

    .line 1029
    return-void
.end method

.method private blacklist init()V
    .registers 4

    .line 1035
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$mgetWeeksSinceMinDate(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    .line 1036
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmMaxDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$mgetWeeksSinceMinDate(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    .line 1037
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmMinDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmFirstDayOfWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v2

    if-ne v0, v2, :cond_3d

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmMaxDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 1038
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmFirstDayOfWeek(Landroid/widget/CalendarViewLegacyDelegate;)I

    move-result v1

    if-eq v0, v1, :cond_43

    .line 1039
    :cond_3d
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    .line 1041
    :cond_43
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 1042
    return-void
.end method

.method private blacklist onDateTapped(Landroid/icu/util/Calendar;)V
    .registers 3
    .param p1, "day"    # Landroid/icu/util/Calendar;

    .line 1142
    invoke-virtual {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 1143
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$msetMonthDisplayed(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)V

    .line 1144
    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .registers 2

    .line 1069
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 1074
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 1079
    int-to-long v0, p1

    return-wide v0
.end method

.method public blacklist getSelectedDay()Landroid/icu/util/Calendar;
    .registers 2

    .line 1064
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1084
    const/4 v0, 0x0

    .line 1085
    .local v0, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    if-eqz p2, :cond_7

    .line 1086
    move-object v0, p2

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    goto :goto_23

    .line 1088
    :cond_7
    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v3, v3, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    move-object v0, v1

    .line 1089
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1092
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setClickable(Z)V

    .line 1094
    invoke-virtual {v0, p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1097
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    :goto_23
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    if-ne v1, p1, :cond_2f

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    goto :goto_30

    .line 1098
    :cond_2f
    const/4 v1, -0x1

    :goto_30
    nop

    .line 1099
    .local v1, "selectedWeekDay":I
    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->init(III)V

    .line 1101
    return-object v0
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1119
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmListView(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1120
    move-object v0, p1

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 1122
    .local v0, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getDayFromLocation(FLandroid/icu/util/Calendar;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_29

    .line 1123
    return v2

    .line 1127
    :cond_29
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmMinDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmMaxDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_58

    .line 1130
    :cond_4e
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->onDateTapped(Landroid/icu/util/Calendar;)V

    .line 1131
    return v2

    .line 1128
    :cond_58
    :goto_58
    return v2

    .line 1133
    .end local v0    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setFocusMonth(I)V
    .registers 3
    .param p1, "month"    # I

    .line 1110
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    if-ne v0, p1, :cond_5

    .line 1111
    return-void

    .line 1113
    :cond_5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    .line 1114
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 1115
    return-void
.end method

.method public blacklist setSelectedDay(Landroid/icu/util/Calendar;)V
    .registers 5
    .param p1, "selectedDay"    # Landroid/icu/util/Calendar;

    .line 1050
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_1b

    .line 1051
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_1b

    .line 1052
    return-void

    .line 1054
    :cond_1b
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1055
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-$$Nest$mgetWeeksSinceMinDate(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    .line 1056
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    .line 1057
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    .line 1058
    return-void
.end method
