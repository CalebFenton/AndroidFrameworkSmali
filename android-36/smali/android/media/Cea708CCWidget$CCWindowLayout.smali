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
.field private static final greylist-max-o ANCHOR_HORIZONTAL_16_9_MAX:I = 0xd1

.field private static final greylist-max-o ANCHOR_HORIZONTAL_MODE_CENTER:I = 0x1

.field private static final greylist-max-o ANCHOR_HORIZONTAL_MODE_LEFT:I = 0x0

.field private static final greylist-max-o ANCHOR_HORIZONTAL_MODE_RIGHT:I = 0x2

.field private static final greylist-max-o ANCHOR_MODE_DIVIDER:I = 0x3

.field private static final greylist-max-o ANCHOR_RELATIVE_POSITIONING_MAX:I = 0x63

.field private static final greylist-max-o ANCHOR_VERTICAL_MAX:I = 0x4a

.field private static final greylist-max-o ANCHOR_VERTICAL_MODE_BOTTOM:I = 0x2

.field private static final greylist-max-o ANCHOR_VERTICAL_MODE_CENTER:I = 0x1

.field private static final greylist-max-o ANCHOR_VERTICAL_MODE_TOP:I = 0x0

.field private static final greylist-max-o MAX_COLUMN_COUNT_16_9:I = 0x2a

.field private static final greylist-max-o PROPORTION_PEN_SIZE_LARGE:F = 1.25f

.field private static final greylist-max-o PROPORTION_PEN_SIZE_SMALL:F = 0.75f

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CCWindowLayout"


# instance fields
.field private final greylist-max-o mBuilder:Landroid/text/SpannableStringBuilder;

.field private greylist-max-o mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

.field private greylist-max-o mCCView:Landroid/media/Cea708CCWidget$CCView;

.field private greylist-max-o mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private greylist-max-o mCaptionWindowId:I

.field private final greylist-max-o mCharacterStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFontScale:F

.field private greylist-max-o mLastCaptionLayoutHeight:I

.field private greylist-max-o mLastCaptionLayoutWidth:I

.field private greylist-max-o mRow:I

.field private greylist-max-o mRowLimit:I

.field private greylist-max-o mTextSize:F

.field private greylist-max-o mWidestChar:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1694
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1695
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1698
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1699
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 1702
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1703
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1707
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1682
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 1683
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 1684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 1686
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 1710
    new-instance v0, Landroid/media/Cea708CCWidget$CCView;

    invoke-direct {v0, p1}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 1711
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1713
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {p0, v1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1716
    nop

    .line 1717
    const-string v1, "captioning"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager;

    .line 1718
    .local v1, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    iput v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 1719
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 1720
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    .line 1722
    return-void
.end method

.method private greylist-max-o getScreenColumnCount()I
    .registers 2

    .line 2042
    const/16 v0, 0x2a

    return v0
.end method

.method private greylist-max-o updateText(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "appended"    # Z

    .line 2067
    if-nez p2, :cond_7

    .line 2068
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2070
    :cond_7
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3a

    .line 2071
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 2072
    .local v0, "length":I
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2073
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/style/CharacterStyle;

    .line 2074
    .local v2, "characterStyle":Landroid/text/style/CharacterStyle;
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2076
    .end local v2    # "characterStyle":Landroid/text/style/CharacterStyle;
    goto :goto_20

    .line 2078
    .end local v0    # "length":I
    :cond_3a
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2082
    .local v0, "lines":[Ljava/lang/String;
    array-length v2, v0

    iget v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    .line 2083
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v4, v0

    .line 2082
    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2084
    .local v1, "truncatedText":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2087
    const/4 v2, 0x0

    .local v2, "start":I
    iget-object v4, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 2088
    .local v4, "last":I
    move v5, v4

    .line 2089
    .local v5, "end":I
    :goto_74
    const/16 v6, 0x20

    if-gt v2, v5, :cond_83

    iget-object v7, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_83

    .line 2090
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 2092
    :cond_83
    :goto_83
    if-lt v5, v2, :cond_90

    iget-object v7, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_90

    .line 2093
    add-int/lit8 v5, v5, -0x1

    goto :goto_83

    .line 2095
    :cond_90
    if-nez v2, :cond_9c

    if-ne v5, v4, :cond_9c

    .line 2096
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    iget-object v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v6}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b9

    .line 2098
    :cond_9c
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2099
    .local v6, "trim":Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2100
    if-ge v5, v4, :cond_af

    .line 2101
    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2103
    :cond_af
    if-lez v2, :cond_b4

    .line 2104
    invoke-virtual {v6, v3, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2106
    :cond_b4
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {v3, v6}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    .line 2108
    .end local v6    # "trim":Landroid/text/SpannableStringBuilder;
    :goto_b9
    return-void
.end method

.method private greylist-max-o updateTextSize()V
    .registers 11

    .line 2013
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-nez v0, :cond_5

    return-void

    .line 2016
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2017
    .local v0, "widestTextBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v1

    .line 2018
    .local v1, "screenColumnCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_19

    .line 2019
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2021
    .end local v2    # "i":I
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2022
    .local v2, "widestText":Ljava/lang/String;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2023
    .local v3, "paint":Landroid/graphics/Paint;
    iget-object v4, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2024
    const/4 v4, 0x0

    .line 2025
    .local v4, "startFontSize":F
    const/high16 v5, 0x437f0000    # 255.0f

    .line 2026
    .local v5, "endFontSize":F
    :goto_2e
    cmpg-float v6, v4, v5

    if-gez v6, :cond_56

    .line 2027
    add-float v6, v4, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 2028
    .local v6, "testTextSize":F
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2029
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 2030
    .local v7, "width":F
    iget-object v8, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v8}, Landroid/media/Cea708CCWidget$CCLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    cmpl-float v8, v8, v7

    const v9, 0x3c23d70a    # 0.01f

    if-lez v8, :cond_53

    .line 2031
    add-float/2addr v9, v6

    move v4, v9

    .end local v4    # "startFontSize":F
    .local v9, "startFontSize":F
    goto :goto_55

    .line 2033
    .end local v9    # "startFontSize":F
    .restart local v4    # "startFontSize":F
    :cond_53
    sub-float v5, v6, v9

    .line 2035
    .end local v6    # "testTextSize":F
    .end local v7    # "width":F
    :goto_55
    goto :goto_2e

    .line 2036
    :cond_56
    iget v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    mul-float/2addr v6, v5

    iput v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    .line 2037
    iget-object v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    iget v7, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    invoke-virtual {v6, v7}, Landroid/media/Cea708CCWidget$CCView;->setTextSize(F)V

    .line 2038
    return-void
.end method

.method private greylist-max-o updateWidestChar()V
    .registers 9

    .line 1997
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1998
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1999
    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 2000
    .local v1, "latin1":Ljava/nio/charset/Charset;
    const/4 v2, 0x0

    .line 2001
    .local v2, "widestCharWidth":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    const/16 v4, 0x100

    if-ge v3, v4, :cond_34

    .line 2002
    new-instance v4, Ljava/lang/String;

    int-to-byte v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v5, v6, v7

    invoke-direct {v4, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2003
    .local v4, "ch":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 2004
    .local v5, "charWidth":F
    cmpg-float v6, v2, v5

    if-gez v6, :cond_31

    .line 2005
    move v2, v5

    .line 2006
    iput-object v4, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    .line 2001
    .end local v4    # "ch":Ljava/lang/String;
    .end local v5    # "charWidth":F
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2009
    .end local v3    # "i":I
    :cond_34
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 2010
    return-void
.end method


# virtual methods
.method public greylist-max-o appendText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 2058
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    .line 2059
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 1

    .line 1743
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->clearText()V

    .line 1744
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    .line 1745
    return-void
.end method

.method public greylist-max-o clearText()V
    .registers 3

    .line 2062
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2063
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCView;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    return-void
.end method

.method public greylist-max-o getCaptionWindowId()I
    .registers 2

    .line 1735
    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    return v0
.end method

.method public greylist-max-o hide()V
    .registers 2

    .line 1753
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setVisibility(I)V

    .line 1754
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->requestLayout()V

    .line 1755
    return-void
.end method

.method public greylist-max-o initWindow(Landroid/media/Cea708CCWidget$CCLayout;Landroid/media/Cea708CCParser$CaptionWindow;)V
    .registers 24
    .param p1, "ccLayout"    # Landroid/media/Cea708CCWidget$CCLayout;
    .param p2, "captionWindow"    # Landroid/media/Cea708CCParser$CaptionWindow;

    .line 1865
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-eq v3, v1, :cond_1d

    .line 1866
    iget-object v3, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-eqz v3, :cond_13

    .line 1867
    iget-object v3, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v3, v0}, Landroid/media/Cea708CCWidget$CCLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1869
    :cond_13
    iput-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 1870
    iget-object v3, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v3, v0}, Landroid/media/Cea708CCWidget$CCLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1871
    invoke-direct {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    .line 1875
    :cond_1d
    iget v3, v2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorVertical:I

    int-to-float v3, v3

    .line 1876
    iget-boolean v4, v2, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    const/16 v5, 0x63

    if-eqz v4, :cond_28

    .line 1877
    move v4, v5

    goto :goto_2a

    :cond_28
    const/16 v4, 0x4a

    :goto_2a
    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1880
    .local v3, "scaleRow":F
    iget v4, v2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    int-to-float v4, v4

    .line 1881
    iget-boolean v6, v2, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    if-eqz v6, :cond_34

    goto :goto_36

    .line 1882
    :cond_34
    const/16 v5, 0xd1

    :goto_36
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1886
    .local v4, "scaleCol":F
    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    const-string v7, "CCWindowLayout"

    const/high16 v8, 0x3f800000    # 1.0f

    if-ltz v6, :cond_45

    cmpl-float v6, v3, v8

    if-lez v6, :cond_63

    .line 1887
    :cond_45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The vertical position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1891
    :cond_63
    cmpg-float v6, v4, v5

    if-ltz v6, :cond_6b

    cmpl-float v6, v4, v8

    if-lez v6, :cond_89

    .line 1892
    :cond_6b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The horizontal position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1896
    :cond_89
    const/16 v6, 0x11

    .line 1897
    .local v6, "gravity":I
    iget v7, v2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    rem-int/lit8 v7, v7, 0x3

    .line 1898
    .local v7, "horizontalMode":I
    iget v9, v2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    div-int/lit8 v9, v9, 0x3

    .line 1899
    .local v9, "verticalMode":I
    const/4 v10, 0x0

    .line 1900
    .local v10, "scaleStartRow":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1901
    .local v11, "scaleEndRow":F
    const/4 v12, 0x0

    .line 1902
    .local v12, "scaleStartCol":F
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1903
    .local v13, "scaleEndCol":F
    packed-switch v7, :pswitch_data_18e

    move/from16 v19, v4

    move/from16 v18, v8

    .end local v4    # "scaleCol":F
    .local v19, "scaleCol":F
    goto/16 :goto_151

    .line 1949
    .end local v19    # "scaleCol":F
    .restart local v4    # "scaleCol":F
    :pswitch_a2
    const/4 v6, 0x5

    .line 1950
    iget-object v5, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v5, v14}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1951
    move v13, v4

    move/from16 v19, v4

    move/from16 v18, v8

    goto/16 :goto_151

    .line 1910
    :pswitch_b1
    sub-float v14, v8, v4

    invoke-static {v14, v4}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1914
    .local v14, "gap":F
    iget v15, v2, Landroid/media/Cea708CCParser$CaptionWindow;->columnCount:I

    add-int/lit8 v15, v15, 0x1

    .line 1915
    .local v15, "columnCount":I
    move/from16 v16, v5

    invoke-direct {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    move-result v5

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1916
    .end local v15    # "columnCount":I
    .local v5, "columnCount":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1917
    .local v15, "widestTextBuilder":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    move/from16 v18, v8

    move/from16 v8, v17

    .local v8, "i":I
    :goto_d0
    if-ge v8, v5, :cond_dc

    .line 1918
    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    goto :goto_d0

    .line 1920
    .end local v8    # "i":I
    :cond_dc
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1921
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v8, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v8}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1922
    iget v8, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1923
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 1924
    .local v8, "maxWindowWidth":F
    move-object/from16 v17, v1

    .end local v1    # "paint":Landroid/graphics/Paint;
    .local v17, "paint":Landroid/graphics/Paint;
    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCLayout;->getWidth()I

    move-result v1

    if-lez v1, :cond_116

    .line 1925
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v8, v1

    move/from16 v19, v1

    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v20, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v20

    div-float v1, v19, v1

    goto :goto_118

    :cond_116
    move/from16 v1, v16

    .line 1926
    .local v1, "halfMaxWidthScale":F
    :goto_118
    cmpl-float v16, v1, v16

    if-lez v16, :cond_131

    cmpg-float v16, v1, v4

    if-gez v16, :cond_131

    .line 1930
    const/4 v6, 0x3

    .line 1931
    move/from16 v16, v1

    .end local v1    # "halfMaxWidthScale":F
    .local v16, "halfMaxWidthScale":F
    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    move/from16 v19, v4

    .end local v4    # "scaleCol":F
    .restart local v19    # "scaleCol":F
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v4}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1932
    sub-float v12, v19, v16

    .line 1933
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_151

    .line 1926
    .end local v16    # "halfMaxWidthScale":F
    .end local v19    # "scaleCol":F
    .restart local v1    # "halfMaxWidthScale":F
    .restart local v4    # "scaleCol":F
    :cond_131
    move/from16 v16, v1

    move/from16 v19, v4

    .line 1942
    .end local v1    # "halfMaxWidthScale":F
    .end local v4    # "scaleCol":F
    .restart local v16    # "halfMaxWidthScale":F
    .restart local v19    # "scaleCol":F
    const/4 v6, 0x1

    .line 1943
    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v4}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1944
    sub-float v12, v19, v14

    .line 1945
    add-float v13, v19, v14

    .line 1947
    goto :goto_151

    .line 1905
    .end local v5    # "columnCount":I
    .end local v8    # "maxWindowWidth":F
    .end local v14    # "gap":F
    .end local v15    # "widestTextBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "halfMaxWidthScale":F
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v19    # "scaleCol":F
    .restart local v4    # "scaleCol":F
    :pswitch_142
    move/from16 v19, v4

    move/from16 v18, v8

    .end local v4    # "scaleCol":F
    .restart local v19    # "scaleCol":F
    const/4 v6, 0x3

    .line 1906
    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v4}, Landroid/media/Cea708CCWidget$CCView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1907
    move/from16 v12, v19

    .line 1908
    nop

    .line 1954
    :goto_151
    packed-switch v9, :pswitch_data_198

    goto :goto_16a

    .line 1968
    :pswitch_155
    or-int/lit8 v6, v6, 0x50

    .line 1969
    move v11, v3

    goto :goto_16a

    .line 1960
    :pswitch_159
    or-int/lit8 v6, v6, 0x10

    .line 1963
    sub-float v8, v18, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1964
    .local v1, "gap":F
    sub-float v10, v3, v1

    .line 1965
    add-float v11, v3, v1

    .line 1966
    goto :goto_16a

    .line 1956
    .end local v1    # "gap":F
    :pswitch_166
    or-int/lit8 v6, v6, 0x30

    .line 1957
    move v10, v3

    .line 1958
    nop

    .line 1972
    :goto_16a
    iget-object v1, v0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    new-instance v4, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(FFFF)V

    invoke-virtual {v1, v0, v4}, Landroid/media/Cea708CCWidget$CCLayout;->addOrUpdateViewToSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V

    .line 1974
    iget v1, v2, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionWindowId(I)V

    .line 1975
    iget v1, v2, Landroid/media/Cea708CCParser$CaptionWindow;->rowCount:I

    invoke-virtual {v0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setRowLimit(I)V

    .line 1976
    invoke-virtual {v0, v6}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setGravity(I)V

    .line 1977
    iget-boolean v1, v2, Landroid/media/Cea708CCParser$CaptionWindow;->visible:Z

    if-eqz v1, :cond_189

    .line 1978
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    goto :goto_18c

    .line 1980
    :cond_189
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    .line 1982
    :goto_18c
    return-void

    nop

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_142
        :pswitch_b1
        :pswitch_a2
    .end packed-switch

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_166
        :pswitch_159
        :pswitch_155
    .end packed-switch
.end method

.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 1987
    sub-int v0, p4, p2

    .line 1988
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 1989
    .local v1, "height":I
    iget v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    if-ne v0, v2, :cond_c

    iget v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    if-eq v1, v2, :cond_13

    .line 1990
    :cond_c
    iput v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    .line 1991
    iput v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    .line 1992
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 1994
    :cond_13
    return-void
.end method

.method public greylist-max-o removeFromCaptionView()V
    .registers 2

    .line 2046
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    if-eqz v0, :cond_11

    .line 2047
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v0, p0}, Landroid/media/Cea708CCWidget$CCLayout;->removeViewFromSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;)V

    .line 2048
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    invoke-virtual {v0, p0}, Landroid/media/Cea708CCWidget$CCLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2049
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 2051
    :cond_11
    return-void
.end method

.method public greylist-max-o sendBuffer(Ljava/lang/String;)V
    .registers 2
    .param p1, "buffer"    # Ljava/lang/String;

    .line 1803
    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    .line 1804
    return-void
.end method

.method public greylist-max-o sendControl(C)V
    .registers 2
    .param p1, "control"    # C

    .line 1808
    return-void
.end method

.method public greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 3
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1725
    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1726
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCView;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 1727
    return-void
.end method

.method public greylist-max-o setCaptionWindowId(I)V
    .registers 2
    .param p1, "captionWindowId"    # I

    .line 1739
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    .line 1740
    return-void
.end method

.method public greylist-max-o setFontScale(F)V
    .registers 2
    .param p1, "fontScale"    # F

    .line 1730
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 1731
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 1732
    return-void
.end method

.method public greylist-max-o setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V
    .registers 5
    .param p1, "penAttr"    # Landroid/media/Cea708CCParser$CaptionPenAttr;

    .line 1758
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1759
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->italic:Z

    if-eqz v0, :cond_14

    .line 1760
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1762
    :cond_14
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->underline:Z

    if-eqz v0, :cond_22

    .line 1763
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1765
    :cond_22
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penSize:I

    packed-switch v0, :pswitch_data_60

    :pswitch_27
    goto :goto_42

    .line 1770
    :pswitch_28
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 1767
    :pswitch_35
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    nop

    .line 1773
    :goto_42
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penOffset:I

    packed-switch v0, :pswitch_data_6a

    :pswitch_47
    goto :goto_5e

    .line 1778
    :pswitch_48
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v1}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1775
    :pswitch_53
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    new-instance v1, Landroid/text/style/SubscriptSpan;

    invoke-direct {v1}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1776
    nop

    .line 1781
    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_35
        :pswitch_27
        :pswitch_28
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_53
        :pswitch_47
        :pswitch_48
    .end packed-switch
.end method

.method public greylist-max-o setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V
    .registers 2
    .param p1, "penColor"    # Landroid/media/Cea708CCParser$CaptionPenColor;

    .line 1785
    return-void
.end method

.method public greylist-max-o setPenLocation(II)V
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 1789
    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    if-ltz v0, :cond_10

    .line 1790
    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .local v0, "r":I
    :goto_6
    if-ge v0, p1, :cond_10

    .line 1791
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    .line 1790
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1794
    .end local v0    # "r":I
    :cond_10
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 1795
    return-void
.end method

.method public greylist-max-o setRowLimit(I)V
    .registers 4
    .param p1, "rowLimit"    # I

    .line 2111
    if-ltz p1, :cond_5

    .line 2114
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 2115
    return-void

    .line 2112
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A rowLimit should have a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 2054
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    .line 2055
    return-void
.end method

.method public greylist-max-o setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V
    .registers 2
    .param p1, "windowAttr"    # Landroid/media/Cea708CCParser$CaptionWindowAttr;

    .line 1800
    return-void
.end method

.method public greylist-max-o show()V
    .registers 2

    .line 1748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setVisibility(I)V

    .line 1749
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->requestLayout()V

    .line 1750
    return-void
.end method
