.class Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final blacklist DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final blacklist mTempCalendar:Landroid/icu/util/Calendar;

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Landroid/widget/SimpleMonthView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V
    .registers 3
    .param p2, "host"    # Landroid/view/View;
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

    .line 1076
    iput-object p1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    .line 1077
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1073
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1074
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 1078
    return-void
.end method

.method private blacklist getDayDescription(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "id"    # I

    .line 1159
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-$$Nest$misValidDayOfMonth(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1160
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmYear(Landroid/widget/SimpleMonthView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v2}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmMonth(Landroid/widget/SimpleMonthView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    .line 1161
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "dd MMMM yyyy"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1164
    :cond_26
    const-string v0, ""

    return-object v0
.end method

.method private blacklist getDayText(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "id"    # I

    .line 1174
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-$$Nest$misValidDayOfMonth(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1175
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmDayFormatter(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1178
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected blacklist getVirtualViewAt(FF)I
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1082
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, p1, v1

    float-to-int v2, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, v2, v1}, Landroid/widget/SimpleMonthView;->-$$Nest$mgetDayAtLocation(Landroid/widget/SimpleMonthView;II)I

    move-result v0

    .line 1083
    .local v0, "day":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 1084
    return v0

    .line 1086
    :cond_11
    const/high16 v1, -0x80000000

    return v1
.end method

.method protected blacklist getVisibleVirtualViews(Landroid/util/IntArray;)V
    .registers 4
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .line 1091
    const/4 v0, 0x1

    .local v0, "day":I
    :goto_1
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmDaysInMonth(Landroid/widget/SimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_f

    .line 1092
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1094
    .end local v0    # "day":I
    :cond_f
    return-void
.end method

.method protected blacklist onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1144
    packed-switch p2, :pswitch_data_c

    .line 1149
    const/4 v0, 0x0

    return v0

    .line 1146
    :pswitch_5
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-$$Nest$monDayClicked(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    return v0

    :pswitch_data_c
    .packed-switch 0x10
        :pswitch_5
    .end packed-switch
.end method

.method protected blacklist onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1098
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1099
    return-void
.end method

.method protected blacklist onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1103
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 1105
    .local v0, "hasBounds":Z
    if-nez v0, :cond_1e

    .line 1107
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1108
    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1109
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1110
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1111
    return-void

    .line 1114
    :cond_1e
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmToday(Landroid/widget/SimpleMonthView;)I

    move-result v1

    if-ne p1, v1, :cond_43

    .line 1117
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance()Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v1

    .line 1118
    .local v1, "fmt":Landroid/icu/text/RelativeDateTimeFormatter;
    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 1121
    .end local v1    # "fmt":Landroid/icu/text/RelativeDateTimeFormatter;
    :cond_43
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmActivatedDay(Landroid/widget/SimpleMonthView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_4f

    .line 1122
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1124
    :cond_4f
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1126
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->-$$Nest$misDayEnabled(Landroid/widget/SimpleMonthView;I)Z

    move-result v1

    .line 1127
    .local v1, "isDayEnabled":Z
    if-eqz v1, :cond_61

    .line 1128
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1131
    :cond_61
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1132
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1134
    iget-object v3, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v3}, Landroid/widget/SimpleMonthView;->-$$Nest$fgetmActivatedDay(Landroid/widget/SimpleMonthView;)I

    move-result v3

    if-ne p1, v3, :cond_72

    .line 1136
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1139
    :cond_72
    return-void
.end method
