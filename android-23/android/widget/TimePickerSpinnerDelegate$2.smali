.class Landroid/widget/TimePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TimePickerSpinnerDelegate;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 7
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 122
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@4
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap2(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@7
    .line 123
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@9
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->-get2(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMinValue()I

    #@10
    move-result v1

    #@11
    .line 124
    .local v1, "minValue":I
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@13
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->-get2(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMaxValue()I

    #@1a
    move-result v0

    #@1b
    .line 125
    .local v0, "maxValue":I
    if-ne p2, v0, :cond_3

    #@1d
    if-ne p3, v1, :cond_3

    #@1f
    .line 126
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@21
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->-get0(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    #@28
    move-result v5

    #@29
    add-int/lit8 v2, v5, 0x1

    #@2b
    .line 127
    .local v2, "newHour":I
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@2d
    invoke-virtual {v5}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_0

    #@33
    const/16 v5, 0xc

    #@35
    if-ne v2, v5, :cond_0

    #@37
    .line 128
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@39
    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@3b
    invoke-static {v6}, Landroid/widget/TimePickerSpinnerDelegate;->-get1(Landroid/widget/TimePickerSpinnerDelegate;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_2

    #@41
    :goto_0
    invoke-static {v5, v3}, Landroid/widget/TimePickerSpinnerDelegate;->-set0(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    #@44
    .line 129
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@46
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap1(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@49
    .line 131
    :cond_0
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@4b
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->-get0(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    #@52
    .line 140
    .end local v2    # "newHour":I
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@54
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap0(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@57
    .line 121
    return-void

    #@58
    .restart local v2    # "newHour":I
    :cond_2
    move v3, v4

    #@59
    .line 128
    goto :goto_0

    #@5a
    .line 132
    .end local v2    # "newHour":I
    :cond_3
    if-ne p2, v1, :cond_1

    #@5c
    if-ne p3, v0, :cond_1

    #@5e
    .line 133
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@60
    invoke-static {v5}, Landroid/widget/TimePickerSpinnerDelegate;->-get0(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    #@67
    move-result v5

    #@68
    add-int/lit8 v2, v5, -0x1

    #@6a
    .line 134
    .restart local v2    # "newHour":I
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@6c
    invoke-virtual {v5}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    #@6f
    move-result v5

    #@70
    if-nez v5, :cond_4

    #@72
    const/16 v5, 0xb

    #@74
    if-ne v2, v5, :cond_4

    #@76
    .line 135
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@78
    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@7a
    invoke-static {v6}, Landroid/widget/TimePickerSpinnerDelegate;->-get1(Landroid/widget/TimePickerSpinnerDelegate;)Z

    #@7d
    move-result v6

    #@7e
    if-eqz v6, :cond_5

    #@80
    :goto_2
    invoke-static {v5, v3}, Landroid/widget/TimePickerSpinnerDelegate;->-set0(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    #@83
    .line 136
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@85
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap1(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@88
    .line 138
    :cond_4
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$2;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@8a
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->-get0(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    #@91
    goto :goto_1

    #@92
    :cond_5
    move v3, v4

    #@93
    .line 135
    goto :goto_2
.end method
