.class Landroid/widget/DatePickerCalendarDelegate$3;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
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
    .line 276
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@2
    invoke-static {v0}, Landroid/widget/DatePickerCalendarDelegate;->-wrap2(Landroid/widget/DatePickerCalendarDelegate;)V

    #@5
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@8
    move-result v0

    #@9
    packed-switch v0, :pswitch_data_0

    #@c
    .line 278
    :goto_0
    return-void

    #@d
    .line 283
    :pswitch_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-static {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->-wrap1(Landroid/widget/DatePickerCalendarDelegate;I)V

    #@13
    goto :goto_0

    #@14
    .line 286
    :pswitch_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-static {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->-wrap1(Landroid/widget/DatePickerCalendarDelegate;I)V

    #@1a
    goto :goto_0

    #@1b
    .line 281
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x102031a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
