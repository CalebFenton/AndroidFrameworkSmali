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
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .param p2, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 565
    iput-object p1, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 566
    iput-object p2, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    #@7
    .line 565
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$LabelIndicatorStrategy;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .param p2, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$LabelIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V

    #@3
    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 7

    #@0
    .prologue
    .line 570
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #@2
    invoke-virtual {v4}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 572
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v4, "layout_inflater"

    #@9
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/view/LayoutInflater;

    #@f
    .line 573
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #@11
    invoke-static {v4}, Landroid/widget/TabHost;->-get1(Landroid/widget/TabHost;)I

    #@14
    move-result v4

    #@15
    .line 574
    iget-object v5, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #@17
    invoke-static {v5}, Landroid/widget/TabHost;->-get2(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    #@1a
    move-result-object v5

    #@1b
    .line 575
    const/4 v6, 0x0

    #@1c
    .line 573
    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@1f
    move-result-object v2

    #@20
    .line 577
    .local v2, "tabIndicator":Landroid/view/View;
    const v4, 0x1020016

    #@23
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Landroid/widget/TextView;

    #@29
    .line 578
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    #@2b
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2e
    .line 580
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@31
    move-result-object v4

    #@32
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@34
    const/4 v5, 0x4

    #@35
    if-gt v4, v5, :cond_0

    #@37
    .line 582
    const v4, 0x10806d2

    #@3a
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    #@3d
    .line 583
    const v4, 0x1060125

    #@40
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@47
    .line 586
    :cond_0
    return-object v2
.end method
