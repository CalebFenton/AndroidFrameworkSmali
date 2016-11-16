.class Landroid/widget/TimePickerClockDelegate$5;
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
    .line 775
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "focused"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 778
    if-eqz p2, :cond_0

    #@4
    .line 779
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@7
    move-result v0

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 794
    :pswitch_0
    return-void

    #@c
    .line 781
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@e
    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->-wrap1(Landroid/widget/TimePickerClockDelegate;I)V

    #@11
    .line 797
    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@13
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-wrap5(Landroid/widget/TimePickerClockDelegate;)V

    #@16
    .line 777
    :cond_0
    return-void

    #@17
    .line 784
    :pswitch_2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@19
    invoke-static {v0, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap1(Landroid/widget/TimePickerClockDelegate;I)V

    #@1c
    goto :goto_0

    #@1d
    .line 787
    :pswitch_3
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@1f
    invoke-static {v0, v2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V

    #@22
    goto :goto_0

    #@23
    .line 790
    :pswitch_4
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$5;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@25
    invoke-static {v0, v1, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V

    #@28
    goto :goto_0

    #@29
    .line 779
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x1020434
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
