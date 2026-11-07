.class Landroid/app/EnterTransitionCoordinator$2;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mAnimations:I

.field final synthetic blacklist this$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method constructor blacklist <init>(Landroid/app/EnterTransitionCoordinator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 438
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$2;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 443
    iget v0, p0, Landroid/app/EnterTransitionCoordinator$2;->mAnimations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/EnterTransitionCoordinator$2;->mAnimations:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_15

    .line 444
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$2;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 445
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_2a

    .line 446
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2a

    .line 448
    .end local v0    # "decorView":Landroid/view/View;
    :cond_15
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$2;->this$0:Landroid/app/EnterTransitionCoordinator;

    iget-object v0, v0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_2a

    .line 449
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$2;->this$0:Landroid/app/EnterTransitionCoordinator;

    iget-object v0, v0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 450
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$2;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object v2, v0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    goto :goto_2b

    .line 448
    :cond_2a
    :goto_2a
    nop

    .line 452
    :goto_2b
    return-void
.end method
