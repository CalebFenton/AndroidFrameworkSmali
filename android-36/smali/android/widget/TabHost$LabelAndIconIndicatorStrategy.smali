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
.field private final greylist-max-o mIcon:Landroid/graphics/drawable/Drawable;

.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 680
    iput-object p1, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p2, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 682
    iput-object p3, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 683
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/TabHost-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o createIndicatorView()Landroid/view/View;
    .registers 10

    .line 686
    iget-object v0, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 687
    .local v0, "context":Landroid/content/Context;
    nop

    .line 688
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 689
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-static {v2}, Landroid/widget/TabHost;->-$$Nest$fgetmTabLayoutId(Landroid/widget/TabHost;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-static {v3}, Landroid/widget/TabHost;->-$$Nest$fgetmTabWidget(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 693
    .local v2, "tabIndicator":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 694
    .local v3, "tv":Landroid/widget/TextView;
    const v5, 0x1020006

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 697
    .local v5, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-ne v6, v7, :cond_3d

    move v6, v8

    goto :goto_3e

    :cond_3d
    move v6, v4

    .line 698
    .local v6, "exclusive":Z
    :goto_3e
    if-eqz v6, :cond_4a

    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_49

    goto :goto_4a

    :cond_49
    move v8, v4

    .line 700
    .local v8, "bindIcon":Z
    :cond_4a
    :goto_4a
    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    if-eqz v8, :cond_5d

    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5d

    .line 703
    iget-object v7, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    :cond_5d
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v7, 0x4

    if-gt v4, v7, :cond_76

    .line 709
    const v4, 0x1080a41

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 710
    const v4, 0x10603ab

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 713
    :cond_76
    return-object v2
.end method
