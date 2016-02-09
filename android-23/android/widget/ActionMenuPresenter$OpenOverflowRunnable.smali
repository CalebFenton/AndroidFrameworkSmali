.class Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "popup"    # Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@0
    .prologue
    .line 990
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 991
    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@7
    .line 990
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 995
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    #@3
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get2(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    #@a
    .line 996
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    #@c
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get3(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/view/View;

    #@12
    .line 997
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@14
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@1c
    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 998
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    #@24
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@26
    invoke-static {v1, v2}, Landroid/widget/ActionMenuPresenter;->-set1(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    #@29
    .line 1000
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2b
    invoke-static {v1, v3}, Landroid/widget/ActionMenuPresenter;->-set2(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    #@2e
    .line 994
    return-void
.end method
