.class Landroid/media/tv/TvView$1;
.super Ljava/lang/Object;
.source "TvView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor <init>(Landroid/media/tv/TvView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvView;

    #@0
    .prologue
    .line 107
    iput-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

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
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0, p2}, Landroid/media/tv/TvView;->-set6(Landroid/media/tv/TvView;I)I

    #@5
    .line 115
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@7
    invoke-static {v0, p3}, Landroid/media/tv/TvView;->-set12(Landroid/media/tv/TvView;I)I

    #@a
    .line 116
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@c
    invoke-static {v0, p4}, Landroid/media/tv/TvView;->-set7(Landroid/media/tv/TvView;I)I

    #@f
    .line 117
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@11
    const/4 v1, 0x1

    #@12
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-set5(Landroid/media/tv/TvView;Z)Z

    #@15
    .line 118
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@17
    iget-object v1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@19
    invoke-static {v1}, Landroid/media/tv/TvView;->-get8(Landroid/media/tv/TvView;)I

    #@1c
    move-result v1

    #@1d
    iget-object v2, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@1f
    invoke-static {v2}, Landroid/media/tv/TvView;->-get10(Landroid/media/tv/TvView;)I

    #@22
    move-result v2

    #@23
    iget-object v3, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@25
    invoke-static {v3}, Landroid/media/tv/TvView;->-get9(Landroid/media/tv/TvView;)I

    #@28
    move-result v3

    #@29
    invoke-static {v0, v1, v2, v3}, Landroid/media/tv/TvView;->-wrap1(Landroid/media/tv/TvView;III)V

    #@2c
    .line 109
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-set4(Landroid/media/tv/TvView;Landroid/view/Surface;)Landroid/view/Surface;

    #@9
    .line 124
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@b
    iget-object v1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@d
    invoke-static {v1}, Landroid/media/tv/TvView;->-get6(Landroid/media/tv/TvView;)Landroid/view/Surface;

    #@10
    move-result-object v1

    #@11
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-wrap4(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    #@14
    .line 122
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 129
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@3
    invoke-static {v0, v2}, Landroid/media/tv/TvView;->-set4(Landroid/media/tv/TvView;Landroid/view/Surface;)Landroid/view/Surface;

    #@6
    .line 130
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-set5(Landroid/media/tv/TvView;Z)Z

    #@c
    .line 131
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    #@e
    invoke-static {v0, v2}, Landroid/media/tv/TvView;->-wrap4(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    #@11
    .line 128
    return-void
.end method
