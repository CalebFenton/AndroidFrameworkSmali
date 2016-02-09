.class Landroid/widget/TimePickerClockDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;

    #@0
    .prologue
    .line 1364
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    #@0
    .prologue
    .line 1367
    if-nez p2, :cond_0

    #@2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@4
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-get0(Landroid/widget/TimePickerClockDelegate;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@c
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-wrap0(Landroid/widget/TimePickerClockDelegate;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1368
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@14
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-wrap2(Landroid/widget/TimePickerClockDelegate;)V

    #@17
    .line 1370
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@19
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 1371
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@1f
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@21
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@23
    iget-object v1, v1, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@25
    .line 1372
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@27
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get1(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/RadialTimePickerView;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    #@2e
    move-result v2

    #@2f
    .line 1373
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@31
    invoke-static {v3}, Landroid/widget/TimePickerClockDelegate;->-get1(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/RadialTimePickerView;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    #@38
    move-result v3

    #@39
    .line 1371
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    #@3c
    .line 1366
    :cond_0
    return-void
.end method
