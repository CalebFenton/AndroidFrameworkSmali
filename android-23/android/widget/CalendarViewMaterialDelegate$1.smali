.class Landroid/widget/CalendarViewMaterialDelegate$1;
.super Ljava/lang/Object;
.source "CalendarViewMaterialDelegate.java"

# interfaces
.implements Landroid/widget/DayPickerView$OnDaySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewMaterialDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CalendarViewMaterialDelegate;


# direct methods
.method constructor <init>(Landroid/widget/CalendarViewMaterialDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/CalendarViewMaterialDelegate;

    #@0
    .prologue
    .line 113
    iput-object p1, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDaySelected(Landroid/widget/DayPickerView;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/DayPickerView;
    .param p2, "day"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 116
    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    #@2
    invoke-static {v3}, Landroid/widget/CalendarViewMaterialDelegate;->-get0(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    #@5
    move-result-object v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 117
    const/4 v3, 0x1

    #@9
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    #@c
    move-result v2

    #@d
    .line 118
    .local v2, "year":I
    const/4 v3, 0x2

    #@e
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    #@11
    move-result v1

    #@12
    .line 119
    .local v1, "month":I
    const/4 v3, 0x5

    #@13
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    #@16
    move-result v0

    #@17
    .line 120
    .local v0, "dayOfMonth":I
    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    #@19
    invoke-static {v3}, Landroid/widget/CalendarViewMaterialDelegate;->-get0(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    #@1c
    move-result-object v3

    #@1d
    iget-object v4, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    #@1f
    iget-object v4, v4, Landroid/widget/CalendarViewMaterialDelegate;->mDelegator:Landroid/widget/CalendarView;

    #@21
    invoke-interface {v3, v4, v2, v1, v0}, Landroid/widget/CalendarView$OnDateChangeListener;->onSelectedDayChange(Landroid/widget/CalendarView;III)V

    #@24
    .line 115
    .end local v0    # "dayOfMonth":I
    .end local v1    # "month":I
    .end local v2    # "year":I
    :cond_0
    return-void
.end method
