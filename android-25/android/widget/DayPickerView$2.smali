.class Landroid/widget/DayPickerView$2;
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
.field final synthetic this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DayPickerView;

    #@0
    .prologue
    .line 407
    iput-object p1, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 411
    iget-object v3, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    #@2
    invoke-static {v3}, Landroid/widget/DayPickerView;->-get3(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    #@5
    move-result-object v3

    #@6
    if-ne p1, v3, :cond_0

    #@8
    .line 412
    const/4 v1, -0x1

    #@9
    .line 421
    .local v1, "direction":I
    :goto_0
    iget-object v3, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    #@b
    invoke-static {v3}, Landroid/widget/DayPickerView;->-get0(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    const/4 v0, 0x0

    #@16
    .line 425
    .local v0, "animate":Z
    :goto_1
    iget-object v3, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    #@18
    invoke-static {v3}, Landroid/widget/DayPickerView;->-get4(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    #@1f
    move-result v3

    #@20
    add-int v2, v3, v1

    #@22
    .line 426
    .local v2, "nextItem":I
    iget-object v3, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    #@24
    invoke-static {v3}, Landroid/widget/DayPickerView;->-get4(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    #@2b
    .line 409
    return-void

    #@2c
    .line 413
    .end local v0    # "animate":Z
    .end local v1    # "direction":I
    .end local v2    # "nextItem":I
    :cond_0
    iget-object v3, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    #@2e
    invoke-static {v3}, Landroid/widget/DayPickerView;->-get1(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    #@31
    move-result-object v3

    #@32
    if-ne p1, v3, :cond_1

    #@34
    .line 414
    const/4 v1, 0x1

    #@35
    .restart local v1    # "direction":I
    goto :goto_0

    #@36
    .line 416
    .end local v1    # "direction":I
    :cond_1
    return-void

    #@37
    .line 421
    .restart local v1    # "direction":I
    :cond_2
    const/4 v0, 0x1

    #@38
    .restart local v0    # "animate":Z
    goto :goto_1
.end method
