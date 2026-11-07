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
.field final synthetic blacklist this$0:Landroid/widget/DayPickerPagerAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/widget/DayPickerPagerAdapter;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/DayPickerPagerAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 315
    iput-object p1, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V
    .registers 5
    .param p1, "view"    # Landroid/widget/SimpleMonthView;
    .param p2, "day"    # Landroid/icu/util/Calendar;

    .line 318
    if-eqz p2, :cond_1a

    .line 319
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 321
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-static {v0}, Landroid/widget/DayPickerPagerAdapter;->-$$Nest$fgetmOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 322
    iget-object v0, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-static {v0}, Landroid/widget/DayPickerPagerAdapter;->-$$Nest$fgetmOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DayPickerPagerAdapter$1;->this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-interface {v0, v1, p2}, Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;->onDaySelected(Landroid/widget/DayPickerPagerAdapter;Landroid/icu/util/Calendar;)V

    .line 325
    :cond_1a
    return-void
.end method
