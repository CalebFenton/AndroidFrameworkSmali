.class Landroid/app/ExitTransitionCoordinator$1;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->sharedElementExitBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic val$decorView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;
    .param p2, "val$decorView"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 151
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$1;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$1;->val$decorView:Landroid/view/ViewGroup;

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
    .line 153
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$1;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$1;->val$decorView:Landroid/view/ViewGroup;

    #@4
    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->-wrap6(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V

    #@7
    .line 152
    return-void
.end method
