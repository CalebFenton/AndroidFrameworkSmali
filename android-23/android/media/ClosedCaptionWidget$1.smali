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
.field final synthetic this$0:Landroid/media/ClosedCaptionWidget;


# direct methods
.method constructor <init>(Landroid/media/ClosedCaptionWidget;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/ClosedCaptionWidget;

    #@0
    .prologue
    .line 1193
    iput-object p1, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    #@2
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2
    .param p1, "userStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@0
    .prologue
    .line 1196
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    #@2
    invoke-static {}, Landroid/media/ClosedCaptionWidget;->-get0()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@9
    move-result-object v1

    #@a
    invoke-static {v0, v1}, Landroid/media/ClosedCaptionWidget;->-set0(Landroid/media/ClosedCaptionWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@d
    .line 1197
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    #@f
    invoke-static {v0}, Landroid/media/ClosedCaptionWidget;->-get2(Landroid/media/ClosedCaptionWidget;)Landroid/media/ClosedCaptionWidget$CCLayout;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget$1;->this$0:Landroid/media/ClosedCaptionWidget;

    #@15
    invoke-static {v1}, Landroid/media/ClosedCaptionWidget;->-get1(Landroid/media/ClosedCaptionWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Landroid/media/ClosedCaptionWidget$CCLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    #@1c
    .line 1195
    return-void
.end method
