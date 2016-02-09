.class Landroid/widget/TimePickerClockDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1327
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 1347
    :pswitch_0
    return-void

    #@a
    .line 1334
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@c
    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->-wrap3(Landroid/widget/TimePickerClockDelegate;I)V

    #@f
    .line 1350
    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@11
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-wrap5(Landroid/widget/TimePickerClockDelegate;)V

    #@14
    .line 1329
    return-void

    #@15
    .line 1337
    :pswitch_2
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@17
    invoke-static {v0, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap3(Landroid/widget/TimePickerClockDelegate;I)V

    #@1a
    goto :goto_0

    #@1b
    .line 1340
    :pswitch_3
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@1d
    invoke-static {v0, v2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap4(Landroid/widget/TimePickerClockDelegate;IZZ)V

    #@20
    goto :goto_0

    #@21
    .line 1343
    :pswitch_4
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    #@23
    invoke-static {v0, v1, v1, v1}, Landroid/widget/TimePickerClockDelegate;->-wrap4(Landroid/widget/TimePickerClockDelegate;IZZ)V

    #@26
    goto :goto_0

    #@27
    .line 1332
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x10203ea
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
