.class Landroid/media/Cea708CCWidget$CCWindowLayout;
.super Landroid/widget/RelativeLayout;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCWindowLayout"
.end annotation


# static fields
.field private static final ANCHOR_HORIZONTAL_16_9_MAX:I = 0xd1

.field private static final ANCHOR_HORIZONTAL_MODE_CENTER:I = 0x1

.field private static final ANCHOR_HORIZONTAL_MODE_LEFT:I = 0x0

.field private static final ANCHOR_HORIZONTAL_MODE_RIGHT:I = 0x2

.field private static final ANCHOR_MODE_DIVIDER:I = 0x3

.field private static final ANCHOR_RELATIVE_POSITIONING_MAX:I = 0x63

.field private static final ANCHOR_VERTICAL_MAX:I = 0x4a

.field private static final ANCHOR_VERTICAL_MODE_BOTTOM:I = 0x2

.field private static final ANCHOR_VERTICAL_MODE_CENTER:I = 0x1

.field private static final ANCHOR_VERTICAL_MODE_TOP:I = 0x0

.field private static final MAX_COLUMN_COUNT_16_9:I = 0x2a

.field private static final PROPORTION_PEN_SIZE_LARGE:F = 1.25f

.field private static final PROPORTION_PEN_SIZE_SMALL:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "CCWindowLayout"


# instance fields
.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

.field private mCCView:Landroid/media/Cea708CCWidget$CCView;

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private mCaptionWindowId:I

.field private final mCharacterStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mFontScale:F

.field private mLastCaptionLayoutHeight:I

.field private mLastCaptionLayoutWidth:I

.field private mRow:I

.field private mRowLimit:I

.field private mTextSize:F

.field private mWidestChar:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1694
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 1693
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1698
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 1697
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 1702
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 1701
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 1707
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 1682
    const/4 v2, 0x0

    #@5
    iput v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    #@7
    .line 1683
    new-instance v2, Landroid/text/SpannableStringBuilder;

    #@9
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@c
    iput-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@e
    .line 1684
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    #@15
    .line 1686
    const/4 v2, -0x1

    #@16
    iput v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    #@18
    .line 1710
    new-instance v2, Landroid/media/Cea708CCWidget$CCView;

    #@1a
    invoke-direct {v2, p1}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;)V

    #@1d
    iput-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@1f
    .line 1711
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #@21
    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@24
    .line 1713
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@26
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@29
    .line 1717
    const-string/jumbo v2, "captioning"

    #@2c
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    #@32
    .line 1718
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    #@35
    move-result v2

    #@36
    iput v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    #@38
    .line 1719
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {p0, v2}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    #@3f
    .line 1720
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@41
    const-string/jumbo v3, ""

    #@44
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    #@47
    .line 1721
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    #@4a
    .line 1706
    return-void
.end method

.method private getScreenColumnCount()I
    .locals 1

    #@0
    .prologue
    .line 2042
    const/16 v0, 0x2a

    #@2
    return v0
.end method

.method private updateText(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "appended"    # Z

    #@0
    .prologue
    .line 2067
    if-nez p2, :cond_0

    #@2
    .line 2068
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@4
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->clear()V

    #@7
    .line 2070
    :cond_0
    if-eqz p1, :cond_1

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v9

    #@d
    if-lez v9, :cond_1

    #@f
    .line 2071
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@11
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    #@14
    move-result v4

    #@15
    .line 2072
    .local v4, "length":I
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@17
    invoke-virtual {v9, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@1a
    .line 2073
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    #@1c
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "characterStyle$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v9

    #@24
    if-eqz v9, :cond_1

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/text/style/CharacterStyle;

    #@2c
    .line 2074
    .local v0, "characterStyle":Landroid/text/style/CharacterStyle;
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@2e
    iget-object v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@30
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    #@33
    move-result v10

    #@34
    .line 2075
    const/16 v11, 0x21

    #@36
    .line 2074
    invoke-virtual {v9, v0, v4, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@39
    goto :goto_0

    #@3a
    .line 2078
    .end local v0    # "characterStyle":Landroid/text/style/CharacterStyle;
    .end local v1    # "characterStyle$iterator":Ljava/util/Iterator;
    .end local v4    # "length":I
    :cond_1
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@3c
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v9

    #@40
    const-string/jumbo v10, "\n"

    #@43
    invoke-static {v9, v10}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    .line 2082
    .local v5, "lines":[Ljava/lang/String;
    const-string/jumbo v9, "\n"

    #@4a
    .line 2083
    array-length v10, v5

    #@4b
    iget v11, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    #@4d
    add-int/lit8 v11, v11, 0x1

    #@4f
    sub-int/2addr v10, v11

    #@50
    const/4 v11, 0x0

    #@51
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@54
    move-result v10

    #@55
    array-length v11, v5

    #@56
    .line 2082
    invoke-static {v5, v10, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@59
    move-result-object v10

    #@5a
    invoke-static {v9, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    .line 2084
    .local v8, "truncatedText":Ljava/lang/String;
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@60
    iget-object v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@62
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    #@65
    move-result v10

    #@66
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@69
    move-result v11

    #@6a
    sub-int/2addr v10, v11

    #@6b
    const/4 v11, 0x0

    #@6c
    invoke-virtual {v9, v11, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@6f
    .line 2087
    const/4 v6, 0x0

    #@70
    .local v6, "start":I
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@72
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    #@75
    move-result v9

    #@76
    add-int/lit8 v3, v9, -0x1

    #@78
    .line 2088
    .local v3, "last":I
    move v2, v3

    #@79
    .line 2089
    .local v2, "end":I
    :goto_1
    if-gt v6, v3, :cond_2

    #@7b
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@7d
    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@80
    move-result v9

    #@81
    const/16 v10, 0x20

    #@83
    if-gt v9, v10, :cond_2

    #@85
    .line 2090
    add-int/lit8 v6, v6, 0x1

    #@87
    goto :goto_1

    #@88
    .line 2092
    :cond_2
    :goto_2
    if-lt v2, v6, :cond_3

    #@8a
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@8c
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@8f
    move-result v9

    #@90
    const/16 v10, 0x20

    #@92
    if-gt v9, v10, :cond_3

    #@94
    .line 2093
    add-int/lit8 v2, v2, -0x1

    #@96
    goto :goto_2

    #@97
    .line 2095
    :cond_3
    if-nez v6, :cond_4

    #@99
    if-ne v2, v3, :cond_4

    #@9b
    .line 2096
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@9d
    iget-object v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@9f
    invoke-virtual {v9, v10}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    #@a2
    .line 2066
    :goto_3
    return-void

    #@a3
    .line 2098
    :cond_4
    new-instance v7, Landroid/text/SpannableStringBuilder;

    #@a5
    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@a8
    .line 2099
    .local v7, "trim":Landroid/text/SpannableStringBuilder;
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@aa
    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@ad
    .line 2100
    if-ge v2, v3, :cond_5

    #@af
    .line 2101
    add-int/lit8 v9, v2, 0x1

    #@b1
    add-int/lit8 v10, v3, 0x1

    #@b3
    invoke-virtual {v7, v9, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@b6
    .line 2103
    :cond_5
    if-lez v6, :cond_6

    #@b8
    .line 2104
    const/4 v9, 0x0

    #@b9
    invoke-virtual {v7, v9, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@bc
    .line 2106
    :cond_6
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@be
    invoke-virtual {v9, v7}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    #@c1
    goto :goto_3
.end method

.method private updateTextSize()V
    .locals 12

    #@0
    .prologue
    const v11, 0x3c23d70a    # 0.01f

    #@3
    .line 2013
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@5
    if-nez v9, :cond_0

    #@7
    return-void

    #@8
    .line 2016
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 2017
    .local v7, "widestTextBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    #@10
    move-result v3

    #@11
    .line 2018
    .local v3, "screenColumnCount":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@14
    .line 2019
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    #@16
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 2018
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2021
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 2022
    .local v6, "widestText":Ljava/lang/String;
    new-instance v2, Landroid/graphics/Paint;

    #@22
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@25
    .line 2023
    .local v2, "paint":Landroid/graphics/Paint;
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@27
    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    #@2a
    move-result-object v9

    #@2b
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@2e
    .line 2024
    const/4 v4, 0x0

    #@2f
    .line 2025
    .local v4, "startFontSize":F
    const/high16 v0, 0x437f0000    # 255.0f

    #@31
    .line 2026
    .local v0, "endFontSize":F
    :goto_1
    cmpg-float v9, v4, v0

    #@33
    if-gez v9, :cond_3

    #@35
    .line 2027
    add-float v9, v4, v0

    #@37
    const/high16 v10, 0x40000000    # 2.0f

    #@39
    div-float v5, v9, v10

    #@3b
    .line 2028
    .local v5, "testTextSize":F
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    #@3e
    .line 2029
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    #@41
    move-result v8

    #@42
    .line 2030
    .local v8, "width":F
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@44
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    #@47
    move-result v9

    #@48
    int-to-float v9, v9

    #@49
    const v10, 0x3f4ccccd    # 0.8f

    #@4c
    mul-float/2addr v9, v10

    #@4d
    cmpl-float v9, v9, v8

    #@4f
    if-lez v9, :cond_2

    #@51
    .line 2031
    add-float v4, v5, v11

    #@53
    goto :goto_1

    #@54
    .line 2033
    :cond_2
    sub-float v0, v5, v11

    #@56
    goto :goto_1

    #@57
    .line 2036
    .end local v5    # "testTextSize":F
    .end local v8    # "width":F
    :cond_3
    iget v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    #@59
    mul-float/2addr v9, v0

    #@5a
    iput v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    #@5c
    .line 2037
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@5e
    iget v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    #@60
    invoke-virtual {v9, v10}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    #@63
    .line 2012
    return-void
.end method

.method private updateWidestChar()V
    .locals 9

    #@0
    .prologue
    .line 1997
    new-instance v4, Landroid/graphics/Paint;

    #@2
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    #@5
    .line 1998
    .local v4, "paint":Landroid/graphics/Paint;
    iget-object v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@7
    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    #@a
    move-result-object v6

    #@b
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@e
    .line 1999
    const-string/jumbo v6, "ISO-8859-1"

    #@11
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@14
    move-result-object v3

    #@15
    .line 2000
    .local v3, "latin1":Ljava/nio/charset/Charset;
    const/4 v5, 0x0

    #@16
    .line 2001
    .local v5, "widestCharWidth":F
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    const/16 v6, 0x100

    #@19
    if-ge v2, v6, :cond_1

    #@1b
    .line 2002
    new-instance v0, Ljava/lang/String;

    #@1d
    const/4 v6, 0x1

    #@1e
    new-array v6, v6, [B

    #@20
    int-to-byte v7, v2

    #@21
    const/4 v8, 0x0

    #@22
    aput-byte v7, v6, v8

    #@24
    invoke-direct {v0, v6, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@27
    .line 2003
    .local v0, "ch":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    #@2a
    move-result v1

    #@2b
    .line 2004
    .local v1, "charWidth":F
    cmpg-float v6, v5, v1

    #@2d
    if-gez v6, :cond_0

    #@2f
    .line 2005
    move v5, v1

    #@30
    .line 2006
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    #@32
    .line 2001
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 2009
    .end local v0    # "ch":Ljava/lang/String;
    .end local v1    # "charWidth":F
    :cond_1
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    #@38
    .line 1996
    return-void
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2058
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    #@4
    .line 2057
    return-void
.end method

.method public clear()V
    .locals 0

    #@0
    .prologue
    .line 1743
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->clearText()V

    #@3
    .line 1744
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    #@6
    .line 1742
    return-void
.end method

.method public clearText()V
    .locals 2

    #@0
    .prologue
    .line 2062
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    #@2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    #@5
    .line 2063
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@7
    const-string/jumbo v1, ""

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    #@d
    .line 2061
    return-void
.end method

.method public getCaptionWindowId()I
    .locals 1

    #@0
    .prologue
    .line 1735
    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    #@2
    return v0
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 1753
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    #@4
    .line 1754
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    #@7
    .line 1752
    return-void
.end method

.method public initWindow(Landroid/media/Cea708CCWidget$CCLayout;Landroid/media/Cea708CCParser$CaptionWindow;)V
    .locals 22
    .param p1, "ccLayout"    # Landroid/media/Cea708CCWidget$CCLayout;
    .param p2, "captionWindow"    # Landroid/media/Cea708CCParser$CaptionWindow;

    #@0
    .prologue
    .line 1865
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@4
    move-object/from16 v19, v0

    #@6
    move-object/from16 v0, v19

    #@8
    move-object/from16 v1, p1

    #@a
    if-eq v0, v1, :cond_1

    #@c
    .line 1866
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@10
    move-object/from16 v19, v0

    #@12
    if-eqz v19, :cond_0

    #@14
    .line 1867
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@18
    move-object/from16 v19, v0

    #@1a
    move-object/from16 v0, v19

    #@1c
    move-object/from16 v1, p0

    #@1e
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@21
    .line 1869
    :cond_0
    move-object/from16 v0, p1

    #@23
    move-object/from16 v1, p0

    #@25
    iput-object v0, v1, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@27
    .line 1870
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@2b
    move-object/from16 v19, v0

    #@2d
    move-object/from16 v0, v19

    #@2f
    move-object/from16 v1, p0

    #@31
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@34
    .line 1871
    invoke-direct/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    #@37
    .line 1875
    :cond_1
    move-object/from16 v0, p2

    #@39
    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorVertical:I

    #@3b
    move/from16 v19, v0

    #@3d
    move/from16 v0, v19

    #@3f
    int-to-float v0, v0

    #@40
    move/from16 v20, v0

    #@42
    .line 1876
    move-object/from16 v0, p2

    #@44
    iget-boolean v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    #@46
    move/from16 v19, v0

    #@48
    if-eqz v19, :cond_6

    #@4a
    .line 1877
    const/16 v19, 0x63

    #@4c
    .line 1876
    :goto_0
    move/from16 v0, v19

    #@4e
    int-to-float v0, v0

    #@4f
    move/from16 v19, v0

    #@51
    .line 1875
    div-float v14, v20, v19

    #@53
    .line 1880
    .local v14, "scaleRow":F
    move-object/from16 v0, p2

    #@55
    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    #@57
    move/from16 v19, v0

    #@59
    move/from16 v0, v19

    #@5b
    int-to-float v0, v0

    #@5c
    move/from16 v20, v0

    #@5e
    .line 1881
    move-object/from16 v0, p2

    #@60
    iget-boolean v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    #@62
    move/from16 v19, v0

    #@64
    if-eqz v19, :cond_7

    #@66
    const/16 v19, 0x63

    #@68
    :goto_1
    move/from16 v0, v19

    #@6a
    int-to-float v0, v0

    #@6b
    move/from16 v19, v0

    #@6d
    .line 1880
    div-float v11, v20, v19

    #@6f
    .line 1886
    .local v11, "scaleCol":F
    const/16 v19, 0x0

    #@71
    cmpg-float v19, v14, v19

    #@73
    if-ltz v19, :cond_2

    #@75
    const/high16 v19, 0x3f800000    # 1.0f

    #@77
    cmpl-float v19, v14, v19

    #@79
    if-lez v19, :cond_3

    #@7b
    .line 1887
    :cond_2
    const-string/jumbo v19, "CCWindowLayout"

    #@7e
    new-instance v20, Ljava/lang/StringBuilder;

    #@80
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v21, "The vertical position of the anchor point should be at the range of 0 and 1 but "

    #@86
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v20

    #@8a
    move-object/from16 v0, v20

    #@8c
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v20

    #@90
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v20

    #@94
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 1889
    const/16 v19, 0x0

    #@99
    const/high16 v20, 0x3f800000    # 1.0f

    #@9b
    move/from16 v0, v20

    #@9d
    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    #@a0
    move-result v20

    #@a1
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    #@a4
    move-result v14

    #@a5
    .line 1891
    :cond_3
    const/16 v19, 0x0

    #@a7
    cmpg-float v19, v11, v19

    #@a9
    if-ltz v19, :cond_4

    #@ab
    const/high16 v19, 0x3f800000    # 1.0f

    #@ad
    cmpl-float v19, v11, v19

    #@af
    if-lez v19, :cond_5

    #@b1
    .line 1892
    :cond_4
    const-string/jumbo v19, "CCWindowLayout"

    #@b4
    new-instance v20, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v21, "The horizontal position of the anchor point should be at the range of 0 and 1 but "

    #@bc
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v20

    #@c0
    move-object/from16 v0, v20

    #@c2
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v20

    #@c6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v20

    #@ca
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@cd
    .line 1894
    const/16 v19, 0x0

    #@cf
    const/high16 v20, 0x3f800000    # 1.0f

    #@d1
    move/from16 v0, v20

    #@d3
    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    #@d6
    move-result v20

    #@d7
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    #@da
    move-result v11

    #@db
    .line 1896
    :cond_5
    const/16 v5, 0x11

    #@dd
    .line 1897
    .local v5, "gravity":I
    move-object/from16 v0, p2

    #@df
    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    #@e1
    move/from16 v19, v0

    #@e3
    rem-int/lit8 v7, v19, 0x3

    #@e5
    .line 1898
    .local v7, "horizontalMode":I
    move-object/from16 v0, p2

    #@e7
    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    #@e9
    move/from16 v19, v0

    #@eb
    div-int/lit8 v17, v19, 0x3

    #@ed
    .line 1899
    .local v17, "verticalMode":I
    const/16 v16, 0x0

    #@ef
    .line 1900
    .local v16, "scaleStartRow":F
    const/high16 v13, 0x3f800000    # 1.0f

    #@f1
    .line 1901
    .local v13, "scaleEndRow":F
    const/4 v15, 0x0

    #@f2
    .line 1902
    .local v15, "scaleStartCol":F
    const/high16 v12, 0x3f800000    # 1.0f

    #@f4
    .line 1903
    .local v12, "scaleEndCol":F
    packed-switch v7, :pswitch_data_0

    #@f7
    .line 1954
    :goto_2
    packed-switch v17, :pswitch_data_1

    #@fa
    .line 1972
    :goto_3
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@fe
    move-object/from16 v19, v0

    #@100
    new-instance v20, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    #@102
    move-object/from16 v0, v20

    #@104
    move/from16 v1, v16

    #@106
    invoke-direct {v0, v1, v13, v15, v12}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(FFFF)V

    #@109
    move-object/from16 v0, v19

    #@10b
    move-object/from16 v1, p0

    #@10d
    move-object/from16 v2, v20

    #@10f
    invoke-virtual {v0, v1, v2}, Landroid/media/Cea708CCWidget$CCLayout;->addOrUpdateViewToSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V

    #@112
    .line 1974
    move-object/from16 v0, p2

    #@114
    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    #@116
    move/from16 v19, v0

    #@118
    move-object/from16 v0, p0

    #@11a
    move/from16 v1, v19

    #@11c
    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionWindowId(I)V

    #@11f
    .line 1975
    move-object/from16 v0, p2

    #@121
    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->rowCount:I

    #@123
    move/from16 v19, v0

    #@125
    move-object/from16 v0, p0

    #@127
    move/from16 v1, v19

    #@129
    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setRowLimit(I)V

    #@12c
    .line 1976
    move-object/from16 v0, p0

    #@12e
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    #@131
    .line 1977
    move-object/from16 v0, p2

    #@133
    iget-boolean v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->visible:Z

    #@135
    move/from16 v19, v0

    #@137
    if-eqz v19, :cond_b

    #@139
    .line 1978
    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    #@13c
    .line 1864
    :goto_4
    return-void

    #@13d
    .line 1877
    .end local v5    # "gravity":I
    .end local v7    # "horizontalMode":I
    .end local v11    # "scaleCol":F
    .end local v12    # "scaleEndCol":F
    .end local v13    # "scaleEndRow":F
    .end local v14    # "scaleRow":F
    .end local v15    # "scaleStartCol":F
    .end local v16    # "scaleStartRow":F
    .end local v17    # "verticalMode":I
    :cond_6
    const/16 v19, 0x4a

    #@13f
    goto/16 :goto_0

    #@141
    .line 1882
    .restart local v14    # "scaleRow":F
    :cond_7
    const/16 v19, 0xd1

    #@143
    goto/16 :goto_1

    #@145
    .line 1905
    .restart local v5    # "gravity":I
    .restart local v7    # "horizontalMode":I
    .restart local v11    # "scaleCol":F
    .restart local v12    # "scaleEndCol":F
    .restart local v13    # "scaleEndRow":F
    .restart local v15    # "scaleStartCol":F
    .restart local v16    # "scaleStartRow":F
    .restart local v17    # "verticalMode":I
    :pswitch_0
    const/4 v5, 0x3

    #@146
    .line 1906
    move-object/from16 v0, p0

    #@148
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@14a
    move-object/from16 v19, v0

    #@14c
    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@14e
    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    #@151
    .line 1907
    move v15, v11

    #@152
    .line 1908
    goto :goto_2

    #@153
    .line 1910
    :pswitch_1
    const/high16 v19, 0x3f800000    # 1.0f

    #@155
    sub-float v19, v19, v11

    #@157
    move/from16 v0, v19

    #@159
    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    #@15c
    move-result v4

    #@15d
    .line 1914
    .local v4, "gap":F
    move-object/from16 v0, p2

    #@15f
    iget v0, v0, Landroid/media/Cea708CCParser$CaptionWindow;->columnCount:I

    #@161
    move/from16 v19, v0

    #@163
    add-int/lit8 v3, v19, 0x1

    #@165
    .line 1915
    .local v3, "columnCount":I
    invoke-direct/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    #@168
    move-result v19

    #@169
    move/from16 v0, v19

    #@16b
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@16e
    move-result v3

    #@16f
    .line 1916
    new-instance v18, Ljava/lang/StringBuilder;

    #@171
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    .line 1917
    .local v18, "widestTextBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    #@175
    .local v8, "i":I
    :goto_5
    if-ge v8, v3, :cond_8

    #@177
    .line 1918
    move-object/from16 v0, p0

    #@179
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    #@17b
    move-object/from16 v19, v0

    #@17d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    .line 1917
    add-int/lit8 v8, v8, 0x1

    #@182
    goto :goto_5

    #@183
    .line 1920
    :cond_8
    new-instance v10, Landroid/graphics/Paint;

    #@185
    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    #@188
    .line 1921
    .local v10, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    #@18a
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@18c
    move-object/from16 v19, v0

    #@18e
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    #@191
    move-result-object v19

    #@192
    move-object/from16 v0, v19

    #@194
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@197
    .line 1922
    move-object/from16 v0, p0

    #@199
    iget v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    #@19b
    move/from16 v19, v0

    #@19d
    move/from16 v0, v19

    #@19f
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    #@1a2
    .line 1923
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v19

    #@1a6
    move-object/from16 v0, v19

    #@1a8
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    #@1ab
    move-result v9

    #@1ac
    .line 1924
    .local v9, "maxWindowWidth":F
    move-object/from16 v0, p0

    #@1ae
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@1b0
    move-object/from16 v19, v0

    #@1b2
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    #@1b5
    move-result v19

    #@1b6
    if-lez v19, :cond_9

    #@1b8
    .line 1925
    const/high16 v19, 0x40000000    # 2.0f

    #@1ba
    div-float v19, v9, v19

    #@1bc
    move-object/from16 v0, p0

    #@1be
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@1c0
    move-object/from16 v20, v0

    #@1c2
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    #@1c5
    move-result v20

    #@1c6
    move/from16 v0, v20

    #@1c8
    int-to-float v0, v0

    #@1c9
    move/from16 v20, v0

    #@1cb
    const v21, 0x3f4ccccd    # 0.8f

    #@1ce
    mul-float v20, v20, v21

    #@1d0
    div-float v6, v19, v20

    #@1d2
    .line 1926
    .local v6, "halfMaxWidthScale":F
    :goto_6
    const/16 v19, 0x0

    #@1d4
    cmpl-float v19, v6, v19

    #@1d6
    if-lez v19, :cond_a

    #@1d8
    cmpg-float v19, v6, v11

    #@1da
    if-gez v19, :cond_a

    #@1dc
    .line 1930
    const/4 v5, 0x3

    #@1dd
    .line 1931
    move-object/from16 v0, p0

    #@1df
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@1e1
    move-object/from16 v19, v0

    #@1e3
    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@1e5
    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    #@1e8
    .line 1932
    sub-float v15, v11, v6

    #@1ea
    .line 1933
    const/high16 v12, 0x3f800000    # 1.0f

    #@1ec
    .line 1926
    goto/16 :goto_2

    #@1ee
    .line 1925
    .end local v6    # "halfMaxWidthScale":F
    :cond_9
    const/4 v6, 0x0

    #@1ef
    goto :goto_6

    #@1f0
    .line 1942
    .restart local v6    # "halfMaxWidthScale":F
    :cond_a
    const/4 v5, 0x1

    #@1f1
    .line 1943
    move-object/from16 v0, p0

    #@1f3
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@1f5
    move-object/from16 v19, v0

    #@1f7
    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@1f9
    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    #@1fc
    .line 1944
    sub-float v15, v11, v4

    #@1fe
    .line 1945
    add-float v12, v11, v4

    #@200
    goto/16 :goto_2

    #@202
    .line 1949
    .end local v3    # "columnCount":I
    .end local v4    # "gap":F
    .end local v6    # "halfMaxWidthScale":F
    .end local v8    # "i":I
    .end local v9    # "maxWindowWidth":F
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v18    # "widestTextBuilder":Ljava/lang/StringBuilder;
    :pswitch_2
    const/4 v5, 0x5

    #@203
    .line 1950
    move-object/from16 v0, p0

    #@205
    iget-object v0, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@207
    move-object/from16 v19, v0

    #@209
    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@20b
    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    #@20e
    .line 1951
    move v12, v11

    #@20f
    .line 1952
    goto/16 :goto_2

    #@211
    .line 1956
    :pswitch_3
    or-int/lit8 v5, v5, 0x30

    #@213
    .line 1957
    move/from16 v16, v14

    #@215
    .line 1958
    goto/16 :goto_3

    #@217
    .line 1960
    :pswitch_4
    or-int/lit8 v5, v5, 0x10

    #@219
    .line 1963
    const/high16 v19, 0x3f800000    # 1.0f

    #@21b
    sub-float v19, v19, v14

    #@21d
    move/from16 v0, v19

    #@21f
    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    #@222
    move-result v4

    #@223
    .line 1964
    .restart local v4    # "gap":F
    sub-float v16, v14, v4

    #@225
    .line 1965
    add-float v13, v14, v4

    #@227
    .line 1966
    goto/16 :goto_3

    #@229
    .line 1968
    .end local v4    # "gap":F
    :pswitch_5
    or-int/lit8 v5, v5, 0x50

    #@22b
    .line 1969
    move v13, v14

    #@22c
    .line 1970
    goto/16 :goto_3

    #@22e
    .line 1980
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    #@231
    goto/16 :goto_4

    #@233
    .line 1903
    nop

    #@234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    #@23e
    .line 1954
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    #@0
    .prologue
    .line 1987
    sub-int v1, p4, p2

    #@2
    .line 1988
    .local v1, "width":I
    sub-int v0, p5, p3

    #@4
    .line 1989
    .local v0, "height":I
    iget v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    #@6
    if-ne v1, v2, :cond_0

    #@8
    iget v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    #@a
    if-eq v0, v2, :cond_1

    #@c
    .line 1990
    :cond_0
    iput v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    #@e
    .line 1991
    iput v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    #@10
    .line 1992
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    #@13
    .line 1986
    :cond_1
    return-void
.end method

.method public removeFromCaptionView()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2046
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2047
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@7
    invoke-virtual {v0, p0}, Landroid/media/Cea708CCWidget$CCLayout;->removeViewFromSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;)V

    #@a
    .line 2048
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@c
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@f
    .line 2049
    iput-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@11
    .line 2045
    :cond_0
    return-void
.end method

.method public sendBuffer(Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1803
    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    #@3
    .line 1802
    return-void
.end method

.method public sendControl(C)V
    .locals 0
    .param p1, "control"    # C

    #@0
    .prologue
    .line 1806
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@0
    .prologue
    .line 1725
    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    .line 1726
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    #@4
    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCView;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    #@7
    .line 1724
    return-void
.end method

.method public setCaptionWindowId(I)V
    .locals 0
    .param p1, "captionWindowId"    # I

    #@0
    .prologue
    .line 1739
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    #@2
    .line 1738
    return-void
.end method

.method public setFontScale(F)V
    .locals 0
    .param p1, "fontScale"    # F

    #@0
    .prologue
    .line 1730
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    #@2
    .line 1731
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    #@5
    .line 1729
    return-void
.end method

.method public setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V
    .locals 3
    .param p1, "penAttr"    # Landroid/media/Cea708CCParser$CaptionPenAttr;

    #@0
    .prologue
    .line 1758
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 1759
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->italic:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1760
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    #@b
    new-instance v1, Landroid/text/style/StyleSpan;

    #@d
    const/4 v2, 0x2

    #@e
    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 1762
    :cond_0
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->underline:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1763
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    #@1a
    new-instance v1, Landroid/text/style/UnderlineSpan;

    #@1c
    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    #@1f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 1765
    :cond_1
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penSize:I

    #@24
    packed-switch v0, :pswitch_data_0

    #@27
    .line 1773
    :goto_0
    :pswitch_0
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penOffset:I

    #@29
    packed-switch v0, :pswitch_data_1

    #@2c
    .line 1757
    :goto_1
    :pswitch_1
    return-void

    #@2d
    .line 1767
    :pswitch_2
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    #@2f
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    #@31
    const/high16 v2, 0x3f400000    # 0.75f

    #@33
    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 1770
    :pswitch_3
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    #@3c
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    #@3e
    const/high16 v2, 0x3fa00000    # 1.25f

    #@40
    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@46
    goto :goto_0

    #@47
    .line 1775
    :pswitch_4
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    #@49
    new-instance v1, Landroid/text/style/SubscriptSpan;

    #@4b
    invoke-direct {v1}, Landroid/text/style/SubscriptSpan;-><init>()V

    #@4e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    goto :goto_1

    #@52
    .line 1778
    :pswitch_5
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    #@54
    new-instance v1, Landroid/text/style/SuperscriptSpan;

    #@56
    invoke-direct {v1}, Landroid/text/style/SuperscriptSpan;-><init>()V

    #@59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_1

    #@5d
    .line 1765
    nop

    #@5e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@68
    .line 1773
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V
    .locals 0
    .param p1, "penColor"    # Landroid/media/Cea708CCParser$CaptionPenColor;

    #@0
    .prologue
    .line 1783
    return-void
.end method

.method public setPenLocation(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 1789
    iget v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    #@2
    if-ltz v1, :cond_0

    #@4
    .line 1790
    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    #@6
    .local v0, "r":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@8
    .line 1791
    const-string/jumbo v1, "\n"

    #@b
    invoke-virtual {p0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    #@e
    .line 1790
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1794
    .end local v0    # "r":I
    :cond_0
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    #@13
    .line 1787
    return-void
.end method

.method public setRowLimit(I)V
    .locals 2
    .param p1, "rowLimit"    # I

    #@0
    .prologue
    .line 2111
    if-gez p1, :cond_0

    #@2
    .line 2112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "A rowLimit should have a positive number"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2114
    :cond_0
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    #@d
    .line 2110
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2054
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    #@4
    .line 2053
    return-void
.end method

.method public setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V
    .locals 0
    .param p1, "windowAttr"    # Landroid/media/Cea708CCParser$CaptionWindowAttr;

    #@0
    .prologue
    .line 1797
    return-void
.end method

.method public show()V
    .locals 1

    #@0
    .prologue
    .line 1748
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    #@4
    .line 1749
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    #@7
    .line 1747
    return-void
.end method
