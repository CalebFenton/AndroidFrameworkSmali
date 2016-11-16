.class Landroid/app/ExitTransitionCoordinator$4;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;

    #@0
    .prologue
    .line 213
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

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
    .line 216
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get0(Landroid/app/ExitTransitionCoordinator;)Landroid/app/Activity;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 217
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@a
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap0(Landroid/app/ExitTransitionCoordinator;)V

    #@d
    .line 215
    :goto_0
    return-void

    #@e
    .line 219
    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@10
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap5(Landroid/app/ExitTransitionCoordinator;)V

    #@13
    goto :goto_0
.end method
