.class Landroid/media/WebVttRenderingWidget$1;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/WebVttRenderingWidget;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttRenderingWidget;

    #@0
    .prologue
    .line 1507
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    #@2
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFontScaleChanged(F)V
    .locals 3
    .param p1, "fontScale"    # F

    #@0
    .prologue
    .line 1510
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    #@2
    invoke-virtual {v1}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    #@5
    move-result v1

    #@6
    int-to-float v1, v1

    #@7
    mul-float/2addr v1, p1

    #@8
    const v2, 0x3d5a511a    # 0.0533f

    #@b
    mul-float v0, v1, v2

    #@d
    .line 1511
    .local v0, "fontSize":F
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    #@f
    iget-object v2, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    #@11
    invoke-static {v2}, Landroid/media/WebVttRenderingWidget;->-get0(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@14
    move-result-object v2

    #@15
    invoke-static {v1, v2, v0}, Landroid/media/WebVttRenderingWidget;->-wrap1(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@18
    .line 1509
    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2
    .param p1, "userStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@0
    .prologue
    .line 1516
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    #@2
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    #@4
    invoke-static {v1}, Landroid/media/WebVttRenderingWidget;->-get1(Landroid/media/WebVttRenderingWidget;)F

    #@7
    move-result v1

    #@8
    invoke-static {v0, p1, v1}, Landroid/media/WebVttRenderingWidget;->-wrap1(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@b
    .line 1515
    return-void
.end method
