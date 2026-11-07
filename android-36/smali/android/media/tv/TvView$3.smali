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
.field final synthetic blacklist this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/tv/TvView;
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

    .line 986
    iput-object p1, p0, Landroid/media/tv/TvView$3;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected blacklist updateSurface()V
    .registers 2

    .line 989
    invoke-super {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 990
    iget-object v0, p0, Landroid/media/tv/TvView$3;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0}, Landroid/media/tv/TvView;->-$$Nest$mrelayoutSessionOverlayView(Landroid/media/tv/TvView;)V

    .line 991
    return-void
.end method
