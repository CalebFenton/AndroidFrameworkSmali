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
.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2120
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    sput-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@4
    .line 2119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2123
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 2122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 2127
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 2126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 2131
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 2130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 2136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 2135
    return-void
.end method


# virtual methods
.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@0
    .prologue
    .line 2140
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2141
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@8
    .line 2140
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    #@b
    .line 2142
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 2143
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@13
    .line 2142
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    #@16
    .line 2144
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 2145
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@1e
    .line 2144
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    #@21
    .line 2146
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 2147
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@29
    .line 2146
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    #@2c
    .line 2148
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    #@33
    .line 2139
    return-void

    #@34
    .line 2141
    :cond_0
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@36
    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@38
    goto :goto_0

    #@39
    .line 2143
    :cond_1
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@3b
    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@3d
    goto :goto_1

    #@3e
    .line 2145
    :cond_2
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@40
    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@42
    goto :goto_2

    #@43
    .line 2147
    :cond_3
    sget-object v0, Landroid/media/Cea708CCWidget$CCView;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@45
    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@47
    goto :goto_3
.end method
