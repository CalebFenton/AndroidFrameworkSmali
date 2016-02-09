.class Landroid/widget/MediaController$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MediaController;

    #@0
    .prologue
    .line 188
    iput-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-static {v0}, Landroid/widget/MediaController;->-wrap3(Landroid/widget/MediaController;)V

    #@5
    .line 194
    iget-object v0, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    #@7
    invoke-static {v0}, Landroid/widget/MediaController;->-get6(Landroid/widget/MediaController;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 195
    iget-object v0, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    #@f
    invoke-static {v0}, Landroid/widget/MediaController;->-get7(Landroid/widget/MediaController;)Landroid/view/WindowManager;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    #@15
    invoke-static {v1}, Landroid/widget/MediaController;->-get1(Landroid/widget/MediaController;)Landroid/view/View;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    #@1b
    invoke-static {v2}, Landroid/widget/MediaController;->-get2(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@22
    .line 192
    :cond_0
    return-void
.end method
