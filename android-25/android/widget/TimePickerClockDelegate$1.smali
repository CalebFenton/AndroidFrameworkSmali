.class Landroid/widget/TimePickerClockDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


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
    .line 699
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onValueSelected(IIZ)V
    .locals 6
    .param p1, "pickerType"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 702
    packed-switch p1, :pswitch_data_0

    #@5
    .line 718
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@7
    iget-object v2, v2, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 719
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@d
    iget-object v2, v2, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@f
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@11
    iget-object v3, v3, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@13
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@15
    invoke-virtual {v4}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    #@18
    move-result v4

    #@19
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@1b
    invoke-virtual {v5}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    #@1e
    move-result v5

    #@1f
    invoke-interface {v2, v3, v4, v5}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    #@22
    .line 701
    :cond_1
    return-void

    #@23
    .line 704
    :pswitch_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@25
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get0(Landroid/widget/TimePickerClockDelegate;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    move v0, p3

    #@2c
    .line 705
    :goto_1
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@2e
    if-eqz v0, :cond_3

    #@30
    move v2, v3

    #@31
    :goto_2
    invoke-static {v5, p2, v4, v2}, Landroid/widget/TimePickerClockDelegate;->-wrap3(Landroid/widget/TimePickerClockDelegate;IZZ)V

    #@34
    .line 706
    if-eqz v0, :cond_0

    #@36
    .line 707
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@38
    invoke-static {v2, v4, v4, v3}, Landroid/widget/TimePickerClockDelegate;->-wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V

    #@3b
    .line 709
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@3d
    invoke-static {v2, p2}, Landroid/widget/TimePickerClockDelegate;->-wrap0(Landroid/widget/TimePickerClockDelegate;I)I

    #@40
    move-result v1

    #@41
    .line 710
    .local v1, "localizedHour":I
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@43
    iget-object v2, v2, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@45
    new-instance v3, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    const-string/jumbo v4, ". "

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@57
    invoke-static {v4}, Landroid/widget/TimePickerClockDelegate;->-get5(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v2, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@66
    goto :goto_0

    #@67
    .line 704
    .end local v1    # "localizedHour":I
    :cond_2
    const/4 v0, 0x0

    #@68
    .local v0, "isTransition":Z
    goto :goto_1

    #@69
    .end local v0    # "isTransition":Z
    :cond_3
    move v2, v4

    #@6a
    .line 705
    goto :goto_2

    #@6b
    .line 714
    :pswitch_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@6d
    invoke-static {v2, p2, v4}, Landroid/widget/TimePickerClockDelegate;->-wrap4(Landroid/widget/TimePickerClockDelegate;IZ)V

    #@70
    goto :goto_0

    #@71
    .line 702
    nop

    #@72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
