.class Landroid/app/ActivityTransitionState$1;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityTransitionState;


# direct methods
.method constructor <init>(Landroid/app/ActivityTransitionState;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityTransitionState;

    #@0
    .prologue
    .line 246
    iput-object p1, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    #@2
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-get0(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 250
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    #@a
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-get0(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isWaitingForRemoteExit()Z

    #@11
    move-result v0

    #@12
    .line 249
    if-eqz v0, :cond_1

    #@14
    .line 251
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    #@16
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-wrap0(Landroid/app/ActivityTransitionState;)V

    #@19
    .line 252
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    #@1b
    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-wrap1(Landroid/app/ActivityTransitionState;)V

    #@1e
    .line 248
    :cond_1
    return-void
.end method
