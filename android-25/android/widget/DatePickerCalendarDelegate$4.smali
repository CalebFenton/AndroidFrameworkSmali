.class Landroid/widget/DatePickerCalendarDelegate$4;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V
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
    .line 358
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$4;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 361
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate$4;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@2
    invoke-static {v1}, Landroid/widget/DatePickerCalendarDelegate;->-get2(Landroid/widget/DatePickerCalendarDelegate;)Landroid/widget/YearPickerView;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@9
    .line 362
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate$4;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@b
    invoke-static {v1}, Landroid/widget/DatePickerCalendarDelegate;->-get2(Landroid/widget/DatePickerCalendarDelegate;)Landroid/widget/YearPickerView;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 363
    .local v0, "selected":Landroid/view/View;
    if-eqz v0, :cond_0

    #@15
    .line 364
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    #@18
    .line 360
    :cond_0
    return-void
.end method
