.class Landroid/media/Cea708CCWidget;
.super Landroid/media/ClosedCaptionWidget;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/media/Cea708CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCWidget$CCHandler;,
        Landroid/media/Cea708CCWidget$CCLayout;,
        Landroid/media/Cea708CCWidget$CCView;,
        Landroid/media/Cea708CCWidget$CCWindowLayout;,
        Landroid/media/Cea708CCWidget$ScaledLayout;
    }
.end annotation


# instance fields
.field private final greylist-max-o mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1028
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1029
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1032
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1033
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 1036
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1037
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1041
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1043
    new-instance v0, Landroid/media/Cea708CCWidget$CCHandler;

    iget-object v1, p0, Landroid/media/Cea708CCWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v1, Landroid/media/Cea708CCWidget$CCLayout;

    invoke-direct {v0, v1}, Landroid/media/Cea708CCWidget$CCHandler;-><init>(Landroid/media/Cea708CCWidget$CCLayout;)V

    iput-object v0, p0, Landroid/media/Cea708CCWidget;->mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;

    .line 1044
    return-void
.end method


# virtual methods
.method public greylist-max-o createCaptionLayout(Landroid/content/Context;)Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1048
    new-instance v0, Landroid/media/Cea708CCWidget$CCLayout;

    invoke-direct {v0, p1}, Landroid/media/Cea708CCWidget$CCLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public greylist-max-o emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/media/Cea708CCParser$CaptionEvent;

    .line 1053
    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mCCHandler:Landroid/media/Cea708CCWidget$CCHandler;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->processCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 1055
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/media/Cea708CCWidget;->setSize(II)V

    .line 1057
    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v0, :cond_19

    .line 1058
    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v0, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 1060
    :cond_19
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1064
    invoke-super {p0, p1}, Landroid/media/ClosedCaptionWidget;->onDraw(Landroid/graphics/Canvas;)V

    .line 1065
    iget-object v0, p0, Landroid/media/Cea708CCWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1066
    return-void
.end method
