.class Landroid/media/tv/interactive/TvInteractiveAppView$2;
.super Landroid/view/SurfaceView;
.source "TvInteractiveAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppView;->resetSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 312
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected blacklist updateSurface()V
    .registers 2

    .line 315
    invoke-super {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 316
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$mrelayoutSessionMediaView(Landroid/media/tv/interactive/TvInteractiveAppView;)V

    .line 317
    return-void
.end method
