.class Landroid/app/EnterTransitionCoordinator$5$1$1;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator$5$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/app/EnterTransitionCoordinator$5$1;

.field final synthetic val$sharedElementState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator$5$1;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$2"    # Landroid/app/EnterTransitionCoordinator$5$1;
    .param p2, "val$sharedElementState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 396
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$5$1$1;->this$2:Landroid/app/EnterTransitionCoordinator$5$1;

    #@2
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$5$1$1;->val$sharedElementState:Landroid/os/Bundle;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$5$1$1;->this$2:Landroid/app/EnterTransitionCoordinator$5$1;

    #@2
    iget-object v0, v0, Landroid/app/EnterTransitionCoordinator$5$1;->this$1:Landroid/app/EnterTransitionCoordinator$5;

    #@4
    iget-object v0, v0, Landroid/app/EnterTransitionCoordinator$5;->this$0:Landroid/app/EnterTransitionCoordinator;

    #@6
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$5$1$1;->val$sharedElementState:Landroid/os/Bundle;

    #@8
    invoke-static {v0, v1}, Landroid/app/EnterTransitionCoordinator;->-wrap4(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    #@b
    .line 398
    return-void
.end method
