.class Landroid/widget/TimePickerSpinnerDelegate$4;
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
    .line 169
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@2
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap2(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@5
    .line 172
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->requestFocus()Z

    #@8
    .line 173
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@a
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@c
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-get1(Landroid/widget/TimePickerSpinnerDelegate;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    :goto_0
    invoke-static {v1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->-set0(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    #@16
    .line 174
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@18
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap1(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@1b
    .line 175
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@1d
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap0(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@20
    .line 170
    return-void

    #@21
    .line 173
    :cond_0
    const/4 v0, 0x1

    #@22
    goto :goto_0
.end method
