.class Landroid/media/tv/TvView$3;
.super Landroid/view/SurfaceView;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvView;->resetSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor <init>(Landroid/media/tv/TvView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvView;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/util/AttributeSet;
    .param p4, "$anonymous2"    # I

    #@0
    .prologue
    .line 736
    iput-object p1, p0, Landroid/media/tv/TvView$3;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-direct {p0, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method


# virtual methods
.method protected updateWindow(ZZ)V
    .locals 1
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    #@0
    .prologue
    .line 739
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@3
    .line 740
    iget-object v0, p0, Landroid/media/tv/TvView$3;->this$0:Landroid/media/tv/TvView;

    #@5
    invoke-static {v0}, Landroid/media/tv/TvView;->-wrap3(Landroid/media/tv/TvView;)V

    #@8
    .line 738
    return-void
.end method
