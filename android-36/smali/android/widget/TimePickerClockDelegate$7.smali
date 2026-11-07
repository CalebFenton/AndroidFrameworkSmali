.class Landroid/widget/TimePickerClockDelegate$7;
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
.field final synthetic blacklist this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 989
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "focused"    # Z

    .line 992
    if-eqz p2, :cond_29

    .line 993
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_2a

    .line 1008
    return-void

    .line 998
    :sswitch_c
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V

    .line 999
    goto :goto_24

    .line 1004
    :sswitch_12
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v2, v2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZ)V

    .line 1005
    goto :goto_24

    .line 1001
    :sswitch_18
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZ)V

    .line 1002
    goto :goto_24

    .line 995
    :sswitch_1e
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0, v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V

    .line 996
    nop

    .line 1011
    :goto_24
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$7;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$mtryVibrate(Landroid/widget/TimePickerClockDelegate;)V

    .line 1013
    :cond_29
    return-void

    :sswitch_data_2a
    .sparse-switch
        0x1020211 -> :sswitch_1e
        0x1020365 -> :sswitch_18
        0x10203f9 -> :sswitch_12
        0x1020482 -> :sswitch_c
    .end sparse-switch
.end method
