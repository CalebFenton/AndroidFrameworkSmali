.class Landroid/widget/DatePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "DatePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DatePickerSpinnerDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/DatePickerSpinnerDelegate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/DatePickerSpinnerDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .registers 6
    .param p1, "view"    # Landroid/widget/CalendarView;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "monthDay"    # I

    .line 163
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0, p2, p3, p4}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$msetDate(Landroid/widget/DatePickerSpinnerDelegate;III)V

    .line 164
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateSpinners(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 165
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mnotifyDateChanged(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 166
    return-void
.end method
