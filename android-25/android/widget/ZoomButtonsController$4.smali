.class Landroid/widget/ZoomButtonsController$4;
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
.field final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor <init>(Landroid/widget/ZoomButtonsController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ZoomButtonsController;

    #@0
    .prologue
    .line 271
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    #@2
    invoke-static {}, Landroid/widget/ZoomButtonsController;->-get0()I

    #@5
    move-result v1

    #@6
    invoke-static {v0, v1}, Landroid/widget/ZoomButtonsController;->-wrap1(Landroid/widget/ZoomButtonsController;I)V

    #@9
    .line 274
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    #@b
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-get1(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$4;->this$0:Landroid/widget/ZoomButtonsController;

    #@13
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->-get1(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    #@16
    move-result-object v0

    #@17
    const/4 v1, 0x0

    #@18
    invoke-interface {v0, v1}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    #@1b
    .line 272
    :cond_0
    return-void
.end method
