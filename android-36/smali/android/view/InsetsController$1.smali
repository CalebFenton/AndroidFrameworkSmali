.class Landroid/view/InsetsController$1;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InsetsController;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/InsetsController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 346
    iput-object p1, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDisplayContext()Landroid/content/Context;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getRootViewContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method public blacklist getHostPackageName()Ljava/lang/String;
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getRootViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method

.method public blacklist getTargetSurfaceControl()Landroid/view/SurfaceControl;
    .registers 3

    .line 354
    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    .line 355
    .local v0, "imeSourceControl":Landroid/view/InsetsSourceControl;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method
