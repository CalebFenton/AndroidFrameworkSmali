.class Landroid/widget/ActionMenuPresenter$5;
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
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 409
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$5;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 412
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$5;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmRunningItemAnimations(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 413
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$5;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmRunningItemAnimations(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    iget-object v1, v1, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    if-ne v1, p1, :cond_27

    .line 414
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$5;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmRunningItemAnimations(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 415
    goto :goto_2a

    .line 412
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 418
    .end local v0    # "j":I
    :cond_2a
    :goto_2a
    return-void
.end method
