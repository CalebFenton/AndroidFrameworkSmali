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
        Landroid/text/HtmlToSpannedConverter$Big;,
        Landroid/text/HtmlToSpannedConverter$Small;,
        Landroid/text/HtmlToSpannedConverter$Monospace;,
        Landroid/text/HtmlToSpannedConverter$Underline;,
        Landroid/text/HtmlToSpannedConverter$Strikethrough;,
        Landroid/text/HtmlToSpannedConverter$Super;,
        Landroid/text/HtmlToSpannedConverter$Sub;,
        Landroid/text/HtmlToSpannedConverter$Newline;,
        Landroid/text/HtmlToSpannedConverter$Alignment;,
        Landroid/text/HtmlToSpannedConverter$Bullet;,
        Landroid/text/HtmlToSpannedConverter$Blockquote;,
        Landroid/text/HtmlToSpannedConverter$Heading;,
        Landroid/text/HtmlToSpannedConverter$Foreground;,
        Landroid/text/HtmlToSpannedConverter$Background;,
        Landroid/text/HtmlToSpannedConverter$Font;,
        Landroid/text/HtmlToSpannedConverter$Href;
    }
.end annotation


# static fields
.field private static final blacklist HEADING_SIZES:[F

.field private static blacklist sBackgroundColorPattern:Ljava/util/regex/Pattern;

.field private static final blacklist sColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sForegroundColorPattern:Ljava/util/regex/Pattern;

.field private static blacklist sTextAlignPattern:Ljava/util/regex/Pattern;

.field private static blacklist sTextDecorationPattern:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist mFlags:I

.field private blacklist mImageGetter:Landroid/text/Html$ImageGetter;

.field private blacklist mReader:Lorg/xml/sax/XMLReader;

.field private blacklist mSource:Ljava/lang/String;

.field private blacklist mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private blacklist mTagHandler:Landroid/text/Html$TagHandler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 684
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_5e

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->HEADING_SIZES:[F

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    .line 707
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const v1, -0x565657

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgray"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const v2, -0x7f7f80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gray"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const v3, -0x2c2c2d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lightgray"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const-string v4, "darkgrey"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const-string v1, "grey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const-string v1, "lightgrey"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    const v1, -0xff8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "green"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    return-void

    nop

    :array_5e
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fb33333    # 1.4f
        0x3fa66666    # 1.3f
        0x3f99999a    # 1.2f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;
    .param p4, "parser"    # Lorg/ccil/cowan/tagsoup/Parser;
    .param p5, "flags"    # I

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p1, p0, Landroid/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    .line 750
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 751
    iput-object p2, p0, Landroid/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    .line 752
    iput-object p3, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    .line 753
    iput-object p4, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    .line 754
    iput p5, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    .line 755
    return-void
.end method

.method private static blacklist appendNewlines(Landroid/text/Editable;I)V
    .registers 7
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "minNewline"    # I

    .line 965
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 967
    .local v0, "len":I
    if-nez v0, :cond_7

    .line 968
    return-void

    .line 971
    :cond_7
    const/4 v1, 0x0

    .line 972
    .local v1, "existingNewlines":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_19

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_19

    .line 973
    add-int/lit8 v1, v1, 0x1

    .line 972
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 976
    .end local v2    # "i":I
    :cond_19
    move v2, v1

    .local v2, "j":I
    :goto_1a
    if-ge v2, p1, :cond_24

    .line 977
    const-string v3, "\n"

    invoke-interface {p0, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 979
    .end local v2    # "j":I
    :cond_24
    return-void
.end method

.method private static blacklist end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "kind"    # Ljava/lang/Class;
    .param p2, "repl"    # Ljava/lang/Object;

    .line 1091
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1092
    .local v0, "len":I
    invoke-static {p0, p1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 1093
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_11

    .line 1094
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1096
    :cond_11
    return-void
.end method

.method private static blacklist endA(Landroid/text/Editable;)V
    .registers 4
    .param p0, "text"    # Landroid/text/Editable;

    .line 1200
    const-class v0, Landroid/text/HtmlToSpannedConverter$Href;

    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Href;

    .line 1201
    .local v0, "h":Landroid/text/HtmlToSpannedConverter$Href;
    if-eqz v0, :cond_1c

    .line 1202
    iget-object v1, v0, Landroid/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 1203
    new-instance v1, Landroid/text/style/URLSpan;

    iget-object v2, v0, Landroid/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1206
    :cond_1c
    return-void
.end method

.method private static blacklist endBlockElement(Landroid/text/Editable;)V
    .registers 5
    .param p0, "text"    # Landroid/text/Editable;

    .line 1005
    const-class v0, Landroid/text/HtmlToSpannedConverter$Newline;

    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Newline;

    .line 1006
    .local v0, "n":Landroid/text/HtmlToSpannedConverter$Newline;
    if-eqz v0, :cond_14

    .line 1007
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Newline;->-$$Nest$fgetmNumNewlines(Landroid/text/HtmlToSpannedConverter$Newline;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->appendNewlines(Landroid/text/Editable;I)V

    .line 1008
    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1011
    :cond_14
    const-class v1, Landroid/text/HtmlToSpannedConverter$Alignment;

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/HtmlToSpannedConverter$Alignment;

    .line 1012
    .local v1, "a":Landroid/text/HtmlToSpannedConverter$Alignment;
    if-eqz v1, :cond_2e

    .line 1013
    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    invoke-static {v1}, Landroid/text/HtmlToSpannedConverter$Alignment;->-$$Nest$fgetmAlignment(Landroid/text/HtmlToSpannedConverter$Alignment;)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1015
    :cond_2e
    return-void
.end method

.method private static blacklist endBlockquote(Landroid/text/Editable;)V
    .registers 3
    .param p0, "text"    # Landroid/text/Editable;

    .line 1039
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    .line 1040
    const-class v0, Landroid/text/HtmlToSpannedConverter$Blockquote;

    new-instance v1, Landroid/text/style/QuoteSpan;

    invoke-direct {v1}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1041
    return-void
.end method

.method private static blacklist endCssStyle(Landroid/text/Editable;)V
    .registers 6
    .param p0, "text"    # Landroid/text/Editable;

    .line 1128
    const-class v0, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    .line 1129
    .local v0, "s":Landroid/text/HtmlToSpannedConverter$Strikethrough;
    if-eqz v0, :cond_16

    .line 1130
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1133
    :cond_16
    const-class v1, Landroid/text/HtmlToSpannedConverter$Background;

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/HtmlToSpannedConverter$Background;

    .line 1134
    .local v1, "b":Landroid/text/HtmlToSpannedConverter$Background;
    if-eqz v1, :cond_30

    .line 1135
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v1}, Landroid/text/HtmlToSpannedConverter$Background;->-$$Nest$fgetmBackgroundColor(Landroid/text/HtmlToSpannedConverter$Background;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1138
    :cond_30
    const-class v2, Landroid/text/HtmlToSpannedConverter$Foreground;

    invoke-static {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/HtmlToSpannedConverter$Foreground;

    .line 1139
    .local v2, "f":Landroid/text/HtmlToSpannedConverter$Foreground;
    if-eqz v2, :cond_4a

    .line 1140
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v2}, Landroid/text/HtmlToSpannedConverter$Foreground;->-$$Nest$fgetmForegroundColor(Landroid/text/HtmlToSpannedConverter$Foreground;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1142
    :cond_4a
    return-void
.end method

.method private static blacklist endFont(Landroid/text/Editable;)V
    .registers 5
    .param p0, "text"    # Landroid/text/Editable;

    .line 1182
    const-class v0, Landroid/text/HtmlToSpannedConverter$Font;

    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Font;

    .line 1183
    .local v0, "font":Landroid/text/HtmlToSpannedConverter$Font;
    if-eqz v0, :cond_18

    .line 1184
    new-instance v1, Landroid/text/style/TypefaceSpan;

    iget-object v2, v0, Landroid/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1187
    :cond_18
    const-class v1, Landroid/text/HtmlToSpannedConverter$Foreground;

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/HtmlToSpannedConverter$Foreground;

    .line 1188
    .local v1, "foreground":Landroid/text/HtmlToSpannedConverter$Foreground;
    if-eqz v1, :cond_32

    .line 1189
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v1}, Landroid/text/HtmlToSpannedConverter$Foreground;->-$$Nest$fgetmForegroundColor(Landroid/text/HtmlToSpannedConverter$Foreground;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1192
    :cond_32
    return-void
.end method

.method private static blacklist endHeading(Landroid/text/Editable;)V
    .registers 6
    .param p0, "text"    # Landroid/text/Editable;

    .line 1051
    const-class v0, Landroid/text/HtmlToSpannedConverter$Heading;

    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Heading;

    .line 1052
    .local v0, "h":Landroid/text/HtmlToSpannedConverter$Heading;
    if-eqz v0, :cond_28

    .line 1053
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    sget-object v2, Landroid/text/HtmlToSpannedConverter;->HEADING_SIZES:[F

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Heading;->-$$Nest$fgetmLevel(Landroid/text/HtmlToSpannedConverter$Heading;)I

    move-result v3

    aget v2, v2, v3

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    new-instance v2, Landroid/text/style/StyleSpan;

    .line 1054
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getFontWeightAdjustment()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Landroid/text/style/StyleSpan;-><init>(II)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1053
    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1057
    :cond_28
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    .line 1058
    return-void
.end method

.method private static blacklist endLi(Landroid/text/Editable;)V
    .registers 3
    .param p0, "text"    # Landroid/text/Editable;

    .line 1028
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    .line 1029
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    .line 1030
    const-class v0, Landroid/text/HtmlToSpannedConverter$Bullet;

    new-instance v1, Landroid/text/style/BulletSpan;

    invoke-direct {v1}, Landroid/text/style/BulletSpan;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1031
    return-void
.end method

.method private static blacklist getBackgroundColorPattern()Ljava/util/regex/Pattern;
    .registers 1

    .line 732
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_c

    .line 733
    const-string v0, "(?:\\s+|\\A)background(?:-color)?\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    .line 736
    :cond_c
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static blacklist getFontWeightAdjustment()I
    .registers 1

    .line 858
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 859
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 858
    return v0
.end method

.method private static blacklist getFontWeightAdjustment$ravenwood()I
    .registers 1

    .line 863
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    return v0
.end method

.method private static blacklist getForegroundColorPattern()Ljava/util/regex/Pattern;
    .registers 1

    .line 724
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_c

    .line 725
    const-string v0, "(?:\\s+|\\A)color\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    .line 728
    :cond_c
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private blacklist getHtmlColor(Ljava/lang/String;)I
    .registers 4
    .param p1, "color"    # Ljava/lang/String;

    .line 1209
    iget v0, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1c

    .line 1211
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1212
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1c

    .line 1213
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1221
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2f

    .line 1223
    :try_start_28
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2c} :catch_2d

    return v0

    .line 1224
    :catch_2d
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 1230
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2f
    :try_start_2f
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_33} :catch_34

    return v0

    .line 1231
    :catch_34
    move-exception v0

    .line 1232
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v1
.end method

.method private static blacklist getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p0, "text"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1065
    .local p1, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-interface {p0, v0, v1, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1067
    .local v0, "objs":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    if-nez v1, :cond_e

    .line 1068
    const/4 v1, 0x0

    return-object v1

    .line 1070
    :cond_e
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private blacklist getMargin(I)I
    .registers 3
    .param p1, "flag"    # I

    .line 958
    iget v0, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    .line 959
    const/4 v0, 0x1

    return v0

    .line 961
    :cond_7
    const/4 v0, 0x2

    return v0
.end method

.method private blacklist getMarginBlockquote()I
    .registers 2

    .line 948
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private blacklist getMarginDiv()I
    .registers 2

    .line 944
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private blacklist getMarginHeading()I
    .registers 2

    .line 932
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private blacklist getMarginList()I
    .registers 2

    .line 940
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private blacklist getMarginListItem()I
    .registers 2

    .line 936
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private blacklist getMarginParagraph()I
    .registers 2

    .line 928
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private static blacklist getTextAlignPattern()Ljava/util/regex/Pattern;
    .registers 1

    .line 717
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_c

    .line 718
    const-string v0, "(?:\\s+|\\A)text-align\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    .line 720
    :cond_c
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static blacklist getTextDecorationPattern()Ljava/util/regex/Pattern;
    .registers 1

    .line 740
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_c

    .line 741
    const-string v0, "(?:\\s+|\\A)text-decoration\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    .line 744
    :cond_c
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static blacklist handleBr(Landroid/text/Editable;)V
    .registers 2
    .param p0, "text"    # Landroid/text/Editable;

    .line 1018
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 1019
    return-void
.end method

.method private blacklist handleEndTag(Ljava/lang/String;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 867
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 868
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleBr(Landroid/text/Editable;)V

    goto/16 :goto_224

    .line 869
    :cond_f
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 870
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    .line 871
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    goto/16 :goto_224

    .line 872
    :cond_23
    const-string/jumbo v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 873
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    goto/16 :goto_224

    .line 874
    :cond_33
    const-string v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 875
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endLi(Landroid/text/Editable;)V

    goto/16 :goto_224

    .line 876
    :cond_42
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 877
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    goto/16 :goto_224

    .line 878
    :cond_51
    const-string/jumbo v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 879
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    goto/16 :goto_224

    .line 880
    :cond_61
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7d

    .line 881
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v2, Landroid/text/HtmlToSpannedConverter$Bold;

    new-instance v3, Landroid/text/style/StyleSpan;

    .line 882
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getFontWeightAdjustment()I

    move-result v4

    invoke-direct {v3, v1, v4}, Landroid/text/style/StyleSpan;-><init>(II)V

    .line 881
    invoke-static {v0, v2, v3}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 883
    :cond_7d
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 884
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v2, Landroid/text/HtmlToSpannedConverter$Bold;

    new-instance v3, Landroid/text/style/StyleSpan;

    .line 885
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getFontWeightAdjustment()I

    move-result v4

    invoke-direct {v3, v1, v4}, Landroid/text/style/StyleSpan;-><init>(II)V

    .line 884
    invoke-static {v0, v2, v3}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 886
    :cond_97
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_ae

    .line 887
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v3}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 888
    :cond_ae
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 889
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v3}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 890
    :cond_c4
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 891
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v3}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 892
    :cond_da
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 893
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v3}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 894
    :cond_f0
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 895
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Big;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 896
    :cond_108
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 897
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Small;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 898
    :cond_122
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 899
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endFont(Landroid/text/Editable;)V

    goto/16 :goto_224

    .line 900
    :cond_131
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 901
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockquote(Landroid/text/Editable;)V

    goto/16 :goto_224

    .line 902
    :cond_140
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 903
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Monospace;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 904
    :cond_159
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 905
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endA(Landroid/text/Editable;)V

    goto/16 :goto_224

    .line 906
    :cond_168
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 907
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Underline;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 908
    :cond_17f
    const-string v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_195

    .line 909
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 910
    :cond_195
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 911
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_224

    .line 912
    :cond_1ac
    const-string/jumbo v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 913
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_224

    .line 914
    :cond_1c2
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    .line 915
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Super;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_224

    .line 916
    :cond_1d8
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 917
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Sub;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_224

    .line 918
    :cond_1ee
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_217

    .line 919
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v2, 0x68

    if-ne v0, v2, :cond_217

    .line 920
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    if-lt v0, v2, :cond_217

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_217

    .line 921
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endHeading(Landroid/text/Editable;)V

    goto :goto_224

    .line 922
    :cond_217
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    if-eqz v0, :cond_224

    .line 923
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v3, p1, v1, v2}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    .line 925
    :cond_224
    :goto_224
    return-void
.end method

.method private blacklist handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 795
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_215

    .line 798
    :cond_a
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 799
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginParagraph()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    .line 800
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_215

    .line 801
    :cond_22
    const-string/jumbo v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 802
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginList()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    goto/16 :goto_215

    .line 803
    :cond_36
    const-string v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 804
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startLi(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_215

    .line 805
    :cond_45
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 806
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginDiv()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    goto/16 :goto_215

    .line 807
    :cond_58
    const-string/jumbo v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 808
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_215

    .line 809
    :cond_68
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7e

    .line 810
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Bold;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Bold;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 811
    :cond_7e
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 812
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Bold;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Bold;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 813
    :cond_92
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 814
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 815
    :cond_a6
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 816
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 817
    :cond_ba
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 818
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 819
    :cond_ce
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 820
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 821
    :cond_e2
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 822
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Big;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Big;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 823
    :cond_f6
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 824
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Small;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Small;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 825
    :cond_10b
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 826
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startFont(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_215

    .line 827
    :cond_11a
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 828
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startBlockquote(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_215

    .line 829
    :cond_129
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 830
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Monospace;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Monospace;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 831
    :cond_13e
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 832
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Landroid/text/HtmlToSpannedConverter;->startA(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_215

    .line 833
    :cond_14d
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 834
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Underline;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Underline;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 835
    :cond_162
    const-string v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 836
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 837
    :cond_176
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 838
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 839
    :cond_18b
    const-string/jumbo v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 840
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_215

    .line 841
    :cond_1a0
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 842
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Super;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Super;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_215

    .line 843
    :cond_1b4
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 844
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Sub;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Sub;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_215

    .line 845
    :cond_1c8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1f8

    .line 846
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1f8

    .line 847
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_1f8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x36

    if-gt v0, v3, :cond_1f8

    .line 848
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {p0, v0, p2, v2}, Landroid/text/HtmlToSpannedConverter;->startHeading(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    goto :goto_215

    .line 849
    :cond_1f8
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_208

    .line 850
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startImg(Landroid/text/Editable;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V

    goto :goto_215

    .line 851
    :cond_208
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    if-eqz v0, :cond_215

    .line 852
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v2, p1, v1, v3}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    .line 854
    :cond_215
    :goto_215
    return-void
.end method

.method private static varargs blacklist setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mark"    # Ljava/lang/Object;
    .param p2, "spans"    # [Ljava/lang/Object;

    .line 1075
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1076
    .local v0, "where":I
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1077
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 1078
    .local v1, "len":I
    if-eq v0, v1, :cond_1b

    .line 1079
    array-length v2, p2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1b

    aget-object v4, p2, v3

    .line 1080
    .local v4, "span":Ljava/lang/Object;
    const/16 v5, 0x21

    invoke-interface {p0, v4, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1079
    .end local v4    # "span":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1083
    :cond_1b
    return-void
.end method

.method private static blacklist start(Landroid/text/Editable;Ljava/lang/Object;)V
    .registers 4
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "mark"    # Ljava/lang/Object;

    .line 1086
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1087
    .local v0, "len":I
    const/16 v1, 0x11

    invoke-interface {p0, p1, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1088
    return-void
.end method

.method private static blacklist startA(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .registers 4
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1195
    const-string v0, ""

    const-string v1, "href"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "href":Ljava/lang/String;
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Href;

    invoke-direct {v1, v0}, Landroid/text/HtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1197
    return-void
.end method

.method private static blacklist startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V
    .registers 9
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "margin"    # I

    .line 982
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 983
    .local v0, "len":I
    if-lez p2, :cond_11

    .line 984
    invoke-static {p0, p2}, Landroid/text/HtmlToSpannedConverter;->appendNewlines(Landroid/text/Editable;I)V

    .line 985
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Newline;

    invoke-direct {v1, p2}, Landroid/text/HtmlToSpannedConverter$Newline;-><init>(I)V

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 988
    :cond_11
    const-string v1, ""

    const-string/jumbo v2, "style"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "style":Ljava/lang/String;
    if-eqz v1, :cond_68

    .line 990
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getTextAlignPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 991
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 992
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 993
    .local v3, "alignment":Ljava/lang/String;
    const-string/jumbo v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 994
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_68

    .line 995
    :cond_43
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 996
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_68

    .line 997
    :cond_56
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 998
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1002
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "alignment":Ljava/lang/String;
    :cond_68
    :goto_68
    return-void
.end method

.method private blacklist startBlockquote(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .registers 5
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1034
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginBlockquote()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    .line 1035
    new-instance v0, Landroid/text/HtmlToSpannedConverter$Blockquote;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/HtmlToSpannedConverter$Blockquote;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1036
    return-void
.end method

.method private blacklist startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .registers 11
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1099
    const-string v0, ""

    const-string/jumbo v1, "style"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "style":Ljava/lang/String;
    if-eqz v0, :cond_75

    .line 1101
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getForegroundColorPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1102
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/high16 v3, -0x1000000

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_31

    .line 1103
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v2

    .line 1104
    .local v2, "c":I
    if-eq v2, v4, :cond_31

    .line 1105
    new-instance v6, Landroid/text/HtmlToSpannedConverter$Foreground;

    or-int v7, v2, v3

    invoke-direct {v6, v7}, Landroid/text/HtmlToSpannedConverter$Foreground;-><init>(I)V

    invoke-static {p1, v6}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1109
    .end local v2    # "c":I
    :cond_31
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getBackgroundColorPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1110
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1111
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v2

    .line 1112
    .restart local v2    # "c":I
    if-eq v2, v4, :cond_52

    .line 1113
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Background;

    or-int/2addr v3, v2

    invoke-direct {v4, v3}, Landroid/text/HtmlToSpannedConverter$Background;-><init>(I)V

    invoke-static {p1, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1117
    .end local v2    # "c":I
    :cond_52
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getTextDecorationPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1118
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1119
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, "textDecoration":Ljava/lang/String;
    const-string v3, "line-through"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1121
    new-instance v3, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {p1, v3}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1125
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "textDecoration":Ljava/lang/String;
    :cond_75
    return-void
.end method

.method private blacklist startFont(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .registers 8
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1166
    const-string v0, "color"

    const-string v1, ""

    invoke-interface {p2, v1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "color":Ljava/lang/String;
    const-string v2, "face"

    invoke-interface {p2, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, "face":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1170
    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v2

    .line 1171
    .local v2, "c":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    .line 1172
    new-instance v3, Landroid/text/HtmlToSpannedConverter$Foreground;

    const/high16 v4, -0x1000000

    or-int/2addr v4, v2

    invoke-direct {v3, v4}, Landroid/text/HtmlToSpannedConverter$Foreground;-><init>(I)V

    invoke-static {p1, v3}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1176
    .end local v2    # "c":I
    :cond_26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1177
    new-instance v2, Landroid/text/HtmlToSpannedConverter$Font;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Font;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1179
    :cond_34
    return-void
.end method

.method private blacklist startHeading(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V
    .registers 5
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .param p3, "level"    # I

    .line 1044
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginHeading()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    .line 1045
    new-instance v0, Landroid/text/HtmlToSpannedConverter$Heading;

    invoke-direct {v0, p3}, Landroid/text/HtmlToSpannedConverter$Heading;-><init>(I)V

    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1046
    return-void
.end method

.method private static blacklist startImg(Landroid/text/Editable;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V
    .registers 9
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "img"    # Landroid/text/Html$ImageGetter;

    .line 1145
    const-string v0, ""

    const-string/jumbo v1, "src"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1146
    .local v0, "src":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1148
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_10

    .line 1149
    invoke-interface {p2, v0}, Landroid/text/Html$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1152
    :cond_10
    if-nez v1, :cond_29

    .line 1153
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1154
    const v3, 0x1080a9e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1155
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1158
    :cond_29
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1159
    .local v2, "len":I
    const-string/jumbo v3, "\ufffc"

    invoke-interface {p0, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1161
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {p0, v3, v2, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1163
    return-void
.end method

.method private blacklist startLi(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .registers 5
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1022
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginListItem()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    .line 1023
    new-instance v0, Landroid/text/HtmlToSpannedConverter$Bullet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/HtmlToSpannedConverter$Bullet;-><init>(Landroid/text/HtmlToSpannedConverter-IA;)V

    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1024
    invoke-direct {p0, p1, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    .line 1025
    return-void
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .registers 12
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1269
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, p3, :cond_44

    .line 1270
    add-int v2, v1, p2

    aget-char v2, p1, v2

    .line 1272
    .local v2, "c":C
    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eq v2, v4, :cond_19

    if-ne v2, v3, :cond_15

    goto :goto_19

    .line 1292
    :cond_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 1274
    :cond_19
    :goto_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 1276
    .local v5, "len":I
    if-nez v5, :cond_33

    .line 1277
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1279
    if-nez v5, :cond_2a

    .line 1280
    const/16 v6, 0xa

    .local v6, "pred":C
    goto :goto_39

    .line 1282
    .end local v6    # "pred":C
    :cond_2a
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    .restart local v6    # "pred":C
    goto :goto_39

    .line 1285
    .end local v6    # "pred":C
    :cond_33
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1288
    .restart local v6    # "pred":C
    :goto_39
    if-eq v6, v4, :cond_40

    if-eq v6, v3, :cond_40

    .line 1289
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1291
    .end local v5    # "len":I
    .end local v6    # "pred":C
    :cond_40
    nop

    .line 1269
    .end local v2    # "c":C
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1296
    .end local v1    # "i":I
    :cond_44
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1297
    return-void
.end method

.method public blacklist convert()Landroid/text/Spanned;
    .registers 8

    .line 759
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 761
    :try_start_5
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Landroid/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_76
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_16} :catch_6f

    .line 768
    nop

    .line 771
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ParagraphStyle;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 772
    .local v0, "obj":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_6c

    .line 773
    iget-object v2, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 774
    .local v2, "start":I
    iget-object v3, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 777
    .local v3, "end":I
    add-int/lit8 v4, v3, -0x2

    if-ltz v4, :cond_56

    .line 778
    iget-object v4, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_56

    iget-object v4, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v3, -0x2

    .line 779
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_56

    .line 780
    add-int/lit8 v3, v3, -0x1

    .line 784
    :cond_56
    if-ne v3, v2, :cond_60

    .line 785
    iget-object v4, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    goto :goto_69

    .line 787
    :cond_60
    iget-object v4, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v5, v0, v1

    const/16 v6, 0x33

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 772
    .end local v2    # "start":I
    .end local v3    # "end":I
    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 791
    .end local v1    # "i":I
    :cond_6c
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v1

    .line 765
    .end local v0    # "obj":[Ljava/lang/Object;
    :catch_6f
    move-exception v0

    .line 767
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 762
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_76
    move-exception v0

    .line 764
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1244
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1258
    invoke-direct {p0, p2}, Landroid/text/HtmlToSpannedConverter;->handleEndTag(Ljava/lang/String;)V

    .line 1259
    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1250
    return-void
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1300
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1303
    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 1238
    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1306
    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1241
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1254
    invoke-direct {p0, p2, p4}, Landroid/text/HtmlToSpannedConverter;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1255
    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1247
    return-void
.end method
