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
.field private mFocusedMonth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mSelectedDate:Ljava/util/Calendar;

.field private mSelectedWeek:I

.field private mTotalWeekCount:I

.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method static synthetic -get0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/CalendarViewLegacyDelegate;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1003
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 999
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    #@b
    .line 1004
    iput-object p2, p1, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    #@d
    .line 1005
    new-instance v0, Landroid/view/GestureDetector;

    #@f
    iget-object v1, p1, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    #@11
    new-instance v2, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;

    #@13
    invoke-direct {v2, p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter$CalendarGestureListener;-><init>(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    #@16
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@19
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    #@1b
    .line 1006
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V

    #@1e
    .line 1003
    return-void
.end method

.method private init()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x7

    #@1
    .line 1013
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@3
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    #@5
    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    #@b
    .line 1014
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@d
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@f
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get8(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@12
    move-result-object v1

    #@13
    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    #@19
    .line 1015
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@1b
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get9(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    #@22
    move-result v0

    #@23
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@25
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get3(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@28
    move-result v1

    #@29
    if-ne v0, v1, :cond_0

    #@2b
    .line 1016
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2d
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate;->-get8(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    #@34
    move-result v0

    #@35
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@37
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get3(Landroid/widget/CalendarViewLegacyDelegate;)I

    #@3a
    move-result v1

    #@3b
    if-eq v0, v1, :cond_1

    #@3d
    .line 1017
    :cond_0
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    #@3f
    add-int/lit8 v0, v0, 0x1

    #@41
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    #@43
    .line 1019
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    #@46
    .line 1012
    return-void
.end method

.method private onDateTapped(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "day"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 1120
    invoke-virtual {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    #@3
    .line 1121
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@5
    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap3(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)V

    #@8
    .line 1119
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 1047
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mTotalWeekCount:I

    #@2
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1052
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1057
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    #@0
    .prologue
    .line 1042
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v5, -0x2

    #@1
    .line 1062
    const/4 v2, 0x0

    #@2
    .line 1063
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    if-eqz p2, :cond_0

    #@4
    move-object v2, p2

    #@5
    .line 1064
    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    #@7
    .line 1075
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :goto_0
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    #@9
    if-ne v3, p1, :cond_1

    #@b
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    #@d
    .line 1076
    const/4 v4, 0x7

    #@e
    .line 1075
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@11
    move-result v1

    #@12
    .line 1077
    .local v1, "selectedWeekDay":I
    :goto_1
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    #@14
    invoke-virtual {v2, p1, v1, v3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->init(III)V

    #@17
    .line 1079
    return-object v2

    #@18
    .line 1066
    .end local v1    # "selectedWeekDay":I
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_0
    new-instance v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    #@1a
    .end local v2    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@1c
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@1e
    iget-object v4, v4, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    #@20
    invoke-direct {v2, v3, v4}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    #@23
    .line 1068
    .local v2, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    #@25
    invoke-direct {v0, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    #@28
    .line 1070
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2b
    .line 1071
    const/4 v3, 0x1

    #@2c
    invoke-virtual {v2, v3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setClickable(Z)V

    #@2f
    .line 1072
    invoke-virtual {v2, p0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@32
    goto :goto_0

    #@33
    .line 1076
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    #@34
    .restart local v1    # "selectedWeekDay":I
    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1097
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@3
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get7(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/widget/ListView;->isEnabled()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_3

    #@d
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    #@f
    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_3

    #@15
    move-object v0, p1

    #@16
    .line 1098
    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    #@18
    .line 1100
    .local v0, "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@1b
    move-result v1

    #@1c
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@1e
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getDayFromLocation(FLjava/util/Calendar;)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_0

    #@28
    .line 1101
    return v3

    #@29
    .line 1105
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2b
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@31
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get9(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_1

    #@3b
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@3d
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@40
    move-result-object v1

    #@41
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@43
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate;->-get8(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_2

    #@4d
    .line 1106
    :cond_1
    return v3

    #@4e
    .line 1108
    :cond_2
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@50
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get17(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;

    #@53
    move-result-object v1

    #@54
    invoke-direct {p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->onDateTapped(Ljava/util/Calendar;)V

    #@57
    .line 1109
    return v3

    #@58
    .line 1111
    .end local v0    # "weekView":Landroid/widget/CalendarViewLegacyDelegate$WeekView;
    :cond_3
    const/4 v1, 0x0

    #@59
    return v1
.end method

.method public setFocusMonth(I)V
    .locals 1
    .param p1, "month"    # I

    #@0
    .prologue
    .line 1088
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1089
    return-void

    #@5
    .line 1091
    :cond_0
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    #@7
    .line 1092
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    #@a
    .line 1087
    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "selectedDay"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    const/4 v2, 0x1

    #@2
    .line 1028
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    #@8
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    #@b
    move-result v1

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 1029
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    #@11
    move-result v0

    #@12
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    #@14
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@17
    move-result v1

    #@18
    if-ne v0, v1, :cond_0

    #@1a
    .line 1030
    return-void

    #@1b
    .line 1032
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    #@1d
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@20
    move-result-wide v2

    #@21
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@24
    .line 1033
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@26
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    #@28
    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->-wrap0(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedWeek:I

    #@2e
    .line 1034
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    #@30
    const/4 v1, 0x2

    #@31
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mFocusedMonth:I

    #@37
    .line 1035
    invoke-virtual {p0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    #@3a
    .line 1027
    return-void
.end method
