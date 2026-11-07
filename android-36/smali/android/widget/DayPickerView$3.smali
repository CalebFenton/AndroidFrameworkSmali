.class Landroid/widget/DayPickerView$3;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/DayPickerView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/DayPickerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 427
    iput-object p1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 431
    iget-object v0, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v0}, Landroid/widget/DayPickerView;->-$$Nest$fgetmPrevButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_a

    .line 432
    const/4 v0, -0x1

    .local v0, "direction":I
    goto :goto_13

    .line 433
    .end local v0    # "direction":I
    :cond_a
    iget-object v0, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v0}, Landroid/widget/DayPickerView;->-$$Nest$fgetmNextButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_34

    .line 434
    const/4 v0, 0x1

    .line 441
    .restart local v0    # "direction":I
    :goto_13
    iget-object v1, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v1}, Landroid/widget/DayPickerView;->-$$Nest$fgetmAccessibilityManager(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 445
    .local v1, "animate":Z
    iget-object v2, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v2}, Landroid/widget/DayPickerView;->-$$Nest$fgetmViewPager(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v0

    .line 446
    .local v2, "nextItem":I
    iget-object v3, p0, Landroid/widget/DayPickerView$3;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v3}, Landroid/widget/DayPickerView;->-$$Nest$fgetmViewPager(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 447
    return-void

    .line 436
    .end local v0    # "direction":I
    .end local v1    # "animate":Z
    .end local v2    # "nextItem":I
    :cond_34
    return-void
.end method
