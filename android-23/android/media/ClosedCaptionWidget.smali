.class Landroid/media/ClosedCaptionWidget;
.super Landroid/view/ViewGroup;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;
.implements Landroid/media/CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ClosedCaptionWidget$CCLineBox;,
        Landroid/media/ClosedCaptionWidget$CCLayout;,
        Landroid/media/ClosedCaptionWidget$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final TAG:Ljava/lang/String; = "ClosedCaptionWidget"

.field private static final mDummyText:Ljava/lang/String; = "1234567890123456789012345678901234"

.field private static final mTextBounds:Landroid/graphics/Rect;


# instance fields
.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

.field private mHasChangeListener:Z

.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method static synthetic -get0()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    #@0
    sget-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/ClosedCaptionWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/ClosedCaptionWidget;)Landroid/media/ClosedCaptionWidget$CCLayout;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Landroid/graphics/Rect;
    .locals 1

    #@0
    sget-object v0, Landroid/media/ClosedCaptionWidget;->mTextBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/ClosedCaptionWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1083
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    sput-object v0, Landroid/media/ClosedCaptionWidget;->mTextBounds:Landroid/graphics/Rect;

    #@7
    .line 1085
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@9
    sput-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@b
    .line 1078
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1103
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 1102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1107
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 1106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 1111
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 1193
    new-instance v0, Landroid/media/ClosedCaptionWidget$1;

    #@6
    invoke-direct {v0, p0}, Landroid/media/ClosedCaptionWidget$1;-><init>(Landroid/media/ClosedCaptionWidget;)V

    #@9
    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@b
    .line 1114
    const/4 v0, 0x1

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, v0, v1}, Landroid/media/ClosedCaptionWidget;->setLayerType(ILandroid/graphics/Paint;)V

    #@10
    .line 1116
    const-string/jumbo v0, "captioning"

    #@13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    #@19
    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@1b
    .line 1117
    sget-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@1d
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@1f
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@29
    .line 1119
    new-instance v0, Landroid/media/ClosedCaptionWidget$CCLayout;

    #@2b
    invoke-direct {v0, p1}, Landroid/media/ClosedCaptionWidget$CCLayout;-><init>(Landroid/content/Context;)V

    #@2e
    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    #@30
    .line 1120
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    #@32
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@34
    invoke-virtual {v0, v1}, Landroid/media/ClosedCaptionWidget$CCLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    #@37
    .line 1121
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    #@39
    invoke-virtual {p0, v0, v2, v2}, Landroid/media/ClosedCaptionWidget;->addView(Landroid/view/View;II)V

    #@3c
    .line 1123
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->requestLayout()V

    #@3f
    .line 1110
    return-void
.end method

.method private manageChangeListener()V
    .locals 3

    #@0
    .prologue
    .line 1202
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->isAttachedToWindow()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->getVisibility()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    .line 1203
    .local v0, "needsListener":Z
    :goto_0
    iget-boolean v1, p0, Landroid/media/ClosedCaptionWidget;->mHasChangeListener:Z

    #@f
    if-eq v1, v0, :cond_0

    #@11
    .line 1204
    iput-boolean v0, p0, Landroid/media/ClosedCaptionWidget;->mHasChangeListener:Z

    #@13
    .line 1206
    if-eqz v0, :cond_2

    #@15
    .line 1207
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@17
    iget-object v2, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@19
    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    #@1c
    .line 1201
    :cond_0
    :goto_1
    return-void

    #@1d
    .line 1202
    .end local v0    # "needsListener":Z
    :cond_1
    const/4 v0, 0x0

    #@1e
    .restart local v0    # "needsListener":Z
    goto :goto_0

    #@1f
    .line 1209
    :cond_2
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    #@21
    iget-object v2, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@23
    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    #@26
    goto :goto_1
.end method


# virtual methods
.method public getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    #@0
    .prologue
    .line 1176
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 1153
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 1155
    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    #@6
    .line 1152
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 1160
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 1162
    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    #@6
    .line 1159
    return-void
.end method

.method public onDisplayChanged([Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "styledTexts"    # [Landroid/text/SpannableStringBuilder;

    #@0
    .prologue
    .line 1167
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    #@2
    invoke-virtual {v0, p1}, Landroid/media/ClosedCaptionWidget$CCLayout;->update([Landroid/text/SpannableStringBuilder;)V

    #@5
    .line 1169
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1170
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@b
    invoke-interface {v0, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    #@e
    .line 1166
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1187
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    #@2
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/media/ClosedCaptionWidget$CCLayout;->layout(IIII)V

    #@5
    .line 1186
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1181
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    #@3
    .line 1182
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/media/ClosedCaptionWidget$CCLayout;->measure(II)V

    #@8
    .line 1180
    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@0
    .prologue
    .line 1128
    iput-object p1, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@2
    .line 1127
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    #@2
    const/4 v2, 0x0

    #@3
    .line 1133
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@6
    move-result v1

    #@7
    .line 1134
    .local v1, "widthSpec":I
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a
    move-result v0

    #@b
    .line 1136
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/ClosedCaptionWidget;->measure(II)V

    #@e
    .line 1137
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/ClosedCaptionWidget;->layout(IIII)V

    #@11
    .line 1132
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 1142
    if-eqz p1, :cond_0

    #@2
    .line 1143
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget;->setVisibility(I)V

    #@6
    .line 1148
    :goto_0
    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    #@9
    .line 1141
    return-void

    #@a
    .line 1145
    :cond_0
    const/16 v0, 0x8

    #@c
    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget;->setVisibility(I)V

    #@f
    goto :goto_0
.end method
