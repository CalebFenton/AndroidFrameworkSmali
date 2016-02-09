.class Landroid/widget/DayPickerView$1;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


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
    .line 390
    iput-object p1, p0, Landroid/widget/DayPickerView$1;->this$0:Landroid/widget/DayPickerView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 399
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    #@0
    .prologue
    .line 393
    const/high16 v1, 0x3f000000    # 0.5f

    #@2
    sub-float/2addr v1, p2

    #@3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@6
    move-result v1

    #@7
    const/high16 v2, 0x40000000    # 2.0f

    #@9
    mul-float v0, v1, v2

    #@b
    .line 394
    .local v0, "alpha":F
    iget-object v1, p0, Landroid/widget/DayPickerView$1;->this$0:Landroid/widget/DayPickerView;

    #@d
    invoke-static {v1}, Landroid/widget/DayPickerView;->-get3(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    #@14
    .line 395
    iget-object v1, p0, Landroid/widget/DayPickerView$1;->this$0:Landroid/widget/DayPickerView;

    #@16
    invoke-static {v1}, Landroid/widget/DayPickerView;->-get1(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    #@1d
    .line 392
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/widget/DayPickerView$1;->this$0:Landroid/widget/DayPickerView;

    #@2
    invoke-static {v0, p1}, Landroid/widget/DayPickerView;->-wrap0(Landroid/widget/DayPickerView;I)V

    #@5
    .line 402
    return-void
.end method
