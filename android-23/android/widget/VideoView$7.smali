.class Landroid/widget/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/VideoView;

    #@0
    .prologue
    .line 602
    iput-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    #@0
    .prologue
    .line 607
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-static {v2, p3}, Landroid/widget/VideoView;->-set7(Landroid/widget/VideoView;I)I

    #@5
    .line 608
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@7
    invoke-static {v2, p4}, Landroid/widget/VideoView;->-set5(Landroid/widget/VideoView;I)I

    #@a
    .line 609
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@c
    invoke-static {v2}, Landroid/widget/VideoView;->-get11(Landroid/widget/VideoView;)I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x3

    #@11
    if-ne v2, v3, :cond_2

    #@13
    const/4 v1, 0x1

    #@14
    .line 610
    .local v1, "isValidState":Z
    :goto_0
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@16
    invoke-static {v2}, Landroid/widget/VideoView;->-get13(Landroid/widget/VideoView;)I

    #@19
    move-result v2

    #@1a
    if-ne v2, p3, :cond_3

    #@1c
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@1e
    invoke-static {v2}, Landroid/widget/VideoView;->-get12(Landroid/widget/VideoView;)I

    #@21
    move-result v2

    #@22
    if-ne v2, p4, :cond_3

    #@24
    const/4 v0, 0x1

    #@25
    .line 611
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@27
    invoke-static {v2}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    #@2a
    move-result-object v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    if-eqz v0, :cond_1

    #@31
    .line 612
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@33
    invoke-static {v2}, Landroid/widget/VideoView;->-get8(Landroid/widget/VideoView;)I

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_0

    #@39
    .line 613
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@3b
    iget-object v3, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@3d
    invoke-static {v3}, Landroid/widget/VideoView;->-get8(Landroid/widget/VideoView;)I

    #@40
    move-result v3

    #@41
    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    #@44
    .line 615
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@46
    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    #@49
    .line 605
    :cond_1
    return-void

    #@4a
    .line 609
    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    const/4 v1, 0x0

    #@4b
    .restart local v1    # "isValidState":Z
    goto :goto_0

    #@4c
    .line 610
    :cond_3
    const/4 v0, 0x0

    #@4d
    .restart local v0    # "hasValidSize":Z
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-static {v0, p1}, Landroid/widget/VideoView;->-set6(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    #@5
    .line 622
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@7
    invoke-static {v0}, Landroid/widget/VideoView;->-wrap0(Landroid/widget/VideoView;)V

    #@a
    .line 619
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 628
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@3
    invoke-static {v0, v1}, Landroid/widget/VideoView;->-set6(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    #@6
    .line 629
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@8
    invoke-static {v0}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_0

    #@e
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@10
    invoke-static {v0}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@17
    .line 630
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #@19
    const/4 v1, 0x1

    #@1a
    invoke-static {v0, v1}, Landroid/widget/VideoView;->-wrap1(Landroid/widget/VideoView;Z)V

    #@1d
    .line 625
    return-void
.end method
