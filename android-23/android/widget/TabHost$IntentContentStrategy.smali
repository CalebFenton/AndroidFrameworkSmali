.class Landroid/widget/TabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 715
    iput-object p1, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 716
    iput-object p2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    #@7
    .line 717
    iput-object p3, p0, Landroid/widget/TabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    #@9
    .line 715
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;Landroid/widget/TabHost$IntentContentStrategy;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TabHost;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost$IntentContentStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;)V

    #@3
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 5

    #@0
    .prologue
    .line 721
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    #@2
    iget-object v2, v2, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 722
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 724
    :cond_0
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    #@11
    iget-object v2, v2, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@13
    .line 725
    iget-object v3, p0, Landroid/widget/TabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    #@15
    iget-object v4, p0, Landroid/widget/TabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    #@17
    .line 724
    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    #@1a
    move-result-object v0

    #@1b
    .line 726
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_3

    #@1d
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@20
    move-result-object v1

    #@21
    .line 727
    :goto_0
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@23
    if-eq v2, v1, :cond_1

    #@25
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 728
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@2b
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@2e
    move-result-object v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 729
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    #@33
    invoke-static {v2}, Landroid/widget/TabHost;->-get0(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    #@36
    move-result-object v2

    #@37
    iget-object v3, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@39
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    #@3c
    .line 732
    :cond_1
    iput-object v1, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@3e
    .line 740
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@40
    if-eqz v2, :cond_2

    #@42
    .line 741
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@44
    const/4 v3, 0x0

    #@45
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@48
    .line 742
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@4a
    const/4 v3, 0x1

    #@4b
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    #@4e
    .line 743
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@50
    check-cast v2, Landroid/view/ViewGroup;

    #@52
    .line 744
    const/high16 v3, 0x40000

    #@54
    .line 743
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    #@57
    .line 746
    :cond_2
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@59
    return-object v2

    #@5a
    .line 726
    :cond_3
    const/4 v1, 0x0

    #@5b
    .local v1, "wd":Landroid/view/View;
    goto :goto_0
.end method

.method public tabClosed()V
    .locals 2

    #@0
    .prologue
    .line 750
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 751
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    #@6
    const/16 v1, 0x8

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@b
    .line 749
    :cond_0
    return-void
.end method
