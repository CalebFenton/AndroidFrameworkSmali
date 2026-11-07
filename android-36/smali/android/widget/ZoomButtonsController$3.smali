.class Landroid/widget/ZoomButtonsController$3;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;
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

    .line 268
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 270
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {}, Landroid/widget/ZoomButtonsController;->-$$Nest$sfgetZOOM_CONTROLS_TIMEOUT()I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/ZoomButtonsController;->-$$Nest$mdismissControlsDelayed(Landroid/widget/ZoomButtonsController;I)V

    .line 271
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmCallback(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-$$Nest$fgetmCallback(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    .line 272
    :cond_1b
    return-void
.end method
