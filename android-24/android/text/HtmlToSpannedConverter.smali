.class Landroid/text/HtmlToSpannedConverter;
.super Ljava/lang/Object;
.source "Html.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/HtmlToSpannedConverter$Alignment;,
        Landroid/text/HtmlToSpannedConverter$Background;,
        Landroid/text/HtmlToSpannedConverter$Big;,
        Landroid/text/HtmlToSpannedConverter$Blockquote;,
        Landroid/text/HtmlToSpannedConverter$Bold;,
        Landroid/text/HtmlToSpannedConverter$Bullet;,
        Landroid/text/HtmlToSpannedConverter$Font;,
        Landroid/text/HtmlToSpannedConverter$Foreground;,
        Landroid/text/HtmlToSpannedConverter$Heading;,
        Landroid/text/HtmlToSpannedConverter$Href;,
        Landroid/text/HtmlToSpannedConverter$Italic;,
        Landroid/text/HtmlToSpannedConverter$Monospace;,
        Landroid/text/HtmlToSpannedConverter$Newline;,
        Landroid/text/HtmlToSpannedConverter$Small;,
        Landroid/text/HtmlToSpannedConverter$Strikethrough;,
        Landroid/text/HtmlToSpannedConverter$Sub;,
        Landroid/text/HtmlToSpannedConverter$Super;,
        Landroid/text/HtmlToSpannedConverter$Underline;
    }
.end annotation


# static fields
.field private static final HEADING_SIZES:[F

.field private static sBackgroundColorPattern:Ljava/util/regex/Pattern;

.field private static final sColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sForegroundColorPattern:Ljava/util/regex/Pattern;

.field private static sTextAlignPattern:Ljava/util/regex/Pattern;

.field private static sTextDecorationPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mFlags:I

.field private mImageGetter:Landroid/text/Html$ImageGetter;

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSource:Ljava/lang/String;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTagHandler:Landroid/text/Html$TagHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const v5, -0x2c2c2d

    #@3
    const v4, -0x565657

    #@6
    const v3, -0x7f7f80

    #@9
    .line 681
    const/4 v0, 0x6

    #@a
    new-array v0, v0, [F

    #@c
    fill-array-data v0, :array_0

    #@f
    sput-object v0, Landroid/text/HtmlToSpannedConverter;->HEADING_SIZES:[F

    #@11
    .line 703
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    #@18
    .line 704
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    #@1a
    const-string/jumbo v1, "darkgray"

    #@1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 705
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    #@26
    const-string/jumbo v1, "gray"

    #@29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 706
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    #@32
    const-string/jumbo v1, "lightgray"

    #@35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v2

    #@39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 707
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    #@3e
    const-string/jumbo v1, "darkgrey"

    #@41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v2

    #@45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 708
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    #@4a
    const-string/jumbo v1, "grey"

    #@4d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v2

    #@51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 709
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    #@56
    const-string/jumbo v1, "lightgrey"

    #@59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v2

    #@5d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 710
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    #@62
    const-string/jumbo v1, "green"

    #@65
    const v2, -0xff8000

    #@68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b
    move-result-object v2

    #@6c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 679
    return-void

    #@70
    .line 681
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

.method public constructor <init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;
    .param p4, "parser"    # Lorg/ccil/cowan/tagsoup/Parser;
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 746
    iput-object p1, p0, Landroid/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    #@5
    .line 747
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@7
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@a
    iput-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@c
    .line 748
    iput-object p2, p0, Landroid/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    #@e
    .line 749
    iput-object p3, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    #@10
    .line 750
    iput-object p4, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    #@12
    .line 751
    iput p5, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    #@14
    .line 745
    return-void
.end method

.method private static appendNewlines(Landroid/text/Editable;I)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "minNewline"    # I

    #@0
    .prologue
    .line 950
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@3
    move-result v3

    #@4
    .line 952
    .local v3, "len":I
    if-nez v3, :cond_0

    #@6
    .line 953
    return-void

    #@7
    .line 956
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 957
    .local v0, "existingNewlines":I
    add-int/lit8 v1, v3, -0x1

    #@a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@c
    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    #@f
    move-result v4

    #@10
    const/16 v5, 0xa

    #@12
    if-ne v4, v5, :cond_1

    #@14
    .line 958
    add-int/lit8 v0, v0, 0x1

    #@16
    .line 957
    add-int/lit8 v1, v1, -0x1

    #@18
    goto :goto_0

    #@19
    .line 961
    :cond_1
    move v2, v0

    #@1a
    .local v2, "j":I
    :goto_1
    if-ge v2, p1, :cond_2

    #@1c
    .line 962
    const-string/jumbo v4, "\n"

    #@1f
    invoke-interface {p0, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    #@22
    .line 961
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_1

    #@25
    .line 949
    :cond_2
    return-void
.end method

.method private static end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "kind"    # Ljava/lang/Class;
    .param p2, "repl"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1076
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@3
    move-result v0

    #@4
    .line 1077
    .local v0, "len":I
    invoke-static {p0, p1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    .line 1078
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@a
    .line 1079
    const/4 v2, 0x1

    #@b
    new-array v2, v2, [Ljava/lang/Object;

    #@d
    const/4 v3, 0x0

    #@e
    aput-object p2, v2, v3

    #@10
    invoke-static {p0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    #@13
    .line 1075
    :cond_0
    return-void
.end method

.method private static endA(Landroid/text/Editable;)V
    .locals 4
    .param p0, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 1185
    const-class v1, Landroid/text/HtmlToSpannedConverter$Href;

    #@2
    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/text/HtmlToSpannedConverter$Href;

    #@8
    .line 1186
    .local v0, "h":Landroid/text/HtmlToSpannedConverter$Href;
    if-eqz v0, :cond_0

    #@a
    .line 1187
    iget-object v1, v0, Landroid/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1188
    const/4 v1, 0x1

    #@f
    new-array v1, v1, [Ljava/lang/Object;

    #@11
    new-instance v2, Landroid/text/style/URLSpan;

    #@13
    iget-object v3, v0, Landroid/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    #@15
    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    #@18
    const/4 v3, 0x0

    #@19
    aput-object v2, v1, v3

    #@1b
    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    #@1e
    .line 1184
    :cond_0
    return-void
.end method

.method private static endBlockElement(Landroid/text/Editable;)V
    .locals 5
    .param p0, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 990
    const-class v2, Landroid/text/HtmlToSpannedConverter$Newline;

    #@2
    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/text/HtmlToSpannedConverter$Newline;

    #@8
    .line 991
    .local v1, "n":Landroid/text/HtmlToSpannedConverter$Newline;
    if-eqz v1, :cond_0

    #@a
    .line 992
    invoke-static {v1}, Landroid/text/HtmlToSpannedConverter$Newline;->-get0(Landroid/text/HtmlToSpannedConverter$Newline;)I

    #@d
    move-result v2

    #@e
    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->appendNewlines(Landroid/text/Editable;I)V

    #@11
    .line 993
    invoke-interface {p0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@14
    .line 996
    :cond_0
    const-class v2, Landroid/text/HtmlToSpannedConverter$Alignment;

    #@16
    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/text/HtmlToSpannedConverter$Alignment;

    #@1c
    .line 997
    .local v0, "a":Landroid/text/HtmlToSpannedConverter$Alignment;
    if-eqz v0, :cond_1

    #@1e
    .line 998
    const/4 v2, 0x1

    #@1f
    new-array v2, v2, [Ljava/lang/Object;

    #@21
    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    #@23
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Alignment;->-get0(Landroid/text/HtmlToSpannedConverter$Alignment;)Landroid/text/Layout$Alignment;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v3, v4}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    #@2a
    const/4 v4, 0x0

    #@2b
    aput-object v3, v2, v4

    #@2d
    invoke-static {p0, v0, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    #@30
    .line 989
    :cond_1
    return-void
.end method

.method private static endBlockquote(Landroid/text/Editable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 1024
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    #@3
    .line 1025
    const-class v0, Landroid/text/HtmlToSpannedConverter$Blockquote;

    #@5
    new-instance v1, Landroid/text/style/QuoteSpan;

    #@7
    invoke-direct {v1}, Landroid/text/style/QuoteSpan;-><init>()V

    #@a
    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@d
    .line 1023
    return-void
.end method

.method private static endCssStyle(Landroid/text/Editable;)V
    .locals 8
    .param p0, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1113
    const-class v3, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    #@4
    invoke-static {p0, v3}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    #@a
    .line 1114
    .local v2, "s":Landroid/text/HtmlToSpannedConverter$Strikethrough;
    if-eqz v2, :cond_0

    #@c
    .line 1115
    new-array v3, v7, [Ljava/lang/Object;

    #@e
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    #@10
    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    #@13
    aput-object v4, v3, v6

    #@15
    invoke-static {p0, v2, v3}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    #@18
    .line 1118
    :cond_0
    const-class v3, Landroid/text/HtmlToSpannedConverter$Background;

    #@1a
    invoke-static {p0, v3}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/text/HtmlToSpannedConverter$Background;

    #@20
    .line 1119
    .local v0, "b":Landroid/text/HtmlToSpannedConverter$Background;
    if-eqz v0, :cond_1

    #@22
    .line 1120
    new-array v3, v7, [Ljava/lang/Object;

    #@24
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    #@26
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Background;->-get0(Landroid/text/HtmlToSpannedConverter$Background;)I

    #@29
    move-result v5

    #@2a
    invoke-direct {v4, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    #@2d
    aput-object v4, v3, v6

    #@2f
    invoke-static {p0, v0, v3}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    #@32
    .line 1123
    :cond_1
    const-class v3, Landroid/text/HtmlToSpannedConverter$Foreground;

    #@34
    invoke-static {p0, v3}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Landroid/text/HtmlToSpannedConverter$Foreground;

    #@3a
    .line 1124
    .local v1, "f":Landroid/text/HtmlToSpannedConverter$Foreground;
    if-eqz v1, :cond_2

    #@3c
    .line 1125
    new-array v3, v7, [Ljava/lang/Object;

    #@3e
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    #@40
    invoke-static {v1}, Landroid/text/HtmlToSpannedConverter$Foreground;->-get0(Landroid/text/HtmlToSpannedConverter$Foreground;)I

    #@43
    move-result v5

    #@44
    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    #@47
    aput-object v4, v3, v6

    #@49
    invoke-static {p0, v1, v3}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    #@4c
    .line 1112
    :cond_2
    return-void
.end method

.method private static endFont(Landroid/text/Editable;)V
    .locals 7
    .param p0, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1167
    const-class v2, Landroid/text/HtmlToSpannedConverter$Font;

    #@4
    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/text/HtmlToSpannedConverter$Font;

    #@a
    .line 1168
    .local v0, "font":Landroid/text/HtmlToSpannedConverter$Font;
    if-eqz v0, :cond_0

    #@c
    .line 1169
    new-array v2, v6, [Ljava/lang/Object;

    #@e
    new-instance v3, Landroid/text/style/TypefaceSpan;

    #@10
    iget-object v4, v0, Landroid/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    #@12
    invoke-direct {v3, v4}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    #@15
    aput-object v3, v2, v5

    #@17
    invoke-static {p0, v0, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    #@1a
    .line 1172
    :cond_0
    const-class v2, Landroid/text/HtmlToSpannedConverter$Foreground;

    #@1c
    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/text/HtmlToSpannedConverter$Foreground;

    #@22
    .line 1173
    .local v1, "foreground":Landroid/text/HtmlToSpannedConverter$Foreground;
    if-eqz v1, :cond_1

    #@24
    .line 1174
    new-array v2, v6, [Ljava/lang/Object;

    #@26
    .line 1175
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    #@28
    invoke-static {v1}, Landroid/text/HtmlToSpannedConverter$Foreground;->-get0(Landroid/text/HtmlToSpannedConverter$Foreground;)I

    #@2b
    move-result v4

    #@2c
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    #@2f
    aput-object v3, v2, v5

    #@31
    .line 1174
    invoke-static {p0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    #@34
    .line 1166
    :cond_1
    return-void
.end method

.method private static endHeading(Landroid/text/Editable;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1036
    const-class v1, Landroid/text/HtmlToSpannedConverter$Heading;

    #@3
    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/HtmlToSpannedConverter$Heading;

    #@9
    .line 1037
    .local v0, "h":Landroid/text/HtmlToSpannedConverter$Heading;
    if-eqz v0, :cond_0

    #@b
    .line 1038
    const/4 v1, 0x2

    #@c
    new-array v1, v1, [Ljava/lang/Object;

    #@e
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    #@10
    sget-object v3, Landroid/text/HtmlToSpannedConverter;->HEADING_SIZES:[F

    #@12
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Heading;->-get0(Landroid/text/HtmlToSpannedConverter$Heading;)I

    #@15
    move-result v4

    #@16
    aget v3, v3, v4

    #@18
    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@1b
    const/4 v3, 0x0

    #@1c
    aput-object v2, v1, v3

    #@1e
    .line 1039
    new-instance v2, Landroid/text/style/StyleSpan;

    #@20
    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@23
    aput-object v2, v1, v5

    #@25
    .line 1038
    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    #@28
    .line 1042
    :cond_0
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    #@2b
    .line 1033
    return-void
.end method

.method private static endLi(Landroid/text/Editable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 1013
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    #@3
    .line 1014
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    #@6
    .line 1015
    const-class v0, Landroid/text/HtmlToSpannedConverter$Bullet;

    #@8
    new-instance v1, Landroid/text/style/BulletSpan;

    #@a
    invoke-direct {v1}, Landroid/text/style/BulletSpan;-><init>()V

    #@d
    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@10
    .line 1012
    return-void
.end method

.method private static getBackgroundColorPattern()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    .prologue
    .line 729
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 731
    const-string/jumbo v0, "(?:\\s+|\\A)background(?:-color)?\\s*:\\s*(\\S*)\\b"

    #@7
    .line 730
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    #@d
    .line 733
    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    #@f
    return-object v0
.end method

.method private static getForegroundColorPattern()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    .prologue
    .line 721
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 723
    const-string/jumbo v0, "(?:\\s+|\\A)color\\s*:\\s*(\\S*)\\b"

    #@7
    .line 722
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    #@d
    .line 725
    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    #@f
    return-object v0
.end method

.method private getHtmlColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1194
    iget v1, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    #@2
    and-int/lit16 v1, v1, 0x100

    #@4
    .line 1195
    const/16 v2, 0x100

    #@6
    .line 1194
    if-ne v1, v2, :cond_0

    #@8
    .line 1196
    sget-object v1, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    #@a
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@c
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/Integer;

    #@16
    .line 1197
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@18
    .line 1198
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 1201
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->getHtmlColor(Ljava/lang/String;)I

    #@20
    move-result v1

    #@21
    return v1
.end method

.method private static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 1050
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    #@4
    move-result v1

    #@5
    invoke-interface {p0, v2, v1, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 1052
    .local v0, "objs":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1053
    const/4 v1, 0x0

    #@d
    return-object v1

    #@e
    .line 1055
    :cond_0
    array-length v1, v0

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    aget-object v1, v0, v1

    #@13
    return-object v1
.end method

.method private getMargin(I)I
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 943
    iget v0, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 944
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 946
    :cond_0
    const/4 v0, 0x2

    #@8
    return v0
.end method

.method private getMarginBlockquote()I
    .locals 1

    #@0
    .prologue
    .line 933
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getMarginDiv()I
    .locals 1

    #@0
    .prologue
    .line 929
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getMarginHeading()I
    .locals 1

    #@0
    .prologue
    .line 917
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private getMarginList()I
    .locals 1

    #@0
    .prologue
    .line 925
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getMarginListItem()I
    .locals 1

    #@0
    .prologue
    .line 921
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private getMarginParagraph()I
    .locals 1

    #@0
    .prologue
    .line 913
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static getTextAlignPattern()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    .prologue
    .line 714
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 715
    const-string/jumbo v0, "(?:\\s+|\\A)text-align\\s*:\\s*(\\S*)\\b"

    #@7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    #@d
    .line 717
    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    #@f
    return-object v0
.end method

.method private static getTextDecorationPattern()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    .prologue
    .line 737
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 739
    const-string/jumbo v0, "(?:\\s+|\\A)text-decoration\\s*:\\s*(\\S*)\\b"

    #@7
    .line 738
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    #@d
    .line 741
    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    #@f
    return-object v0
.end method

.method private static handleBr(Landroid/text/Editable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 1003
    const/16 v0, 0xa

    #@2
    invoke-interface {p0, v0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    #@5
    .line 1002
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
    .line 854
    const-string/jumbo v0, "br"

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 855
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@e
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleBr(Landroid/text/Editable;)V

    #@11
    .line 853
    :cond_0
    :goto_0
    return-void

    #@12
    .line 856
    :cond_1
    const-string/jumbo v0, "p"

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 857
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1d
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    #@20
    .line 858
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@22
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    #@25
    goto :goto_0

    #@26
    .line 859
    :cond_2
    const-string/jumbo v0, "ul"

    #@29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 860
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@31
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    #@34
    goto :goto_0

    #@35
    .line 861
    :cond_3
    const-string/jumbo v0, "li"

    #@38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_4

    #@3e
    .line 862
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@40
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endLi(Landroid/text/Editable;)V

    #@43
    goto :goto_0

    #@44
    .line 863
    :cond_4
    const-string/jumbo v0, "div"

    #@47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_5

    #@4d
    .line 864
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@4f
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    #@52
    goto :goto_0

    #@53
    .line 865
    :cond_5
    const-string/jumbo v0, "span"

    #@56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_6

    #@5c
    .line 866
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@5e
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    #@61
    goto :goto_0

    #@62
    .line 867
    :cond_6
    const-string/jumbo v0, "strong"

    #@65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@68
    move-result v0

    #@69
    if-eqz v0, :cond_7

    #@6b
    .line 868
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@6d
    const-class v1, Landroid/text/HtmlToSpannedConverter$Bold;

    #@6f
    new-instance v2, Landroid/text/style/StyleSpan;

    #@71
    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@74
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@77
    goto :goto_0

    #@78
    .line 869
    :cond_7
    const-string/jumbo v0, "b"

    #@7b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_8

    #@81
    .line 870
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@83
    const-class v1, Landroid/text/HtmlToSpannedConverter$Bold;

    #@85
    new-instance v2, Landroid/text/style/StyleSpan;

    #@87
    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@8a
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@8d
    goto :goto_0

    #@8e
    .line 871
    :cond_8
    const-string/jumbo v0, "em"

    #@91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@94
    move-result v0

    #@95
    if-eqz v0, :cond_9

    #@97
    .line 872
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@99
    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@9b
    new-instance v2, Landroid/text/style/StyleSpan;

    #@9d
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@a0
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@a3
    goto/16 :goto_0

    #@a5
    .line 873
    :cond_9
    const-string/jumbo v0, "cite"

    #@a8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ab
    move-result v0

    #@ac
    if-eqz v0, :cond_a

    #@ae
    .line 874
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@b0
    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@b2
    new-instance v2, Landroid/text/style/StyleSpan;

    #@b4
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@b7
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@ba
    goto/16 :goto_0

    #@bc
    .line 875
    :cond_a
    const-string/jumbo v0, "dfn"

    #@bf
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c2
    move-result v0

    #@c3
    if-eqz v0, :cond_b

    #@c5
    .line 876
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@c7
    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@c9
    new-instance v2, Landroid/text/style/StyleSpan;

    #@cb
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@ce
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 877
    :cond_b
    const-string/jumbo v0, "i"

    #@d6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d9
    move-result v0

    #@da
    if-eqz v0, :cond_c

    #@dc
    .line 878
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@de
    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@e0
    new-instance v2, Landroid/text/style/StyleSpan;

    #@e2
    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    #@e5
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@e8
    goto/16 :goto_0

    #@ea
    .line 879
    :cond_c
    const-string/jumbo v0, "big"

    #@ed
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f0
    move-result v0

    #@f1
    if-eqz v0, :cond_d

    #@f3
    .line 880
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@f5
    const-class v1, Landroid/text/HtmlToSpannedConverter$Big;

    #@f7
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    #@f9
    const/high16 v3, 0x3fa00000    # 1.25f

    #@fb
    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@fe
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@101
    goto/16 :goto_0

    #@103
    .line 881
    :cond_d
    const-string/jumbo v0, "small"

    #@106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@109
    move-result v0

    #@10a
    if-eqz v0, :cond_e

    #@10c
    .line 882
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@10e
    const-class v1, Landroid/text/HtmlToSpannedConverter$Small;

    #@110
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    #@112
    const v3, 0x3f4ccccd    # 0.8f

    #@115
    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    #@118
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@11b
    goto/16 :goto_0

    #@11d
    .line 883
    :cond_e
    const-string/jumbo v0, "font"

    #@120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@123
    move-result v0

    #@124
    if-eqz v0, :cond_f

    #@126
    .line 884
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@128
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endFont(Landroid/text/Editable;)V

    #@12b
    goto/16 :goto_0

    #@12d
    .line 885
    :cond_f
    const-string/jumbo v0, "blockquote"

    #@130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@133
    move-result v0

    #@134
    if-eqz v0, :cond_10

    #@136
    .line 886
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@138
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockquote(Landroid/text/Editable;)V

    #@13b
    goto/16 :goto_0

    #@13d
    .line 887
    :cond_10
    const-string/jumbo v0, "tt"

    #@140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@143
    move-result v0

    #@144
    if-eqz v0, :cond_11

    #@146
    .line 888
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@148
    const-class v1, Landroid/text/HtmlToSpannedConverter$Monospace;

    #@14a
    new-instance v2, Landroid/text/style/TypefaceSpan;

    #@14c
    const-string/jumbo v3, "monospace"

    #@14f
    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    #@152
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@155
    goto/16 :goto_0

    #@157
    .line 889
    :cond_11
    const-string/jumbo v0, "a"

    #@15a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15d
    move-result v0

    #@15e
    if-eqz v0, :cond_12

    #@160
    .line 890
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@162
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endA(Landroid/text/Editable;)V

    #@165
    goto/16 :goto_0

    #@167
    .line 891
    :cond_12
    const-string/jumbo v0, "u"

    #@16a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16d
    move-result v0

    #@16e
    if-eqz v0, :cond_13

    #@170
    .line 892
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@172
    const-class v1, Landroid/text/HtmlToSpannedConverter$Underline;

    #@174
    new-instance v2, Landroid/text/style/UnderlineSpan;

    #@176
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    #@179
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@17c
    goto/16 :goto_0

    #@17e
    .line 893
    :cond_13
    const-string/jumbo v0, "del"

    #@181
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@184
    move-result v0

    #@185
    if-eqz v0, :cond_14

    #@187
    .line 894
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@189
    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    #@18b
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    #@18d
    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    #@190
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@193
    goto/16 :goto_0

    #@195
    .line 895
    :cond_14
    const-string/jumbo v0, "s"

    #@198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19b
    move-result v0

    #@19c
    if-eqz v0, :cond_15

    #@19e
    .line 896
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1a0
    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    #@1a2
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    #@1a4
    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    #@1a7
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@1aa
    goto/16 :goto_0

    #@1ac
    .line 897
    :cond_15
    const-string/jumbo v0, "strike"

    #@1af
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b2
    move-result v0

    #@1b3
    if-eqz v0, :cond_16

    #@1b5
    .line 898
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1b7
    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    #@1b9
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    #@1bb
    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    #@1be
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@1c1
    goto/16 :goto_0

    #@1c3
    .line 899
    :cond_16
    const-string/jumbo v0, "sup"

    #@1c6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c9
    move-result v0

    #@1ca
    if-eqz v0, :cond_17

    #@1cc
    .line 900
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1ce
    const-class v1, Landroid/text/HtmlToSpannedConverter$Super;

    #@1d0
    new-instance v2, Landroid/text/style/SuperscriptSpan;

    #@1d2
    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    #@1d5
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@1d8
    goto/16 :goto_0

    #@1da
    .line 901
    :cond_17
    const-string/jumbo v0, "sub"

    #@1dd
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e0
    move-result v0

    #@1e1
    if-eqz v0, :cond_18

    #@1e3
    .line 902
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1e5
    const-class v1, Landroid/text/HtmlToSpannedConverter$Sub;

    #@1e7
    new-instance v2, Landroid/text/style/SubscriptSpan;

    #@1e9
    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    #@1ec
    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    #@1ef
    goto/16 :goto_0

    #@1f1
    .line 903
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1f4
    move-result v0

    #@1f5
    if-ne v0, v3, :cond_19

    #@1f7
    .line 904
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@1fa
    move-result v0

    #@1fb
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@1fe
    move-result v0

    #@1ff
    const/16 v1, 0x68

    #@201
    if-ne v0, v1, :cond_19

    #@203
    .line 905
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@206
    move-result v0

    #@207
    const/16 v1, 0x31

    #@209
    if-lt v0, v1, :cond_19

    #@20b
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@20e
    move-result v0

    #@20f
    const/16 v1, 0x36

    #@211
    if-gt v0, v1, :cond_19

    #@213
    .line 906
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@215
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endHeading(Landroid/text/Editable;)V

    #@218
    goto/16 :goto_0

    #@21a
    .line 907
    :cond_19
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    #@21c
    if-eqz v0, :cond_0

    #@21e
    .line 908
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    #@220
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@222
    iget-object v2, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    #@224
    invoke-interface {v0, v5, p1, v1, v2}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    #@227
    goto/16 :goto_0
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
    .line 792
    const-string/jumbo v0, "br"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 791
    :cond_0
    :goto_0
    return-void

    #@c
    .line 795
    :cond_1
    const-string/jumbo v0, "p"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 796
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@17
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginParagraph()I

    #@1a
    move-result v1

    #@1b
    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    #@1e
    .line 797
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@20
    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    #@23
    goto :goto_0

    #@24
    .line 798
    :cond_2
    const-string/jumbo v0, "ul"

    #@27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 799
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@2f
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginList()I

    #@32
    move-result v1

    #@33
    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    #@36
    goto :goto_0

    #@37
    .line 800
    :cond_3
    const-string/jumbo v0, "li"

    #@3a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_4

    #@40
    .line 801
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@42
    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startLi(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    #@45
    goto :goto_0

    #@46
    .line 802
    :cond_4
    const-string/jumbo v0, "div"

    #@49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_5

    #@4f
    .line 803
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@51
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginDiv()I

    #@54
    move-result v1

    #@55
    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    #@58
    goto :goto_0

    #@59
    .line 804
    :cond_5
    const-string/jumbo v0, "span"

    #@5c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_6

    #@62
    .line 805
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@64
    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    #@67
    goto :goto_0

    #@68
    .line 806
    :cond_6
    const-string/jumbo v0, "strong"

    #@6b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6e
    move-result v0

    #@6f
    if-eqz v0, :cond_7

    #@71
    .line 807
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@73
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Bold;

    #@75
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Bold;-><init>(Landroid/text/HtmlToSpannedConverter$Bold;)V

    #@78
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@7b
    goto :goto_0

    #@7c
    .line 808
    :cond_7
    const-string/jumbo v0, "b"

    #@7f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@82
    move-result v0

    #@83
    if-eqz v0, :cond_8

    #@85
    .line 809
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@87
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Bold;

    #@89
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Bold;-><init>(Landroid/text/HtmlToSpannedConverter$Bold;)V

    #@8c
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@8f
    goto/16 :goto_0

    #@91
    .line 810
    :cond_8
    const-string/jumbo v0, "em"

    #@94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@97
    move-result v0

    #@98
    if-eqz v0, :cond_9

    #@9a
    .line 811
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@9c
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@9e
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    #@a1
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@a4
    goto/16 :goto_0

    #@a6
    .line 812
    :cond_9
    const-string/jumbo v0, "cite"

    #@a9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ac
    move-result v0

    #@ad
    if-eqz v0, :cond_a

    #@af
    .line 813
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@b1
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@b3
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    #@b6
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 814
    :cond_a
    const-string/jumbo v0, "dfn"

    #@be
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c1
    move-result v0

    #@c2
    if-eqz v0, :cond_b

    #@c4
    .line 815
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@c6
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@c8
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    #@cb
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@ce
    goto/16 :goto_0

    #@d0
    .line 816
    :cond_b
    const-string/jumbo v0, "i"

    #@d3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d6
    move-result v0

    #@d7
    if-eqz v0, :cond_c

    #@d9
    .line 817
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@db
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Italic;

    #@dd
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic;)V

    #@e0
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@e3
    goto/16 :goto_0

    #@e5
    .line 818
    :cond_c
    const-string/jumbo v0, "big"

    #@e8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@eb
    move-result v0

    #@ec
    if-eqz v0, :cond_d

    #@ee
    .line 819
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@f0
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Big;

    #@f2
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Big;-><init>(Landroid/text/HtmlToSpannedConverter$Big;)V

    #@f5
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 820
    :cond_d
    const-string/jumbo v0, "small"

    #@fd
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@100
    move-result v0

    #@101
    if-eqz v0, :cond_e

    #@103
    .line 821
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@105
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Small;

    #@107
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Small;-><init>(Landroid/text/HtmlToSpannedConverter$Small;)V

    #@10a
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@10d
    goto/16 :goto_0

    #@10f
    .line 822
    :cond_e
    const-string/jumbo v0, "font"

    #@112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@115
    move-result v0

    #@116
    if-eqz v0, :cond_f

    #@118
    .line 823
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@11a
    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startFont(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    #@11d
    goto/16 :goto_0

    #@11f
    .line 824
    :cond_f
    const-string/jumbo v0, "blockquote"

    #@122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@125
    move-result v0

    #@126
    if-eqz v0, :cond_10

    #@128
    .line 825
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@12a
    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startBlockquote(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    #@12d
    goto/16 :goto_0

    #@12f
    .line 826
    :cond_10
    const-string/jumbo v0, "tt"

    #@132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@135
    move-result v0

    #@136
    if-eqz v0, :cond_11

    #@138
    .line 827
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@13a
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Monospace;

    #@13c
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Monospace;-><init>(Landroid/text/HtmlToSpannedConverter$Monospace;)V

    #@13f
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@142
    goto/16 :goto_0

    #@144
    .line 828
    :cond_11
    const-string/jumbo v0, "a"

    #@147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14a
    move-result v0

    #@14b
    if-eqz v0, :cond_12

    #@14d
    .line 829
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@14f
    invoke-static {v0, p2}, Landroid/text/HtmlToSpannedConverter;->startA(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    #@152
    goto/16 :goto_0

    #@154
    .line 830
    :cond_12
    const-string/jumbo v0, "u"

    #@157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15a
    move-result v0

    #@15b
    if-eqz v0, :cond_13

    #@15d
    .line 831
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@15f
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Underline;

    #@161
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Underline;-><init>(Landroid/text/HtmlToSpannedConverter$Underline;)V

    #@164
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@167
    goto/16 :goto_0

    #@169
    .line 832
    :cond_13
    const-string/jumbo v0, "del"

    #@16c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16f
    move-result v0

    #@170
    if-eqz v0, :cond_14

    #@172
    .line 833
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@174
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    #@176
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough;)V

    #@179
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@17c
    goto/16 :goto_0

    #@17e
    .line 834
    :cond_14
    const-string/jumbo v0, "s"

    #@181
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@184
    move-result v0

    #@185
    if-eqz v0, :cond_15

    #@187
    .line 835
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@189
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    #@18b
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough;)V

    #@18e
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@191
    goto/16 :goto_0

    #@193
    .line 836
    :cond_15
    const-string/jumbo v0, "strike"

    #@196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@199
    move-result v0

    #@19a
    if-eqz v0, :cond_16

    #@19c
    .line 837
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@19e
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    #@1a0
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough;)V

    #@1a3
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@1a6
    goto/16 :goto_0

    #@1a8
    .line 838
    :cond_16
    const-string/jumbo v0, "sup"

    #@1ab
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1ae
    move-result v0

    #@1af
    if-eqz v0, :cond_17

    #@1b1
    .line 839
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1b3
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Super;

    #@1b5
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Super;-><init>(Landroid/text/HtmlToSpannedConverter$Super;)V

    #@1b8
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@1bb
    goto/16 :goto_0

    #@1bd
    .line 840
    :cond_17
    const-string/jumbo v0, "sub"

    #@1c0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c3
    move-result v0

    #@1c4
    if-eqz v0, :cond_18

    #@1c6
    .line 841
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1c8
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Sub;

    #@1ca
    invoke-direct {v1, v2}, Landroid/text/HtmlToSpannedConverter$Sub;-><init>(Landroid/text/HtmlToSpannedConverter$Sub;)V

    #@1cd
    invoke-static {v0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@1d0
    goto/16 :goto_0

    #@1d2
    .line 842
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d5
    move-result v0

    #@1d6
    const/4 v1, 0x2

    #@1d7
    if-ne v0, v1, :cond_19

    #@1d9
    .line 843
    const/4 v0, 0x0

    #@1da
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@1dd
    move-result v0

    #@1de
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    #@1e1
    move-result v0

    #@1e2
    const/16 v1, 0x68

    #@1e4
    if-ne v0, v1, :cond_19

    #@1e6
    .line 844
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@1e9
    move-result v0

    #@1ea
    const/16 v1, 0x31

    #@1ec
    if-lt v0, v1, :cond_19

    #@1ee
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@1f1
    move-result v0

    #@1f2
    const/16 v1, 0x36

    #@1f4
    if-gt v0, v1, :cond_19

    #@1f6
    .line 845
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1f8
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@1fb
    move-result v1

    #@1fc
    add-int/lit8 v1, v1, -0x31

    #@1fe
    invoke-direct {p0, v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startHeading(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    #@201
    goto/16 :goto_0

    #@203
    .line 846
    :cond_19
    const-string/jumbo v0, "img"

    #@206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@209
    move-result v0

    #@20a
    if-eqz v0, :cond_1a

    #@20c
    .line 847
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@20e
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    #@210
    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startImg(Landroid/text/Editable;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V

    #@213
    goto/16 :goto_0

    #@215
    .line 848
    :cond_1a
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    #@217
    if-eqz v0, :cond_0

    #@219
    .line 849
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    #@21b
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@21d
    iget-object v2, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    #@21f
    invoke-interface {v0, v3, p1, v1, v2}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    #@222
    goto/16 :goto_0
.end method

.method private static varargs setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mark"    # Ljava/lang/Object;
    .param p2, "spans"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1060
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@3
    move-result v2

    #@4
    .line 1061
    .local v2, "where":I
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@7
    .line 1062
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@a
    move-result v0

    #@b
    .line 1063
    .local v0, "len":I
    if-eq v2, v0, :cond_0

    #@d
    .line 1064
    const/4 v3, 0x0

    #@e
    array-length v4, p2

    #@f
    :goto_0
    if-ge v3, v4, :cond_0

    #@11
    aget-object v1, p2, v3

    #@13
    .line 1065
    .local v1, "span":Ljava/lang/Object;
    const/16 v5, 0x21

    #@15
    invoke-interface {p0, v1, v2, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@18
    .line 1064
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1059
    .end local v1    # "span":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private static start(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "mark"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1071
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@3
    move-result v0

    #@4
    .line 1072
    .local v0, "len":I
    const/16 v1, 0x11

    #@6
    invoke-interface {p0, p1, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@9
    .line 1070
    return-void
.end method

.method private static startA(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 1180
    const-string/jumbo v1, ""

    #@3
    const-string/jumbo v2, "href"

    #@6
    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1181
    .local v0, "href":Ljava/lang/String;
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Href;

    #@c
    invoke-direct {v1, v0}, Landroid/text/HtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    #@f
    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@12
    .line 1179
    return-void
.end method

.method private static startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "margin"    # I

    #@0
    .prologue
    .line 967
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@3
    move-result v1

    #@4
    .line 968
    .local v1, "len":I
    if-lez p2, :cond_0

    #@6
    .line 969
    invoke-static {p0, p2}, Landroid/text/HtmlToSpannedConverter;->appendNewlines(Landroid/text/Editable;I)V

    #@9
    .line 970
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Newline;

    #@b
    invoke-direct {v4, p2}, Landroid/text/HtmlToSpannedConverter$Newline;-><init>(I)V

    #@e
    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@11
    .line 973
    :cond_0
    const-string/jumbo v4, ""

    #@14
    const-string/jumbo v5, "style"

    #@17
    invoke-interface {p1, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 974
    .local v3, "style":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@1d
    .line 975
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getTextAlignPattern()Ljava/util/regex/Pattern;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@24
    move-result-object v2

    #@25
    .line 976
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 977
    const/4 v4, 0x1

    #@2c
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 978
    .local v0, "alignment":Ljava/lang/String;
    const-string/jumbo v4, "start"

    #@33
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_2

    #@39
    .line 979
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    #@3b
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@3d
    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    #@40
    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@43
    .line 966
    .end local v0    # "alignment":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    return-void

    #@44
    .line 980
    .restart local v0    # "alignment":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    :cond_2
    const-string/jumbo v4, "center"

    #@47
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_3

    #@4d
    .line 981
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    #@4f
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@51
    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    #@54
    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@57
    goto :goto_0

    #@58
    .line 982
    :cond_3
    const-string/jumbo v4, "end"

    #@5b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5e
    move-result v4

    #@5f
    if-eqz v4, :cond_1

    #@61
    .line 983
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    #@63
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@65
    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    #@68
    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@6b
    goto :goto_0
.end method

.method private startBlockquote(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 1019
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginBlockquote()I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    #@7
    .line 1020
    new-instance v0, Landroid/text/HtmlToSpannedConverter$Blockquote;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, v1}, Landroid/text/HtmlToSpannedConverter$Blockquote;-><init>(Landroid/text/HtmlToSpannedConverter$Blockquote;)V

    #@d
    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@10
    .line 1018
    return-void
.end method

.method private startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 10
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    const/high16 v7, -0x1000000

    #@4
    const/4 v6, 0x1

    #@5
    .line 1084
    const-string/jumbo v4, ""

    #@8
    const-string/jumbo v5, "style"

    #@b
    invoke-interface {p2, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 1085
    .local v2, "style":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@11
    .line 1086
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getForegroundColorPattern()Ljava/util/regex/Pattern;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@18
    move-result-object v1

    #@19
    .line 1087
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 1088
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {p0, v4}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    #@26
    move-result v0

    #@27
    .line 1089
    .local v0, "c":I
    if-eq v0, v8, :cond_0

    #@29
    .line 1090
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Foreground;

    #@2b
    or-int v5, v0, v7

    #@2d
    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Foreground;-><init>(I)V

    #@30
    invoke-static {p1, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@33
    .line 1094
    .end local v0    # "c":I
    :cond_0
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getBackgroundColorPattern()Ljava/util/regex/Pattern;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3a
    move-result-object v1

    #@3b
    .line 1095
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_1

    #@41
    .line 1096
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-direct {p0, v4}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    #@48
    move-result v0

    #@49
    .line 1097
    .restart local v0    # "c":I
    if-eq v0, v8, :cond_1

    #@4b
    .line 1098
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Background;

    #@4d
    or-int v5, v0, v7

    #@4f
    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Background;-><init>(I)V

    #@52
    invoke-static {p1, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@55
    .line 1102
    .end local v0    # "c":I
    :cond_1
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getTextDecorationPattern()Ljava/util/regex/Pattern;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5c
    move-result-object v1

    #@5d
    .line 1103
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_2

    #@63
    .line 1104
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    .line 1105
    .local v3, "textDecoration":Ljava/lang/String;
    const-string/jumbo v4, "line-through"

    #@6a
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6d
    move-result v4

    #@6e
    if-eqz v4, :cond_2

    #@70
    .line 1106
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    #@72
    invoke-direct {v4, v9}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough;)V

    #@75
    invoke-static {p1, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@78
    .line 1083
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "textDecoration":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private startFont(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 1151
    const-string/jumbo v3, ""

    #@3
    const-string/jumbo v4, "color"

    #@6
    invoke-interface {p2, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 1152
    .local v1, "color":Ljava/lang/String;
    const-string/jumbo v3, ""

    #@d
    const-string/jumbo v4, "face"

    #@10
    invoke-interface {p2, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 1154
    .local v2, "face":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 1155
    invoke-direct {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    #@1d
    move-result v0

    #@1e
    .line 1156
    .local v0, "c":I
    const/4 v3, -0x1

    #@1f
    if-eq v0, v3, :cond_0

    #@21
    .line 1157
    new-instance v3, Landroid/text/HtmlToSpannedConverter$Foreground;

    #@23
    const/high16 v4, -0x1000000

    #@25
    or-int/2addr v4, v0

    #@26
    invoke-direct {v3, v4}, Landroid/text/HtmlToSpannedConverter$Foreground;-><init>(I)V

    #@29
    invoke-static {p1, v3}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@2c
    .line 1161
    .end local v0    # "c":I
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_1

    #@32
    .line 1162
    new-instance v3, Landroid/text/HtmlToSpannedConverter$Font;

    #@34
    invoke-direct {v3, v2}, Landroid/text/HtmlToSpannedConverter$Font;-><init>(Ljava/lang/String;)V

    #@37
    invoke-static {p1, v3}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@3a
    .line 1150
    :cond_1
    return-void
.end method

.method private startHeading(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V
    .locals 1
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .param p3, "level"    # I

    #@0
    .prologue
    .line 1029
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginHeading()I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    #@7
    .line 1030
    new-instance v0, Landroid/text/HtmlToSpannedConverter$Heading;

    #@9
    invoke-direct {v0, p3}, Landroid/text/HtmlToSpannedConverter$Heading;-><init>(I)V

    #@c
    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@f
    .line 1028
    return-void
.end method

.method private static startImg(Landroid/text/Editable;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "img"    # Landroid/text/Html$ImageGetter;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1130
    const-string/jumbo v3, ""

    #@4
    const-string/jumbo v4, "src"

    #@7
    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 1131
    .local v2, "src":Ljava/lang/String;
    const/4 v0, 0x0

    #@c
    .line 1133
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    #@e
    .line 1134
    invoke-interface {p2, v2}, Landroid/text/Html$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    .line 1137
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    #@14
    .line 1138
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@17
    move-result-object v3

    #@18
    .line 1139
    const v4, 0x10807ab

    #@1b
    .line 1138
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v0

    #@1f
    .line 1140
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
    .line 1143
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@2d
    move-result v1

    #@2e
    .line 1144
    .local v1, "len":I
    const-string/jumbo v3, "\ufffc"

    #@31
    invoke-interface {p0, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    #@34
    .line 1146
    new-instance v3, Landroid/text/style/ImageSpan;

    #@36
    invoke-direct {v3, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    #@39
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@3c
    move-result v4

    #@3d
    .line 1147
    const/16 v5, 0x21

    #@3f
    .line 1146
    invoke-interface {p0, v3, v1, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@42
    .line 1129
    return-void
.end method

.method private startLi(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 1007
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginListItem()I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    #@7
    .line 1008
    new-instance v0, Landroid/text/HtmlToSpannedConverter$Bullet;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, v1}, Landroid/text/HtmlToSpannedConverter$Bullet;-><init>(Landroid/text/HtmlToSpannedConverter$Bullet;)V

    #@d
    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    #@10
    .line 1009
    invoke-direct {p0, p1, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    #@13
    .line 1006
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
    .line 1229
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 1236
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_5

    #@c
    .line 1237
    add-int v5, v1, p2

    #@e
    aget-char v0, p1, v5

    #@10
    .line 1239
    .local v0, "c":C
    if-eq v0, v7, :cond_0

    #@12
    if-ne v0, v8, :cond_4

    #@14
    .line 1241
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@17
    move-result v2

    #@18
    .line 1243
    .local v2, "len":I
    if-nez v2, :cond_3

    #@1a
    .line 1244
    iget-object v5, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@1c
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    #@1f
    move-result v2

    #@20
    .line 1246
    if-nez v2, :cond_2

    #@22
    .line 1247
    const/16 v3, 0xa

    #@24
    .line 1255
    :goto_1
    if-eq v3, v7, :cond_1

    #@26
    if-eq v3, v8, :cond_1

    #@28
    .line 1256
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 1236
    .end local v2    # "len":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1249
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
    .line 1252
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
    .line 1259
    .end local v2    # "len":I
    .end local v3    # "pred":C
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    goto :goto_2

    #@42
    .line 1263
    .end local v0    # "c":C
    :cond_5
    iget-object v5, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@44
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@47
    .line 1228
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
    .line 756
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    #@5
    invoke-interface {v6, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@8
    .line 758
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
    .line 768
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
    .line 769
    .local v4, "obj":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@28
    .local v3, "i":I
    :goto_0
    array-length v6, v4

    #@29
    if-ge v3, v6, :cond_2

    #@2b
    .line 770
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@2d
    aget-object v7, v4, v3

    #@2f
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@32
    move-result v5

    #@33
    .line 771
    .local v5, "start":I
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@35
    aget-object v7, v4, v3

    #@37
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    #@3a
    move-result v2

    #@3b
    .line 774
    .local v2, "end":I
    add-int/lit8 v6, v2, -0x2

    #@3d
    if-ltz v6, :cond_0

    #@3f
    .line 775
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
    .line 776
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
    .line 777
    add-int/lit8 v2, v2, -0x1

    #@55
    .line 781
    :cond_0
    if-ne v2, v5, :cond_1

    #@57
    .line 782
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    #@59
    aget-object v7, v4, v3

    #@5b
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    #@5e
    .line 769
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@60
    goto :goto_0

    #@61
    .line 762
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "obj":[Ljava/lang/Object;
    .end local v5    # "start":I
    :catch_0
    move-exception v1

    #@62
    .line 764
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@64
    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@67
    throw v6

    #@68
    .line 759
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v0

    #@69
    .line 761
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@6b
    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@6e
    throw v6

    #@6f
    .line 784
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
    .line 788
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
    .line 1210
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
    .line 1225
    invoke-direct {p0, p2}, Landroid/text/HtmlToSpannedConverter;->handleEndTag(Ljava/lang/String;)V

    #@3
    .line 1224
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
    .line 1216
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
    .line 1266
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
    .line 1269
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 1204
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
    .line 1272
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
    .line 1207
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
    .line 1221
    invoke-direct {p0, p2, p4}, Landroid/text/HtmlToSpannedConverter;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@3
    .line 1220
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
    .line 1213
    return-void
.end method
