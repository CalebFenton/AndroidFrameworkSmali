.class Landroid/media/Cea608CCWidget;
.super Landroid/media/ClosedCaptionWidget;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/media/Cea608CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea608CCWidget$CCLayout;,
        Landroid/media/Cea608CCWidget$CCLineBox;
    }
.end annotation


# static fields
.field private static final greylist-max-o mDummyText:Ljava/lang/String; = "1234567890123456789012345678901234"

.field private static final greylist-max-o mTextBounds:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmTextBounds()Landroid/graphics/Rect;
    .registers 1

    sget-object v0, Landroid/media/Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/media/Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea608CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1227
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1230
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea608CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1231
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 1234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea608CCWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1235
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1239
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1240
    return-void
.end method


# virtual methods
.method public greylist-max-o createCaptionLayout(Landroid/content/Context;)Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1244
    new-instance v0, Landroid/media/Cea608CCWidget$CCLayout;

    invoke-direct {v0, p1}, Landroid/media/Cea608CCWidget$CCLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public greylist-max-o getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 2

    .line 1258
    iget-object v0, p0, Landroid/media/Cea608CCWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method public greylist-max-o onDisplayChanged([Landroid/text/SpannableStringBuilder;)V
    .registers 3
    .param p1, "styledTexts"    # [Landroid/text/SpannableStringBuilder;

    .line 1249
    iget-object v0, p0, Landroid/media/Cea608CCWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/media/Cea608CCWidget$CCLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea608CCWidget$CCLayout;->update([Landroid/text/SpannableStringBuilder;)V

    .line 1251
    iget-object v0, p0, Landroid/media/Cea608CCWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v0, :cond_10

    .line 1252
    iget-object v0, p0, Landroid/media/Cea608CCWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v0, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 1254
    :cond_10
    return-void
.end method
