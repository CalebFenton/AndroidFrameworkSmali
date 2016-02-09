.class Landroid/text/HtmlToSpannedConverter;
.super Ljava/lang/Object;
.source "Html.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/HtmlToSpannedConverter$Bold;,
        Landroid/text/HtmlToSpannedConverter$Italic;,
        Landroid/text/HtmlToSpannedConverter$Underline;,
        Landroid/text/HtmlToSpannedConverter$Big;,
        Landroid/text/HtmlToSpannedConverter$Small;,
        Landroid/text/HtmlToSpannedConverter$Monospace;,
        Landroid/text/HtmlToSpannedConverter$Blockquote;,
        Landroid/text/HtmlToSpannedConverter$Super;,
        Landroid/text/HtmlToSpannedConverter$Sub;,
        Landroid/text/HtmlToSpannedConverter$Font;,
        Landroid/text/HtmlToSpannedConverter$Href;,
        Landroid/text/HtmlToSpannedConverter$Header;
    }
.end annotation


# static fields
.field private static final HEADER_SIZES:[F


# instance fields
.field private mImageGetter:Landroid/text/Html$ImageGetter;

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSource:Ljava/lang/String;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTagHandler:Landroid/text/Html$TagHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 425
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [F

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Landroid/text/HtmlToSpannedConverter;->HEADER_SIZES:[F

    #@8
    .line 423
    return-void

    #@9
    .line 425
    nop

    #@a
    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fb33333    # 1.4f
        0x3fa66666    # 1.3f
        0x3f99999a    # 1.2f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;
    .param p4, "parser"    # Lorg/ccil/cowan/tagsoup/Parser;

    #@0
    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 438
    iput-object p1, p0, Landroid/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    #@5
    .line 439
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@7
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@a
    iput-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@c
    .line 440
    iput-object p2, p0, Landroid/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    #@e
    .line 441
    iput-object p3, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    #@10
    .line 442
    iput-object p4, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    #@12
    .line 437
    return-void
.end method

.method private static end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "kind"    # Ljava/lang/Class;
    .param p2, "repl"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3
    move-result v0

    #@4
    .line 625
    .local v0, "len":I
    invoke-static {p0, p1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 626
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@b
    move-result v2

    #@c
    .line 628
    .local v2, "where":I
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    #@f
    .line 630
    if-eq v2, v0, :cond_0

    #@11
    .line 631
    const/16 v3, 0x21

    #@13
    invoke-virtual {p0, p2, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@16
    .line 623
    :cond_0
    return-void
.end method

.method private static endA(Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    #@0
    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3
    move-result v1

    #@4
    .line 713
    .local v1, "len":I
    const-class v4, Landroid/text/HtmlToSpannedConverter$Href;

    #@6
    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    .line 714
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@d
    move-result v3

    #@e
    .line 716
    .local v3, "where":I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    #@11
    .line 718
    if-eq v3, v1, :cond_0

    #@13
    move-object v0, v2

    #@14
    .line 719
    check-cast v0, Landroid/text/HtmlToSpannedConverter$Href;

    #@16
    .line 721
    .local v0, "h":Landroid/text/HtmlToSpannedConverter$Href;
    iget-object v4, v0, Landroid/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 722
    new-instance v4, Landroid/text/style/URLSpan;

    #@1c
    iget-object v5, v0, Landroid/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    #@1e
    invoke-direct {v4, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    #@21
    .line 723
    const/16 v5, 0x21

    #@23
    .line 722
    invoke-virtual {p0, v4, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@26
    .line 711
    .end local v0    # "h":Landroid/text/HtmlToSpannedConverter$Href;
    :cond_0
    return-void
.end method

.method private static endFont(Landroid/text/SpannableStringBuilder;)V
    .locals 15
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    #@0
    .prologue
    const/16 v14, 0x21

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 667
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@7
    move-result v9

    #@8
    .line 668
    .local v9, "len":I
    const-class v0, Landroid/text/HtmlToSpannedConverter$Font;

    #@a
    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@d
    move-result-object v11

    #@e
    .line 669
    .local v11, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v11}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@11
    move-result v13

    #@12
    .line 671
    .local v13, "where":I
    invoke-virtual {p0, v11}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    #@15
    .line 673
    if-eq v13, v9, :cond_1

    #@17
    move-object v8, v11

    #@18
    .line 674
    check-cast v8, Landroid/text/HtmlToSpannedConverter$Font;

    #@1a
    .line 676
    .local v8, "f":Landroid/text/HtmlToSpannedConverter$Font;
    iget-object v0, v8, Landroid/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    #@1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_0

    #@22
    .line 677
    iget-object v0, v8, Landroid/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    #@24
    const-string/jumbo v3, "@"

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 678
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@30
    move-result-object v12

    #@31
    .line 679
    .local v12, "res":Landroid/content/res/Resources;
    iget-object v0, v8, Landroid/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    #@33
    const/4 v3, 0x1

    #@34
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@37
    move-result-object v10

    #@38
    .line 680
    .local v10, "name":Ljava/lang/String;
    const-string/jumbo v0, "color"

    #@3b
    const-string/jumbo v3, "android"

    #@3e
    invoke-virtual {v12, v10, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@41
    move-result v7

    #@42
    .line 681
    .local v7, "colorRes":I
    if-eqz v7, :cond_0

    #@44
    .line 682
    invoke-virtual {v12, v7, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@47
    move-result-object v4

    #@48
    .line 683
    .local v4, "colors":Landroid/content/res/ColorStateList;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    #@4a
    move v3, v2

    #@4b
    move-object v5, v1

    #@4c
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@4f
    invoke-virtual {p0, v0, v13, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@52
    .line 697
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v0, v8, Landroid/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    #@54
    if-eqz v0, :cond_1

    #@56
    .line 698
    new-instance v0, Landroid/text/style/TypefaceSpan;

    #@58
    iget-object v1, v8, Landroid/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    #@5a
    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    #@5d
    invoke-virtual {p0, v0, v13, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@60
    .line 666
    .end local v8    # "f":Landroid/text/HtmlToSpannedConverter$Font;
    :cond_1
    return-void

    #@61
    .line 688
    .restart local v8    # "f":Landroid/text/HtmlToSpannedConverter$Font;
    :cond_2
    iget-object v0, v8, Landroid/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    #@63
    invoke-static {v0}, Landroid/graphics/Color;->getHtmlColor(Ljava/lang/String;)I

    #@66
    move-result v6

    #@67
    .line 689
    .local v6, "c":I
    const/4 v0, -0x1

    #@68
    if-eq v6, v0, :cond_0

    #@6a
    .line 690
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    #@6c
    const/high16 v1, -0x1000000

    #@6e
    or-int/2addr v1, v6

    #@6f
    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    #@72
    invoke-virtual {p0, v0, v13, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@75
    goto :goto_0
.end method

.method private static endHeader(Landroid/text/SpannableStringBuilder;)V
    .locals 8
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    #@0
    .prologue
    const/16 v7, 0x21

    #@2
    .line 729
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@5
    move-result v1

    #@6
    .line 730
    .local v1, "len":I
    const-class v4, Landroid/text/HtmlToSpannedConverter$Header;

    #@8
    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    .line 732
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@f
    move-result v3

    #@10
    .line 734
    .local v3, "where":I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    #@13
    .line 737
    :goto_0
    if-le v1, v3, :cond_0

    #@15
    add-int/lit8 v4, v1, -0x1

    #@17
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@1a
    move-result v4

    #@1b
    const/16 v5, 0xa

    #@1d
    if-ne v4, v5, :cond_0

    #@1f
    .line 738
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 741
    :cond_0
    if-eq v3, v1, :cond_1

    #@24
    move-object v0, v2

    #@25
    .line 742
    check-cast v0, Landroid/text/HtmlToSpannedConverter$Header;

    #@27
    .line 744
    .local v0, "h":Landroid/text/HtmlToSpannedConverter$Header;
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    #@29
    sget-object v5, Landroid/text/HtmlToSpannedConverter;->HEADER_SIZES:[F

    #@2b
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Header;->-get0(Landroid/text/HtmlToSpannedConverter$Header;)I

    #@2e
    move-result v6

    #@2f
    aget v5, v5, v6

    #@31
    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@34
    invoke-virtual {p0, v4, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@37
    .line 746
    new-instance v4, Landroid/text/style/StyleSpan;

    #@39
    const/4 v5, 0x1

    #@3a
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@3d
    invoke-virtual {p0, v4, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@40
    .line 728
    .end local v0    # "h":Landroid/text/HtmlToSpannedConverter$Header;
    :cond_1
    return-void
.end method

.method private static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "kind"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 608
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    #@4
    move-result v1

    #@5
    invoke-interface {p0, v2, v1, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 610
    .local v0, "objs":[Ljava/lang/Object;
    array-length v1, v0

    #@a
    if-nez v1, :cond_0

    #@c
    .line 611
    const/4 v1, 0x0

    #@d
    return-object v1

    #@e
    .line 613
    :cond_0
    array-length v1, v0

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    aget-object v1, v0, v1

    #@13
    return-object v1
.end method

.method private static handleBr(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    #@0
    .prologue
    .line 600
    const-string/jumbo v0, "\n"

    #@3
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@6
    .line 599
    return-void
.end method

.method private handleEndTag(Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x2

    #@3
    .line 534
    const-string/jumbo v0, "br"

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 535
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@e
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleBr(Landroid/text/SpannableStringBuilder;)V

    #@11
    .line 533
    :cond_0
    :goto_0
    return-void

    #@12
    .line 536
    :cond_1
    const-string/jumbo v0, "p"

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 537
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1d
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    #@20
    goto :goto_0

    #@21
    .line 538
    :cond_2
    const-string/jumbo v0, "div"

    #@24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 539
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@2c
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    #@2f
    goto :goto_0

    #@30
    .line 540
    :cond_3
    const-string/jumbo v0, "strong"

    #@33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_4

    #@39
    .line 541
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@3b
    const-class v1, Landroid/text/HtmlToSpannedConverter$Bold;

    #@3d
    new-instance v2, Landroid/text/style/StyleSpan;

    #@3f
    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@42
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@45
    goto :goto_0

    #@46
    .line 542
    :cond_4
    const-string/jumbo v0, "b"

    #@49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_5

    #@4f
    .line 543
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@51
    const-class v1, Landroid/text/HtmlToSpannedConverter$Bold;

    #@53
    new-instance v2, Landroid/text/style/StyleSpan;

    #@55
    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@58
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@5b
    goto :goto_0

    #@5c
    .line 544
    :cond_5
    const-string/jumbo v0, "em"

    #@5f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_6

    #@65
    .line 545
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@67
    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@69
    new-instance v2, Landroid/text/style/StyleSpan;

    #@6b
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@6e
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@71
    goto :goto_0

    #@72
    .line 546
    :cond_6
    const-string/jumbo v0, "cite"

    #@75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@78
    move-result v0

    #@79
    if-eqz v0, :cond_7

    #@7b
    .line 547
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@7d
    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@7f
    new-instance v2, Landroid/text/style/StyleSpan;

    #@81
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@84
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@87
    goto :goto_0

    #@88
    .line 548
    :cond_7
    const-string/jumbo v0, "dfn"

    #@8b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8e
    move-result v0

    #@8f
    if-eqz v0, :cond_8

    #@91
    .line 549
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@93
    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@95
    new-instance v2, Landroid/text/style/StyleSpan;

    #@97
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@9a
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@9d
    goto/16 :goto_0

    #@9f
    .line 550
    :cond_8
    const-string/jumbo v0, "i"

    #@a2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a5
    move-result v0

    #@a6
    if-eqz v0, :cond_9

    #@a8
    .line 551
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@aa
    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@ac
    new-instance v2, Landroid/text/style/StyleSpan;

    #@ae
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@b1
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@b4
    goto/16 :goto_0

    #@b6
    .line 552
    :cond_9
    const-string/jumbo v0, "big"

    #@b9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@bc
    move-result v0

    #@bd
    if-eqz v0, :cond_a

    #@bf
    .line 553
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@c1
    const-class v1, Landroid/text/HtmlToSpannedConverter$Big;

    #@c3
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    #@c5
    const/high16 v3, 0x3fa00000    # 1.25f

    #@c7
    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@ca
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@cd
    goto/16 :goto_0

    #@cf
    .line 554
    :cond_a
    const-string/jumbo v0, "small"

    #@d2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d5
    move-result v0

    #@d6
    if-eqz v0, :cond_b

    #@d8
    .line 555
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@da
    const-class v1, Landroid/text/HtmlToSpannedConverter$Small;

    #@dc
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    #@de
    const v3, 0x3f4ccccd    # 0.8f

    #@e1
    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@e4
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@e7
    goto/16 :goto_0

    #@e9
    .line 556
    :cond_b
    const-string/jumbo v0, "font"

    #@ec
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ef
    move-result v0

    #@f0
    if-eqz v0, :cond_c

    #@f2
    .line 557
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@f4
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endFont(Landroid/text/SpannableStringBuilder;)V

    #@f7
    goto/16 :goto_0

    #@f9
    .line 558
    :cond_c
    const-string/jumbo v0, "blockquote"

    #@fc
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ff
    move-result v0

    #@100
    if-eqz v0, :cond_d

    #@102
    .line 559
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@104
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    #@107
    .line 560
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@109
    const-class v1, Landroid/text/HtmlToSpannedConverter$Blockquote;

    #@10b
    new-instance v2, Landroid/text/style/QuoteSpan;

    #@10d
    invoke-direct {v2}, Landroid/text/style/QuoteSpan;-><init>()V

    #@110
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@113
    goto/16 :goto_0

    #@115
    .line 561
    :cond_d
    const-string/jumbo v0, "tt"

    #@118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11b
    move-result v0

    #@11c
    if-eqz v0, :cond_e

    #@11e
    .line 562
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@120
    const-class v1, Landroid/text/HtmlToSpannedConverter$Monospace;

    #@122
    .line 563
    new-instance v2, Landroid/text/style/TypefaceSpan;

    #@124
    const-string/jumbo v3, "monospace"

    #@127
    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    #@12a
    .line 562
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@12d
    goto/16 :goto_0

    #@12f
    .line 564
    :cond_e
    const-string/jumbo v0, "a"

    #@132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@135
    move-result v0

    #@136
    if-eqz v0, :cond_f

    #@138
    .line 565
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@13a
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endA(Landroid/text/SpannableStringBuilder;)V

    #@13d
    goto/16 :goto_0

    #@13f
    .line 566
    :cond_f
    const-string/jumbo v0, "u"

    #@142
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@145
    move-result v0

    #@146
    if-eqz v0, :cond_10

    #@148
    .line 567
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@14a
    const-class v1, Landroid/text/HtmlToSpannedConverter$Underline;

    #@14c
    new-instance v2, Landroid/text/style/UnderlineSpan;

    #@14e
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    #@151
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@154
    goto/16 :goto_0

    #@156
    .line 568
    :cond_10
    const-string/jumbo v0, "sup"

    #@159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15c
    move-result v0

    #@15d
    if-eqz v0, :cond_11

    #@15f
    .line 569
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@161
    const-class v1, Landroid/text/HtmlToSpannedConverter$Super;

    #@163
    new-instance v2, Landroid/text/style/SuperscriptSpan;

    #@165
    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    #@168
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@16b
    goto/16 :goto_0

    #@16d
    .line 570
    :cond_11
    const-string/jumbo v0, "sub"

    #@170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@173
    move-result v0

    #@174
    if-eqz v0, :cond_12

    #@176
    .line 571
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@178
    const-class v1, Landroid/text/HtmlToSpannedConverter$Sub;

    #@17a
    new-instance v2, Landroid/text/style/SubscriptSpan;

    #@17c
    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    #@17f
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    #@182
    goto/16 :goto_0

    #@184
    .line 572
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@187
    move-result v0

    #@188
    if-ne v0, v3, :cond_13

    #@18a
    .line 573
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@18d
    move-result v0

    #@18e
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@191
    move-result v0

    #@192
    const/16 v1, 0x68

    #@194
    if-ne v0, v1, :cond_13

    #@196
    .line 574
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@199
    move-result v0

    #@19a
    const/16 v1, 0x31

    #@19c
    if-lt v0, v1, :cond_13

    #@19e
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1a1
    move-result v0

    #@1a2
    const/16 v1, 0x36

    #@1a4
    if-gt v0, v1, :cond_13

    #@1a6
    .line 575
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1a8
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    #@1ab
    .line 576
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1ad
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endHeader(Landroid/text/SpannableStringBuilder;)V

    #@1b0
    goto/16 :goto_0

    #@1b2
    .line 577
    :cond_13
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    #@1b4
    if-eqz v0, :cond_0

    #@1b6
    .line 578
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    #@1b8
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1ba
    iget-object v2, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    #@1bc
    invoke-interface {v0, v5, p1, v1, v2}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    #@1bf
    goto/16 :goto_0
.end method

.method private static handleP(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    .line 583
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@5
    move-result v0

    #@6
    .line 585
    .local v0, "len":I
    const/4 v1, 0x1

    #@7
    if-lt v0, v1, :cond_1

    #@9
    add-int/lit8 v1, v0, -0x1

    #@b
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@e
    move-result v1

    #@f
    if-ne v1, v2, :cond_1

    #@11
    .line 586
    const/4 v1, 0x2

    #@12
    if-lt v0, v1, :cond_0

    #@14
    add-int/lit8 v1, v0, -0x2

    #@16
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@19
    move-result v1

    #@1a
    if-ne v1, v2, :cond_0

    #@1c
    .line 587
    return-void

    #@1d
    .line 590
    :cond_0
    const-string/jumbo v1, "\n"

    #@20
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@23
    .line 591
    return-void

    #@24
    .line 594
    :cond_1
    if-eqz v0, :cond_2

    #@26
    .line 595
    const-string/jumbo v1, "\n\n"

    #@29
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@2c
    .line 582
    :cond_2
    return-void
.end method

.method private handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 483
    const-string/jumbo v0, "br"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 482
    :cond_0
    :goto_0
    return-void

    #@c
    .line 486
    :cond_1
    const-string/jumbo v0, "p"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 487
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@17
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    #@1a
    goto :goto_0

    #@1b
    .line 488
    :cond_2
    const-string/jumbo v0, "div"

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 489
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@26
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    #@29
    goto :goto_0

    #@2a
    .line 490
    :cond_3
    const-string/jumbo v0, "strong"

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_4

    #@33
    .line 491
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@35
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Bold;

    #@37
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Bold;-><init>(Landroid/text/HtmlToSpannedConverter$Bold;)V

    #@3a
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@3d
    goto :goto_0

    #@3e
    .line 492
    :cond_4
    const-string/jumbo v0, "b"

    #@41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_5

    #@47
    .line 493
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@49
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Bold;

    #@4b
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Bold;-><init>(Landroid/text/HtmlToSpannedConverter$Bold;)V

    #@4e
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@51
    goto :goto_0

    #@52
    .line 494
    :cond_5
    const-string/jumbo v0, "em"

    #@55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_6

    #@5b
    .line 495
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@5d
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@5f
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    #@62
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@65
    goto :goto_0

    #@66
    .line 496
    :cond_6
    const-string/jumbo v0, "cite"

    #@69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_7

    #@6f
    .line 497
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@71
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@73
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    #@76
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@79
    goto :goto_0

    #@7a
    .line 498
    :cond_7
    const-string/jumbo v0, "dfn"

    #@7d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@80
    move-result v0

    #@81
    if-eqz v0, :cond_8

    #@83
    .line 499
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@85
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@87
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    #@8a
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@8d
    goto/16 :goto_0

    #@8f
    .line 500
    :cond_8
    const-string/jumbo v0, "i"

    #@92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@95
    move-result v0

    #@96
    if-eqz v0, :cond_9

    #@98
    .line 501
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@9a
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@9c
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    #@9f
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@a2
    goto/16 :goto_0

    #@a4
    .line 502
    :cond_9
    const-string/jumbo v0, "big"

    #@a7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@aa
    move-result v0

    #@ab
    if-eqz v0, :cond_a

    #@ad
    .line 503
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@af
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Big;

    #@b1
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Big;-><init>(Landroid/text/HtmlToSpannedConverter$Big;)V

    #@b4
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@b7
    goto/16 :goto_0

    #@b9
    .line 504
    :cond_a
    const-string/jumbo v0, "small"

    #@bc
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@bf
    move-result v0

    #@c0
    if-eqz v0, :cond_b

    #@c2
    .line 505
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@c4
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Small;

    #@c6
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Small;-><init>(Landroid/text/HtmlToSpannedConverter$Small;)V

    #@c9
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@cc
    goto/16 :goto_0

    #@ce
    .line 506
    :cond_b
    const-string/jumbo v0, "font"

    #@d1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d4
    move-result v0

    #@d5
    if-eqz v0, :cond_c

    #@d7
    .line 507
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@d9
    invoke-static {v0, p2}, Landroid/text/HtmlToSpannedConverter;->startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    #@dc
    goto/16 :goto_0

    #@de
    .line 508
    :cond_c
    const-string/jumbo v0, "blockquote"

    #@e1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e4
    move-result v0

    #@e5
    if-eqz v0, :cond_d

    #@e7
    .line 509
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@e9
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    #@ec
    .line 510
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@ee
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Blockquote;

    #@f0
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Blockquote;-><init>(Landroid/text/HtmlToSpannedConverter$Blockquote;)V

    #@f3
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@f6
    goto/16 :goto_0

    #@f8
    .line 511
    :cond_d
    const-string/jumbo v0, "tt"

    #@fb
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@fe
    move-result v0

    #@ff
    if-eqz v0, :cond_e

    #@101
    .line 512
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@103
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Monospace;

    #@105
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Monospace;-><init>(Landroid/text/HtmlToSpannedConverter$Monospace;)V

    #@108
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@10b
    goto/16 :goto_0

    #@10d
    .line 513
    :cond_e
    const-string/jumbo v0, "a"

    #@110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@113
    move-result v0

    #@114
    if-eqz v0, :cond_f

    #@116
    .line 514
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@118
    invoke-static {v0, p2}, Landroid/text/HtmlToSpannedConverter;->startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    #@11b
    goto/16 :goto_0

    #@11d
    .line 515
    :cond_f
    const-string/jumbo v0, "u"

    #@120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@123
    move-result v0

    #@124
    if-eqz v0, :cond_10

    #@126
    .line 516
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@128
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Underline;

    #@12a
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Underline;-><init>(Landroid/text/HtmlToSpannedConverter$Underline;)V

    #@12d
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@130
    goto/16 :goto_0

    #@132
    .line 517
    :cond_10
    const-string/jumbo v0, "sup"

    #@135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@138
    move-result v0

    #@139
    if-eqz v0, :cond_11

    #@13b
    .line 518
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@13d
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Super;

    #@13f
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Super;-><init>(Landroid/text/HtmlToSpannedConverter$Super;)V

    #@142
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@145
    goto/16 :goto_0

    #@147
    .line 519
    :cond_11
    const-string/jumbo v0, "sub"

    #@14a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14d
    move-result v0

    #@14e
    if-eqz v0, :cond_12

    #@150
    .line 520
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@152
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Sub;

    #@154
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Sub;-><init>(Landroid/text/HtmlToSpannedConverter$Sub;)V

    #@157
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@15a
    goto/16 :goto_0

    #@15c
    .line 521
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@15f
    move-result v0

    #@160
    const/4 v1, 0x2

    #@161
    if-ne v0, v1, :cond_13

    #@163
    .line 522
    const/4 v0, 0x0

    #@164
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@167
    move-result v0

    #@168
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@16b
    move-result v0

    #@16c
    const/16 v1, 0x68

    #@16e
    if-ne v0, v1, :cond_13

    #@170
    .line 523
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@173
    move-result v0

    #@174
    const/16 v1, 0x31

    #@176
    if-lt v0, v1, :cond_13

    #@178
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@17b
    move-result v0

    #@17c
    const/16 v1, 0x36

    #@17e
    if-gt v0, v1, :cond_13

    #@180
    .line 524
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@182
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    #@185
    .line 525
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@187
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Header;

    #@189
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@18c
    move-result v2

    #@18d
    add-int/lit8 v2, v2, -0x31

    #@18f
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Header;-><init>(I)V

    #@192
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    #@195
    goto/16 :goto_0

    #@197
    .line 526
    :cond_13
    const-string/jumbo v0, "img"

    #@19a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19d
    move-result v0

    #@19e
    if-eqz v0, :cond_14

    #@1a0
    .line 527
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1a2
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    #@1a4
    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V

    #@1a7
    goto/16 :goto_0

    #@1a9
    .line 528
    :cond_14
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    #@1ab
    if-eqz v0, :cond_0

    #@1ad
    .line 529
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    #@1af
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1b1
    iget-object v2, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    #@1b3
    invoke-interface {v0, v3, p1, v1, v2}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    #@1b6
    goto/16 :goto_0
.end method

.method private static start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "mark"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 618
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3
    move-result v0

    #@4
    .line 619
    .local v0, "len":I
    const/16 v1, 0x11

    #@6
    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@9
    .line 617
    return-void
.end method

.method private static startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 705
    const-string/jumbo v2, ""

    #@3
    const-string/jumbo v3, "href"

    #@6
    invoke-interface {p1, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 707
    .local v0, "href":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@d
    move-result v1

    #@e
    .line 708
    .local v1, "len":I
    new-instance v2, Landroid/text/HtmlToSpannedConverter$Href;

    #@10
    invoke-direct {v2, v0}, Landroid/text/HtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    #@13
    const/16 v3, 0x11

    #@15
    invoke-virtual {p0, v2, v1, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@18
    .line 704
    return-void
.end method

.method private static startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 659
    const-string/jumbo v3, ""

    #@3
    const-string/jumbo v4, "color"

    #@6
    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 660
    .local v0, "color":Ljava/lang/String;
    const-string/jumbo v3, ""

    #@d
    const-string/jumbo v4, "face"

    #@10
    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 662
    .local v1, "face":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@17
    move-result v2

    #@18
    .line 663
    .local v2, "len":I
    new-instance v3, Landroid/text/HtmlToSpannedConverter$Font;

    #@1a
    invoke-direct {v3, v0, v1}, Landroid/text/HtmlToSpannedConverter$Font;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    const/16 v4, 0x11

    #@1f
    invoke-virtual {p0, v3, v2, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@22
    .line 658
    return-void
.end method

.method private static startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V
    .locals 6
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "img"    # Landroid/text/Html$ImageGetter;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 637
    const-string/jumbo v3, ""

    #@4
    const-string/jumbo v4, "src"

    #@7
    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 638
    .local v2, "src":Ljava/lang/String;
    const/4 v0, 0x0

    #@c
    .line 640
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    #@e
    .line 641
    invoke-interface {p2, v2}, Landroid/text/Html$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    .line 644
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    #@14
    .line 645
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@17
    move-result-object v3

    #@18
    .line 646
    const v4, 0x1080730

    #@1b
    .line 645
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v0

    #@1f
    .line 647
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@22
    move-result v3

    #@23
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@26
    move-result v4

    #@27
    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2a
    .line 650
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@2d
    move-result v1

    #@2e
    .line 651
    .local v1, "len":I
    const-string/jumbo v3, "\ufffc"

    #@31
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@34
    .line 653
    new-instance v3, Landroid/text/style/ImageSpan;

    #@36
    invoke-direct {v3, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    #@39
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3c
    move-result v4

    #@3d
    .line 654
    const/16 v5, 0x21

    #@3f
    .line 653
    invoke-virtual {p0, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@42
    .line 636
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 9
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/16 v7, 0x20

    #@4
    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 783
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_5

    #@c
    .line 784
    add-int v5, v1, p2

    #@e
    aget-char v0, p1, v5

    #@10
    .line 786
    .local v0, "c":C
    if-eq v0, v7, :cond_0

    #@12
    if-ne v0, v8, :cond_4

    #@14
    .line 788
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@17
    move-result v2

    #@18
    .line 790
    .local v2, "len":I
    if-nez v2, :cond_3

    #@1a
    .line 791
    iget-object v5, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1c
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    #@1f
    move-result v2

    #@20
    .line 793
    if-nez v2, :cond_2

    #@22
    .line 794
    const/16 v3, 0xa

    #@24
    .line 802
    :goto_1
    if-eq v3, v7, :cond_1

    #@26
    if-eq v3, v8, :cond_1

    #@28
    .line 803
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 783
    .end local v2    # "len":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 796
    .restart local v2    # "len":I
    :cond_2
    iget-object v5, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@30
    add-int/lit8 v6, v2, -0x1

    #@32
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@35
    move-result v3

    #@36
    .local v3, "pred":C
    goto :goto_1

    #@37
    .line 799
    .end local v3    # "pred":C
    :cond_3
    add-int/lit8 v5, v2, -0x1

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    #@3c
    move-result v3

    #@3d
    .restart local v3    # "pred":C
    goto :goto_1

    #@3e
    .line 806
    .end local v2    # "len":I
    .end local v3    # "pred":C
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    goto :goto_2

    #@42
    .line 810
    .end local v0    # "c":C
    :cond_5
    iget-object v5, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@44
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@47
    .line 775
    return-void
.end method

.method public convert()Landroid/text/Spanned;
    .locals 12

    #@0
    .prologue
    const/16 v11, 0xa

    #@2
    const/4 v10, 0x0

    #@3
    .line 447
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    #@5
    invoke-interface {v6, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@8
    .line 449
    :try_start_0
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    #@a
    new-instance v7, Lorg/xml/sax/InputSource;

    #@c
    new-instance v8, Ljava/io/StringReader;

    #@e
    iget-object v9, p0, Landroid/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    #@10
    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@13
    invoke-direct {v7, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    #@16
    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 459
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1b
    iget-object v7, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1d
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    #@20
    move-result v7

    #@21
    const-class v8, Landroid/text/style/ParagraphStyle;

    #@23
    invoke-virtual {v6, v10, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    .line 460
    .local v4, "obj":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@28
    .local v3, "i":I
    :goto_0
    array-length v6, v4

    #@29
    if-ge v3, v6, :cond_2

    #@2b
    .line 461
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@2d
    aget-object v7, v4, v3

    #@2f
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@32
    move-result v5

    #@33
    .line 462
    .local v5, "start":I
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@35
    aget-object v7, v4, v3

    #@37
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    #@3a
    move-result v2

    #@3b
    .line 465
    .local v2, "end":I
    add-int/lit8 v6, v2, -0x2

    #@3d
    if-ltz v6, :cond_0

    #@3f
    .line 466
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@41
    add-int/lit8 v7, v2, -0x1

    #@43
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@46
    move-result v6

    #@47
    if-ne v6, v11, :cond_0

    #@49
    .line 467
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@4b
    add-int/lit8 v7, v2, -0x2

    #@4d
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@50
    move-result v6

    #@51
    if-ne v6, v11, :cond_0

    #@53
    .line 468
    add-int/lit8 v2, v2, -0x1

    #@55
    .line 472
    :cond_0
    if-ne v2, v5, :cond_1

    #@57
    .line 473
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@59
    aget-object v7, v4, v3

    #@5b
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    #@5e
    .line 460
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@60
    goto :goto_0

    #@61
    .line 453
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "obj":[Ljava/lang/Object;
    .end local v5    # "start":I
    :catch_0
    move-exception v1

    #@62
    .line 455
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@64
    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@67
    throw v6

    #@68
    .line 450
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v0

    #@69
    .line 452
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@6b
    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@6e
    throw v6

    #@6f
    .line 475
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "end":I
    .restart local v3    # "i":I
    .restart local v4    # "obj":[Ljava/lang/Object;
    .restart local v5    # "start":I
    :cond_1
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@71
    aget-object v7, v4, v3

    #@73
    const/16 v8, 0x33

    #@75
    invoke-virtual {v6, v7, v5, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@78
    goto :goto_1

    #@79
    .line 479
    .end local v2    # "end":I
    .end local v5    # "start":I
    :cond_2
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@7b
    return-object v6
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 757
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 772
    invoke-direct {p0, p2}, Landroid/text/HtmlToSpannedConverter;->handleEndTag(Ljava/lang/String;)V

    #@3
    .line 771
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 763
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 813
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 816
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 751
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 819
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 754
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 768
    invoke-direct {p0, p2, p4}, Landroid/text/HtmlToSpannedConverter;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@3
    .line 767
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 760
    return-void
.end method
