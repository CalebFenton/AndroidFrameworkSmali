.class Landroid/widget/TimePickerClockDelegate$2;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;


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
    .line 725
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V
    .locals 4
    .param p1, "view"    # Lcom/android/internal/widget/NumericTextView;
    .param p2, "value"    # I
    .param p3, "isValid"    # Z
    .param p4, "isFinished"    # Z

    #@0
    .prologue
    .line 731
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@2
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get3(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    #@5
    move-result-object v2

    #@6
    if-ne p1, v2, :cond_2

    #@8
    .line 732
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@a
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get1(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    #@d
    move-result-object v0

    #@e
    .line 733
    .local v0, "commitCallback":Ljava/lang/Runnable;
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@16
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get4(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    #@19
    move-result-object v1

    #@1a
    .line 741
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1d
    .line 743
    if-eqz p3, :cond_0

    #@1f
    .line 744
    if-eqz p4, :cond_4

    #@21
    .line 747
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@24
    .line 749
    if-eqz v1, :cond_0

    #@26
    .line 750
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@29
    .line 728
    :cond_0
    :goto_1
    return-void

    #@2a
    .line 733
    :cond_1
    const/4 v1, 0x0

    #@2b
    .local v1, "nextFocusTarget":Landroid/view/View;
    goto :goto_0

    #@2c
    .line 734
    .end local v0    # "commitCallback":Ljava/lang/Runnable;
    .end local v1    # "nextFocusTarget":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@2e
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get4(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    #@31
    move-result-object v2

    #@32
    if-ne p1, v2, :cond_3

    #@34
    .line 735
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$2;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@36
    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get2(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    #@39
    move-result-object v0

    #@3a
    .line 736
    .restart local v0    # "commitCallback":Ljava/lang/Runnable;
    const/4 v1, 0x0

    #@3b
    .restart local v1    # "nextFocusTarget":Landroid/view/View;
    goto :goto_0

    #@3c
    .line 738
    .end local v0    # "commitCallback":Ljava/lang/Runnable;
    .end local v1    # "nextFocusTarget":Landroid/view/View;
    :cond_3
    return-void

    #@3d
    .line 755
    .restart local v0    # "commitCallback":Ljava/lang/Runnable;
    :cond_4
    const-wide/16 v2, 0x7d0

    #@3f
    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@42
    goto :goto_1
.end method
