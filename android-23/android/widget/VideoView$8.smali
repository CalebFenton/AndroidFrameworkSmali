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
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/VideoView;

    #@0
    .prologue
    .line 889
    iput-object p1, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/SubtitleTrack$RenderingWidget;

    #@0
    .prologue
    .line 892
    iget-object v0, p0, Landroid/widget/VideoView$8;->this$0:Landroid/widget/VideoView;

    #@2
    invoke-virtual {v0}, Landroid/widget/VideoView;->invalidate()V

    #@5
    .line 891
    return-void
.end method
