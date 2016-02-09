.class Landroid/app/ExitTransitionCoordinator$6;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Landroid/app/Activity$TranslucentConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V
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
    .line 248
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onTranslucentConversionComplete(Z)V
    .locals 1
    .param p1, "drawComplete"    # Z

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get1(Landroid/app/ExitTransitionCoordinator;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 252
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$6;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@a
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap2(Landroid/app/ExitTransitionCoordinator;)V

    #@d
    .line 250
    :cond_0
    return-void
.end method
