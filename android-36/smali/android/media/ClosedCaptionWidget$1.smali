.class Landroid/media/ClosedCaptionWidget$1;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ClosedCaptionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/ClosedCaptionWidget;


# direct methods
.method constructor blacklist <init>(Landroid/media/ClosedCaptionWidget;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/ClosedCaptionWidget;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFontScaleChanged(F)V
    .registers 3
    .param p1, "fontScale"    # F

    .line 233
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    iget-object v0, v0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    invoke-interface {v0, p1}, Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;->setFontScale(F)V

    .line 234
    return-void
.end method

.method public whitelist onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 4
    .param p1, "userStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 227
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    invoke-static {}, Landroid/media/ClosedCaptionWidget;->-$$Nest$sfgetDEFAULT_CAPTION_STYLE()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    iput-object v1, v0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 228
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    iget-object v0, v0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    iget-object v1, v1, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-interface {v0, v1}, Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 229
    return-void
.end method
