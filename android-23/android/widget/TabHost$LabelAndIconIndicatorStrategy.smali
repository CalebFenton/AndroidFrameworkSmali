.class Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;
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
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 598
    iput-object p1, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 599
    iput-object p2, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    #@7
    .line 600
    iput-object p3, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    #@9
    .line 598
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 604
    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #@3
    invoke-virtual {v7}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    .line 606
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v7, "layout_inflater"

    #@a
    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    check-cast v4, Landroid/view/LayoutInflater;

    #@10
    .line 607
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #@12
    invoke-static {v7}, Landroid/widget/TabHost;->-get1(Landroid/widget/TabHost;)I

    #@15
    move-result v7

    #@16
    .line 608
    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #@18
    invoke-static {v8}, Landroid/widget/TabHost;->-get2(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    #@1b
    move-result-object v8

    #@1c
    .line 607
    invoke-virtual {v4, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@1f
    move-result-object v5

    #@20
    .line 611
    .local v5, "tabIndicator":Landroid/view/View;
    const v7, 0x1020016

    #@23
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@26
    move-result-object v6

    #@27
    check-cast v6, Landroid/widget/TextView;

    #@29
    .line 612
    .local v6, "tv":Landroid/widget/TextView;
    const v7, 0x1020006

    #@2c
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/widget/ImageView;

    #@32
    .line 615
    .local v3, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    #@35
    move-result v7

    #@36
    const/16 v8, 0x8

    #@38
    if-ne v7, v8, :cond_2

    #@3a
    const/4 v2, 0x1

    #@3b
    .line 616
    .local v2, "exclusive":Z
    :goto_0
    if-eqz v2, :cond_3

    #@3d
    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    #@3f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@42
    move-result v0

    #@43
    .line 618
    :goto_1
    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    #@45
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@48
    .line 620
    if-eqz v0, :cond_0

    #@4a
    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    #@4c
    if-eqz v7, :cond_0

    #@4e
    .line 621
    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    #@50
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@53
    .line 622
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    #@56
    .line 625
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@59
    move-result-object v7

    #@5a
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@5c
    const/4 v8, 0x4

    #@5d
    if-gt v7, v8, :cond_1

    #@5f
    .line 627
    const v7, 0x10806d2

    #@62
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    #@65
    .line 628
    const v7, 0x1060125

    #@68
    invoke-virtual {v1, v7}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@6f
    .line 631
    :cond_1
    return-object v5

    #@70
    .line 615
    .end local v2    # "exclusive":Z
    :cond_2
    const/4 v2, 0x0

    #@71
    .restart local v2    # "exclusive":Z
    goto :goto_0

    #@72
    .line 616
    :cond_3
    const/4 v0, 0x1

    #@73
    .local v0, "bindIcon":Z
    goto :goto_1
.end method
