.class Landroid/media/Cea708CCWidget$CCView;
.super Lcom/android/internal/widget/SubtitleView;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCView"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2120
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2124
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2128
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 2131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2132
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 2136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2137
    return-void
.end method


# virtual methods
.method public greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 3
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 2140
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2141
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_d

    :cond_9
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 2140
    :goto_d
    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCView;->setForegroundColor(I)V

    .line 2142
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2143
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1d

    :cond_19
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 2142
    :goto_1d
    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCView;->setBackgroundColor(I)V

    .line 2144
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2145
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_2d

    :cond_29
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 2144
    :goto_2d
    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCView;->setEdgeType(I)V

    .line 2146
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2147
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_3d

    :cond_39
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 2146
    :goto_3d
    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCView;->setEdgeColor(I)V

    .line 2148
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2149
    return-void
.end method
