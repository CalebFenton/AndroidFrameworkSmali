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
.field private final greylist-max-o mIntent:Landroid/content/Intent;

.field private greylist-max-o mLaunchedView:Landroid/view/View;

.field private final greylist-max-o mTag:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
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

    .line 797
    iput-object p1, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    iput-object p2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 799
    iput-object p3, p0, Landroid/widget/TabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 800
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;Landroid/widget/TabHost-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost$IntentContentStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public greylist-max-q getContentView()Landroid/view/View;
    .registers 5

    .line 808
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    iget-object v0, v0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-eqz v0, :cond_53

    .line 811
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    iget-object v0, v0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v1, p0, Landroid/widget/TabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 813
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 814
    .local v1, "wd":Landroid/view/View;
    :goto_1a
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v2, v1, :cond_35

    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_35

    .line 815
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 816
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->this$0:Landroid/widget/TabHost;

    invoke-static {v2}, Landroid/widget/TabHost;->-$$Nest$fgetmTabContent(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 819
    :cond_35
    iput-object v1, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 827
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_50

    .line 828
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 830
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 833
    :cond_50
    iget-object v2, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v2

    .line 809
    .end local v0    # "w":Landroid/view/Window;
    .end local v1    # "wd":Landroid/view/View;
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-q tabClosed()V
    .registers 3

    .line 842
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 843
    iget-object v0, p0, Landroid/widget/TabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :cond_b
    return-void
.end method
