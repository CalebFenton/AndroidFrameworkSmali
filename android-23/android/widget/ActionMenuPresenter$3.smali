.class Landroid/widget/ActionMenuPresenter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActionMenuPresenter;->runItemAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;

    #@0
    .prologue
    .line 342
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$3;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 345
    const/4 v0, 0x0

    #@1
    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$3;->this$0:Landroid/widget/ActionMenuPresenter;

    #@3
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get9(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 346
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$3;->this$0:Landroid/widget/ActionMenuPresenter;

    #@f
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get9(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    #@19
    iget-object v1, v1, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    #@1b
    if-ne v1, p1, :cond_1

    #@1d
    .line 347
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$3;->this$0:Landroid/widget/ActionMenuPresenter;

    #@1f
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get9(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@26
    .line 344
    :cond_0
    return-void

    #@27
    .line 345
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0
.end method
