.class Landroid/media/tv/ad/TvAdView$2;
.super Landroid/view/SurfaceView;
.source "TvAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdView;->resetSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdView;
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

    .line 281
    iput-object p1, p0, Landroid/media/tv/ad/TvAdView$2;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected blacklist updateSurface()V
    .registers 2

    .line 284
    invoke-super {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 285
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$2;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$mrelayoutSessionMediaView(Landroid/media/tv/ad/TvAdView;)V

    .line 286
    return-void
.end method
