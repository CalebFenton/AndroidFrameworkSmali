.class Landroid/widget/CalendarViewLegacyDelegate$1;
.super Landroid/database/DataSetObserver;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CalendarViewLegacyDelegate;->setUpAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CalendarViewLegacyDelegate;


# direct methods
.method constructor <init>(Landroid/widget/CalendarViewLegacyDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/CalendarViewLegacyDelegate;

    #@0
    .prologue
    .line 674
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate$1;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 6

    #@0
    .prologue
    .line 677
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$1;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@2
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get10(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    #@5
    move-result-object v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 678
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$1;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@a
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get0(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->getSelectedDay()Ljava/util/Calendar;

    #@11
    move-result-object v0

    #@12
    .line 679
    .local v0, "selectedDay":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate$1;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@14
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate;->-get10(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate$1;->this$0:Landroid/widget/CalendarViewLegacyDelegate;

    #@1a
    iget-object v2, v2, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    #@1c
    .line 680
    const/4 v3, 0x1

    #@1d
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@20
    move-result v3

    #@21
    .line 681
    const/4 v4, 0x2

    #@22
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@25
    move-result v4

    #@26
    .line 682
    const/4 v5, 0x5

    #@27
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    #@2a
    move-result v5

    #@2b
    .line 679
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/CalendarView$OnDateChangeListener;->onSelectedDayChange(Landroid/widget/CalendarView;III)V

    #@2e
    .line 676
    .end local v0    # "selectedDay":Ljava/util/Calendar;
    :cond_0
    return-void
.end method
