.class Landroid/widget/DayPickerPagerAdapter$1;
.super Ljava/lang/Object;
.source "DayPickerPagerAdapter.java"

# interfaces
.implements Landroid/widget/SimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerPagerAdapter;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerPagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DayPickerPagerAdapter;

    #@0
    .prologue
    .line 290
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDayClick(Landroid/widget/SimpleMonthView;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/SimpleMonthView;
    .param p2, "day"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 293
    if-eqz p2, :cond_0

    #@2
    .line 294
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    #@4
    invoke-virtual {v0, p2}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    #@7
    .line 296
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    #@9
    invoke-static {v0}, Landroid/widget/DayPickerPagerAdapter;->-get0(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 297
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    #@11
    invoke-static {v0}, Landroid/widget/DayPickerPagerAdapter;->-get0(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    #@17
    invoke-interface {v0, v1, p2}, Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;->onDaySelected(Landroid/widget/DayPickerPagerAdapter;Ljava/util/Calendar;)V

    #@1a
    .line 292
    :cond_0
    return-void
.end method
