.class Landroid/widget/DatePickerCalendarDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/widget/DayPickerView$OnDaySelectedListener;


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
    .line 239
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDaySelected(Landroid/widget/DayPickerView;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DayPickerView;
    .param p2, "day"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 242
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@3
    invoke-static {v0}, Landroid/widget/DatePickerCalendarDelegate;->-get0(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    #@a
    move-result-wide v2

    #@b
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@e
    .line 243
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@10
    invoke-static {v0, v1, v1}, Landroid/widget/DatePickerCalendarDelegate;->-wrap0(Landroid/widget/DatePickerCalendarDelegate;ZZ)V

    #@13
    .line 241
    return-void
.end method
