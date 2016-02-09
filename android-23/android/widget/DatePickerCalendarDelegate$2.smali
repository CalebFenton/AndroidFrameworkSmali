.class Landroid/widget/DatePickerCalendarDelegate$2;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/widget/YearPickerView$OnYearSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerCalendarDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DatePickerCalendarDelegate;

    #@0
    .prologue
    .line 250
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onYearChanged(Landroid/widget/YearPickerView;I)V
    .locals 7
    .param p1, "view"    # Landroid/widget/YearPickerView;
    .param p2, "year"    # I

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    const/4 v5, 0x1

    #@2
    .line 258
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@4
    invoke-static {v3}, Landroid/widget/DatePickerCalendarDelegate;->-get0(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    #@b
    move-result v0

    #@c
    .line 259
    .local v0, "day":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@e
    invoke-static {v3}, Landroid/widget/DatePickerCalendarDelegate;->-get0(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;

    #@11
    move-result-object v3

    #@12
    const/4 v4, 0x2

    #@13
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@16
    move-result v2

    #@17
    .line 260
    .local v2, "month":I
    invoke-static {v2, p2}, Landroid/widget/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    #@1a
    move-result v1

    #@1b
    .line 261
    .local v1, "daysInMonth":I
    if-le v0, v1, :cond_0

    #@1d
    .line 262
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@1f
    invoke-static {v3}, Landroid/widget/DatePickerCalendarDelegate;->-get0(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v6, v1}, Ljava/util/Calendar;->set(II)V

    #@26
    .line 265
    :cond_0
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@28
    invoke-static {v3}, Landroid/widget/DatePickerCalendarDelegate;->-get0(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, v5, p2}, Ljava/util/Calendar;->set(II)V

    #@2f
    .line 266
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@31
    invoke-static {v3, v5, v5}, Landroid/widget/DatePickerCalendarDelegate;->-wrap0(Landroid/widget/DatePickerCalendarDelegate;ZZ)V

    #@34
    .line 269
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@36
    const/4 v4, 0x0

    #@37
    invoke-static {v3, v4}, Landroid/widget/DatePickerCalendarDelegate;->-wrap1(Landroid/widget/DatePickerCalendarDelegate;I)V

    #@3a
    .line 252
    return-void
.end method
