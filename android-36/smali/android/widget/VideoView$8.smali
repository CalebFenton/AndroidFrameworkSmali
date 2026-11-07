.class Landroid/widget/VideoView$8;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/VideoView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/VideoView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/VideoView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 965
    iput-object p1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .registers 3
    .param p1, "renderingWidget"    # Landroid/media/SubtitleTrack$RenderingWidget;

    .line 968
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->invalidate()V

    .line 969
    return-void
.end method
