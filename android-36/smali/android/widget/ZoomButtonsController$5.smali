.class Landroid/widget/ZoomButtonsController$5;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ZoomButtonsController;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ZoomButtonsController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ZoomButtonsController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 376
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 378
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-$$Nest$mrefreshPositioningVariables(Landroid/widget/ZoomButtonsController;)V

    .line 380
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmCallback(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 381
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmCallback(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V

    .line 383
    :cond_17
    return-void
.end method
