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
.field private static final DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/SimpleMonthView;


# direct methods
.method public constructor <init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/SimpleMonthView;
    .param p2, "host"    # Landroid/view/View;

    #@0
    .prologue
    .line 782
    iput-object p1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@2
    .line 783
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    #@5
    .line 779
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    #@c
    .line 780
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    #@12
    .line 782
    return-void
.end method

.method private getDayDescription(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@2
    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-wrap2(Landroid/widget/SimpleMonthView;I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 857
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    #@a
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@c
    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-get4(Landroid/widget/SimpleMonthView;)I

    #@f
    move-result v1

    #@10
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@12
    invoke-static {v2}, Landroid/widget/SimpleMonthView;->-get3(Landroid/widget/SimpleMonthView;)I

    #@15
    move-result v2

    #@16
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    #@19
    .line 858
    const-string/jumbo v0, "dd MMMM yyyy"

    #@1c
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    #@1e
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@21
    move-result-wide v2

    #@22
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 861
    :cond_0
    const-string/jumbo v0, ""

    #@2a
    return-object v0
.end method

.method private getDayText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@2
    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-wrap2(Landroid/widget/SimpleMonthView;I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 872
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@a
    invoke-static {v0}, Landroid/widget/SimpleMonthView;->-get1(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;

    #@d
    move-result-object v0

    #@e
    int-to-long v2, p1

    #@f
    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 875
    :cond_0
    const/4 v0, 0x0

    #@15
    return-object v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    #@2
    .line 788
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@4
    add-float v2, p1, v3

    #@6
    float-to-int v2, v2

    #@7
    add-float/2addr v3, p2

    #@8
    float-to-int v3, v3

    #@9
    invoke-static {v1, v2, v3}, Landroid/widget/SimpleMonthView;->-wrap4(Landroid/widget/SimpleMonthView;II)I

    #@c
    move-result v0

    #@d
    .line 789
    .local v0, "day":I
    const/4 v1, -0x1

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 790
    return v0

    #@11
    .line 792
    :cond_0
    const/high16 v1, -0x80000000

    #@13
    return v1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 2
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    #@0
    .prologue
    .line 797
    const/4 v0, 0x1

    #@1
    .local v0, "day":I
    :goto_0
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@3
    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-get2(Landroid/widget/SimpleMonthView;)I

    #@6
    move-result v1

    #@7
    if-gt v0, v1, :cond_0

    #@9
    .line 798
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    #@c
    .line 797
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 796
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 841
    packed-switch p2, :pswitch_data_0

    #@3
    .line 846
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 843
    :pswitch_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@7
    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-wrap3(Landroid/widget/SimpleMonthView;I)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 841
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 804
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    #@7
    .line 803
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 809
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@2
    iget-object v3, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    #@4
    invoke-static {v2, p1, v3}, Landroid/widget/SimpleMonthView;->-wrap0(Landroid/widget/SimpleMonthView;ILandroid/graphics/Rect;)Z

    #@7
    move-result v0

    #@8
    .line 811
    .local v0, "hasBounds":Z
    if-nez v0, :cond_0

    #@a
    .line 813
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@f
    .line 814
    const-string/jumbo v2, ""

    #@12
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    #@15
    .line 815
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    #@17
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@1a
    .line 816
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    #@1e
    .line 817
    return-void

    #@1f
    .line 820
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayText(I)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@26
    .line 821
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    #@2d
    .line 822
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    #@2f
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@32
    .line 824
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@34
    invoke-static {v2, p1}, Landroid/widget/SimpleMonthView;->-wrap1(Landroid/widget/SimpleMonthView;I)Z

    #@37
    move-result v1

    #@38
    .line 825
    .local v1, "isDayEnabled":Z
    if-eqz v1, :cond_1

    #@3a
    .line 826
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@3c
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@3f
    .line 829
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    #@42
    .line 831
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    #@44
    invoke-static {v2}, Landroid/widget/SimpleMonthView;->-get0(Landroid/widget/SimpleMonthView;)I

    #@47
    move-result v2

    #@48
    if-ne p1, v2, :cond_2

    #@4a
    .line 833
    const/4 v2, 0x1

    #@4b
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    #@4e
    .line 808
    :cond_2
    return-void
.end method
