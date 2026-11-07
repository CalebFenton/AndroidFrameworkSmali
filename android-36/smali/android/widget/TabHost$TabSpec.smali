.class public Landroid/widget/TabHost$TabSpec;
.super Ljava/lang/Object;
.source "TabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private greylist-max-q mContentStrategy:Landroid/widget/TabHost$ContentStrategy;

.field private greylist-max-q mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;

.field private final greylist-max-o mTag:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/widget/TabHost;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContentStrategy(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;
    .registers 1

    iget-object p0, p0, Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIndicatorStrategy(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;
    .registers 1

    iget-object p0, p0, Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/widget/TabHost;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 547
    iput-object p1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p2, p0, Landroid/widget/TabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 549
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/widget/TabHost-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$TabSpec;-><init>(Landroid/widget/TabHost;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 608
    iget-object v0, p0, Landroid/widget/TabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setContent(I)Landroid/widget/TabHost$TabSpec;
    .registers 5
    .param p1, "viewId"    # I

    .line 580
    new-instance v0, Landroid/widget/TabHost$ViewIdContentStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/TabHost$ViewIdContentStrategy;-><init>(Landroid/widget/TabHost;ILandroid/widget/TabHost-IA;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;

    .line 581
    return-object p0
.end method

.method public whitelist setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 597
    new-instance v0, Landroid/widget/TabHost$IntentContentStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    iget-object v2, p0, Landroid/widget/TabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/widget/TabHost$IntentContentStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;Landroid/widget/TabHost-IA;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;

    .line 598
    return-object p0
.end method

.method public whitelist setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;
    .registers 5
    .param p1, "contentFactory"    # Landroid/widget/TabHost$TabContentFactory;

    .line 589
    new-instance v0, Landroid/widget/TabHost$FactoryContentStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    iget-object v2, p0, Landroid/widget/TabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/TabHost$FactoryContentStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$TabContentFactory;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;

    .line 590
    return-object p0
.end method

.method public whitelist setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 571
    new-instance v0, Landroid/widget/TabHost$ViewIndicatorStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/TabHost$ViewIndicatorStrategy;-><init>(Landroid/widget/TabHost;Landroid/view/View;Landroid/widget/TabHost-IA;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;

    .line 572
    return-object p0
.end method

.method public whitelist setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 555
    new-instance v0, Landroid/widget/TabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/TabHost$LabelIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost-IA;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;

    .line 556
    return-object p0
.end method

.method public whitelist setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;
    .registers 6
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 563
    new-instance v0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Landroid/widget/TabHost$TabSpec;->this$0:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/TabHost-IA;)V

    iput-object v0, p0, Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;

    .line 564
    return-object p0
.end method
