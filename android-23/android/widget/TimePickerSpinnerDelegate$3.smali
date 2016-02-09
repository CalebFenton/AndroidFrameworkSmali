.class Landroid/widget/TimePickerSpinnerDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 155
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    #@0
    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@3
    .line 158
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@5
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@7
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-get1(Landroid/widget/TimePickerSpinnerDelegate;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :goto_0
    invoke-static {v1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->-set0(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    #@11
    .line 159
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@13
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap1(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@16
    .line 160
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$3;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    #@18
    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap0(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@1b
    .line 156
    return-void

    #@1c
    .line 158
    :cond_0
    const/4 v0, 0x1

    #@1d
    goto :goto_0
.end method
