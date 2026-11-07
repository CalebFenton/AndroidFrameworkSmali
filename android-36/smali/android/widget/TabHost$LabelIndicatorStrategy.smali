.class Landroid/widget/TabHost$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V
    .registers 3
    .param p2, "label"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 647
    iput-object p1, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p2, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 649
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$LabelIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o createIndicatorView()Landroid/view/View;
    .registers 7

    .line 652
    iget-object v0, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 653
    .local v0, "context":Landroid/content/Context;
    nop

    .line 654
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 655
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-static {v2}, Landroid/widget/TabHost;->-$$Nest$fgetmTabLayoutId(Landroid/widget/TabHost;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-static {v3}, Landroid/widget/TabHost;->-$$Nest$fgetmTabWidget(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 659
    .local v2, "tabIndicator":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 660
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_47

    .line 664
    const v4, 0x1080a41

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 665
    const v4, 0x10603ab

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 668
    :cond_47
    return-object v2
.end method
