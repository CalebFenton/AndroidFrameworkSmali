.class Landroid/app/EnterTransitionCoordinator$4;
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
.field mAnimations:I

.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;

    #@0
    .prologue
    .line 351
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 356
    iget v1, p0, Landroid/app/EnterTransitionCoordinator$4;->mAnimations:I

    #@3
    add-int/lit8 v2, v1, 0x1

    #@5
    iput v2, p0, Landroid/app/EnterTransitionCoordinator$4;->mAnimations:I

    #@7
    const/4 v2, 0x2

    #@8
    if-ge v1, v2, :cond_1

    #@a
    .line 357
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@c
    invoke-virtual {v1}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@f
    move-result-object v0

    #@10
    .line 358
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@12
    .line 359
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    #@15
    .line 355
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    #@16
    .line 361
    :cond_1
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@18
    iget-object v1, v1, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 362
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@1e
    iget-object v1, v1, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@20
    const/16 v2, 0x65

    #@22
    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@25
    .line 363
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$4;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@27
    iput-object v3, v1, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@29
    goto :goto_0
.end method
