.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$ImageGetter;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$HtmlParser;
    }
.end annotation


# static fields
.field public static final whitelist FROM_HTML_MODE_COMPACT:I = 0x3f

.field public static final whitelist FROM_HTML_MODE_LEGACY:I = 0x0

.field public static final whitelist FROM_HTML_OPTION_USE_CSS_COLORS:I = 0x100

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE:I = 0x20

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_DIV:I = 0x10

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_HEADING:I = 0x2

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_LIST:I = 0x8

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM:I = 0x4

.field public static final whitelist FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH:I = 0x1

.field private static final greylist-max-o TO_HTML_PARAGRAPH_FLAG:I = 0x1

.field public static final whitelist TO_HTML_PARAGRAPH_LINES_CONSECUTIVE:I = 0x0

.field public static final whitelist TO_HTML_PARAGRAPH_LINES_INDIVIDUAL:I = 0x1


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .registers 13
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "option"    # I

    .line 293
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    .line 296
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_8f

    .line 297
    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 298
    .local v2, "next":I
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    .line 299
    .local v3, "style":[Landroid/text/style/ParagraphStyle;
    const-string v4, " "

    .line 300
    .local v4, "elements":Ljava/lang/String;
    const/4 v5, 0x0

    .line 302
    .local v5, "needDiv":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_19
    array-length v7, v3

    if-ge v6, v7, :cond_71

    .line 303
    aget-object v7, v3, v6

    instance-of v7, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v7, :cond_6e

    .line 304
    aget-object v7, v3, v6

    check-cast v7, Landroid/text/style/AlignmentSpan;

    .line 305
    invoke-interface {v7}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v7

    .line 306
    .local v7, "align":Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 307
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_43

    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6e

    .line 309
    :cond_43
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_5b

    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6e

    .line 312
    :cond_5b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 302
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_6e
    :goto_6e
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 316
    .end local v6    # "j":I
    :cond_71
    if-eqz v5, :cond_82

    .line 317
    const-string v6, "<div "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_82
    invoke-static {p0, p1, v1, v2, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 322
    if-eqz v5, :cond_8c

    .line 323
    const-string v6, "</div>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .end local v3    # "style":[Landroid/text/style/ParagraphStyle;
    .end local v4    # "elements":Ljava/lang/String;
    .end local v5    # "needDiv":Z
    :cond_8c
    move v1, v2

    goto/16 :goto_5

    .line 326
    .end local v1    # "i":I
    .end local v2    # "next":I
    :cond_8f
    return-void
.end method

.method public static whitelist escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 201
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 11
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;

    .line 234
    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    move-object v5, v0

    .line 236
    .local v5, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_6
    const-string v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->-$$Nest$sfgetschema()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_6 .. :try_end_f} :catch_2a
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_6 .. :try_end_f} :catch_1e

    .line 243
    nop

    .line 245
    new-instance v1, Landroid/text/HtmlToSpannedConverter;

    move-object v2, p0

    move v6, p1

    move-object v3, p2

    move-object v4, p3

    .end local p0    # "source":Ljava/lang/String;
    .end local p1    # "flags":I
    .end local p2    # "imageGetter":Landroid/text/Html$ImageGetter;
    .end local p3    # "tagHandler":Landroid/text/Html$TagHandler;
    .local v2, "source":Ljava/lang/String;
    .local v3, "imageGetter":Landroid/text/Html$ImageGetter;
    .local v4, "tagHandler":Landroid/text/Html$TagHandler;
    .local v6, "flags":I
    invoke-direct/range {v1 .. v6}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V

    .line 247
    .local v1, "converter":Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v1}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    .line 240
    .end local v1    # "converter":Landroid/text/HtmlToSpannedConverter;
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "imageGetter":Landroid/text/Html$ImageGetter;
    .end local v4    # "tagHandler":Landroid/text/Html$TagHandler;
    .end local v6    # "flags":I
    .restart local p0    # "source":Ljava/lang/String;
    .restart local p1    # "flags":I
    .restart local p2    # "imageGetter":Landroid/text/Html$ImageGetter;
    .restart local p3    # "tagHandler":Landroid/text/Html$TagHandler;
    :catch_1e
    move-exception v0

    move-object v2, p0

    move v6, p1

    move-object v3, p2

    move-object v4, p3

    move-object p0, v0

    .line 242
    .end local p1    # "flags":I
    .end local p2    # "imageGetter":Landroid/text/Html$ImageGetter;
    .end local p3    # "tagHandler":Landroid/text/Html$TagHandler;
    .restart local v2    # "source":Ljava/lang/String;
    .restart local v3    # "imageGetter":Landroid/text/Html$ImageGetter;
    .restart local v4    # "tagHandler":Landroid/text/Html$TagHandler;
    .restart local v6    # "flags":I
    .local p0, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 237
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "imageGetter":Landroid/text/Html$ImageGetter;
    .end local v4    # "tagHandler":Landroid/text/Html$TagHandler;
    .end local v6    # "flags":I
    .local p0, "source":Ljava/lang/String;
    .restart local p1    # "flags":I
    .restart local p2    # "imageGetter":Landroid/text/Html$ImageGetter;
    .restart local p3    # "tagHandler":Landroid/text/Html$TagHandler;
    :catch_2a
    move-exception v0

    move-object v2, p0

    move v6, p1

    move-object v3, p2

    move-object v4, p3

    move-object p0, v0

    .line 239
    .end local p1    # "flags":I
    .end local p2    # "imageGetter":Landroid/text/Html$ImageGetter;
    .end local p3    # "tagHandler":Landroid/text/Html$TagHandler;
    .restart local v2    # "source":Ljava/lang/String;
    .restart local v3    # "imageGetter":Landroid/text/Html$ImageGetter;
    .restart local v4    # "tagHandler":Landroid/text/Html$TagHandler;
    .restart local v6    # "flags":I
    .local p0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static whitelist fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p2, "tagHandler"    # Landroid/text/Html$TagHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDisplayMetricsDensity()F
    .registers 1

    .line 512
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private static blacklist getDisplayMetricsDensity$ravenwood()F
    .registers 1

    .line 516
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private static greylist-max-o getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 348
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sub-int v1, p2, p1

    invoke-interface {v0, p0, p1, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 349
    const-string v0, " dir=\"rtl\""

    return-object v0

    .line 351
    :cond_d
    const-string v0, " dir=\"ltr\""

    return-object v0
.end method

.method private static greylist-max-o getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;
    .registers 12
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "forceNoVerticalMargin"    # Z
    .param p4, "includeTextAlign"    # Z

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "margin":Ljava/lang/String;
    const/4 v1, 0x0

    .line 360
    .local v1, "textAlign":Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 361
    const-string v0, "margin-top:0; margin-bottom:0;"

    .line 363
    :cond_6
    if-eqz p4, :cond_3f

    .line 364
    const-class v2, Landroid/text/style/AlignmentSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    .line 367
    .local v2, "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_13
    if-ltz v3, :cond_3f

    .line 368
    aget-object v4, v2, v3

    .line 369
    .local v4, "s":Landroid/text/style/AlignmentSpan;
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x33

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3c

    .line 370
    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 371
    .local v5, "alignment":Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_2c

    .line 372
    const-string/jumbo v1, "text-align:start;"

    goto :goto_3f

    .line 373
    :cond_2c
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_34

    .line 374
    const-string/jumbo v1, "text-align:center;"

    goto :goto_3f

    .line 375
    :cond_34
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_3f

    .line 376
    const-string/jumbo v1, "text-align:end;"

    goto :goto_3f

    .line 367
    .end local v4    # "s":Landroid/text/style/AlignmentSpan;
    .end local v5    # "alignment":Landroid/text/Layout$Alignment;
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 383
    .end local v2    # "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    .end local v3    # "i":I
    :cond_3f
    :goto_3f
    if-nez v0, :cond_46

    if-nez v1, :cond_46

    .line 384
    const-string v2, ""

    return-object v2

    .line 387
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " style=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .local v2, "style":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_5f

    if-eqz v1, :cond_5f

    .line 389
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 390
    :cond_5f
    if-eqz v0, :cond_65

    .line 391
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 392
    :cond_65
    if-eqz v1, :cond_6a

    .line 393
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_6a
    :goto_6a
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 2
    .param p0, "text"    # Landroid/text/Spanned;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "option"    # I

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .registers 6
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    .line 401
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_8

    .line 402
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    goto :goto_b

    .line 404
    :cond_8
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 406
    :goto_b
    return-void
.end method

.method private static greylist-max-o withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 475
    const-string v0, "<p"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    move v1, p2

    .local v1, "i":I
    :goto_14
    const-string v3, "</p>\n"

    if-ge v1, p3, :cond_5e

    .line 479
    const/16 v4, 0xa

    invoke-static {p1, v4, v1, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    .line 480
    .local v5, "next":I
    if-gez v5, :cond_21

    .line 481
    move v5, p3

    .line 484
    :cond_21
    const/4 v6, 0x0

    .line 486
    .local v6, "nl":I
    :goto_22
    if-ge v5, p3, :cond_2f

    invoke-interface {p1, v5}, Landroid/text/Spanned;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_2f

    .line 487
    add-int/lit8 v6, v6, 0x1

    .line 488
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 491
    :cond_2f
    sub-int v4, v5, v6

    invoke-static {p0, p1, v1, v4}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 493
    const/4 v4, 0x1

    if-ne v6, v4, :cond_3d

    .line 494
    const-string v3, "<br>\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 496
    :cond_3d
    const/4 v4, 0x2

    .local v4, "j":I
    :goto_3e
    if-ge v4, v6, :cond_48

    .line 497
    const-string v7, "<br>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 499
    .end local v4    # "j":I
    :cond_48
    if-eq v5, p3, :cond_5c

    .line 501
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .end local v6    # "nl":I
    :cond_5c
    :goto_5c
    move v1, v5

    goto :goto_14

    .line 507
    .end local v1    # "i":I
    .end local v5    # "next":I
    :cond_5e
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    return-void
.end method

.method private static greylist-max-o withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 20
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 412
    .local v3, "isInList":Z
    move/from16 v4, p2

    .local v4, "i":I
    :goto_9
    if-gt v4, v2, :cond_ad

    .line 413
    const/16 v5, 0xa

    invoke-static {v1, v5, v4, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    .line 414
    .local v5, "next":I
    if-gez v5, :cond_15

    .line 415
    move/from16 v5, p3

    .line 418
    :cond_15
    const-string v6, "</ul>\n"

    if-ne v5, v4, :cond_26

    .line 419
    if-eqz v3, :cond_1f

    .line 421
    const/4 v3, 0x0

    .line 422
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_1f
    const-string v6, "<br>\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a8

    .line 426
    :cond_26
    const/4 v7, 0x0

    .line 427
    .local v7, "isListItem":Z
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {v1, v4, v5, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ParagraphStyle;

    .line 428
    .local v8, "paragraphStyles":[Landroid/text/style/ParagraphStyle;
    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_32
    if-ge v11, v9, :cond_49

    aget-object v12, v8, v11

    .line 429
    .local v12, "paragraphStyle":Landroid/text/style/ParagraphStyle;
    invoke-interface {v1, v12}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    .line 430
    .local v13, "spanFlags":I
    and-int/lit8 v14, v13, 0x33

    const/16 v15, 0x33

    if-ne v14, v15, :cond_46

    instance-of v14, v12, Landroid/text/style/BulletSpan;

    if-eqz v14, :cond_46

    .line 432
    const/4 v7, 0x1

    .line 433
    goto :goto_49

    .line 428
    .end local v12    # "paragraphStyle":Landroid/text/style/ParagraphStyle;
    .end local v13    # "spanFlags":I
    :cond_46
    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    .line 437
    :cond_49
    :goto_49
    const-string v9, ">\n"

    const/4 v11, 0x1

    if-eqz v7, :cond_62

    if-nez v3, :cond_62

    .line 439
    const/4 v3, 0x1

    .line 440
    const-string v12, "<ul"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 441
    invoke-static {v1, v4, v5, v11, v10}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 442
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_62
    if-eqz v3, :cond_6a

    if-nez v7, :cond_6a

    .line 447
    const/4 v3, 0x0

    .line 448
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_6a
    if-eqz v7, :cond_6f

    const-string v10, "li"

    goto :goto_71

    :cond_6f
    const-string v10, "p"

    .line 452
    .local v10, "tagType":Ljava/lang/String;
    :goto_71
    const-string v12, "<"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 453
    invoke-static {v1, v4, v5}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    xor-int/lit8 v13, v7, 0x1

    .line 454
    invoke-static {v1, v4, v5, v13, v11}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 455
    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-static {v0, v1, v4, v5}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 459
    const-string v11, "</"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    if-ne v5, v2, :cond_a8

    if-eqz v3, :cond_a8

    .line 464
    const/4 v3, 0x0

    .line 465
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .end local v7    # "isListItem":Z
    .end local v8    # "paragraphStyles":[Landroid/text/style/ParagraphStyle;
    .end local v10    # "tagType":Ljava/lang/String;
    :cond_a8
    :goto_a8
    add-int/lit8 v5, v5, 0x1

    .line 412
    move v4, v5

    goto/16 :goto_9

    .line 471
    .end local v4    # "i":I
    .end local v5    # "next":I
    :cond_ad
    return-void
.end method

.method private static greylist-max-o withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .registers 13
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    .line 331
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_32

    .line 332
    const-class v1, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, p3, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 333
    .local v1, "next":I
    const-class v2, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/QuoteSpan;

    .line 335
    .local v2, "quotes":[Landroid/text/style/QuoteSpan;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_14
    if-ge v5, v3, :cond_20

    aget-object v6, v2, v5

    .line 336
    .local v6, "quote":Landroid/text/style/QuoteSpan;
    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .end local v6    # "quote":Landroid/text/style/QuoteSpan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 339
    :cond_20
    invoke-static {p0, p1, v0, v1, p4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 341
    array-length v3, v2

    :goto_24
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 342
    .local v5, "quote":Landroid/text/style/QuoteSpan;
    const-string v6, "</blockquote>\n"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .end local v5    # "quote":Landroid/text/style/QuoteSpan;
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 331
    .end local v2    # "quotes":[Landroid/text/style/QuoteSpan;
    :cond_30
    move v0, v1

    goto :goto_1

    .line 345
    .end local v0    # "i":I
    .end local v1    # "next":I
    :cond_32
    return-void
.end method

.method private static greylist-max-o withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .registers 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "option"    # I

    .line 284
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_8

    .line 285
    invoke-static {p0, p1, p2}, Landroid/text/Html;->encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    .line 286
    return-void

    .line 289
    :cond_8
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    .line 290
    return-void
.end method

.method private static greylist-max-o withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 521
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_1e6

    .line 522
    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, p3, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 523
    .local v1, "next":I
    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 525
    .local v2, "style":[Landroid/text/style/CharacterStyle;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_12
    array-length v4, v2

    const-string v5, "monospace"

    if-ge v3, v4, :cond_143

    .line 526
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/StyleSpan;

    if-eqz v4, :cond_37

    .line 527
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/StyleSpan;

    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v4

    .line 529
    .local v4, "s":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_2e

    .line 530
    const-string v6, "<b>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_2e
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_37

    .line 533
    const-string v6, "<i>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .end local v4    # "s":I
    :cond_37
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/TypefaceSpan;

    if-eqz v4, :cond_50

    .line 537
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v4}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 540
    const-string v5, "<tt>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .end local v4    # "s":Ljava/lang/String;
    :cond_50
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/SuperscriptSpan;

    if-eqz v4, :cond_5b

    .line 544
    const-string v4, "<sup>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_5b
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/SubscriptSpan;

    if-eqz v4, :cond_66

    .line 547
    const-string v4, "<sub>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_66
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/UnderlineSpan;

    if-eqz v4, :cond_71

    .line 550
    const-string v4, "<u>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_71
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/StrikethroughSpan;

    if-eqz v4, :cond_7c

    .line 553
    const-string v4, "<span style=\"text-decoration:line-through;\">"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_7c
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/URLSpan;

    const-string v5, "\">"

    if-eqz v4, :cond_97

    .line 556
    const-string v4, "<a href=\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/URLSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_97
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/ImageSpan;

    if-eqz v4, :cond_b1

    .line 561
    const-string v4, "<img src=\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/ImageSpan;

    invoke-virtual {v4}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    move v0, v1

    .line 568
    :cond_b1
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v4, :cond_dc

    .line 569
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/AbsoluteSizeSpan;

    .line 570
    .local v4, "s":Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v4}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v5

    int-to-float v5, v5

    .line 571
    .local v5, "sizeDip":F
    invoke-virtual {v4}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v6

    if-nez v6, :cond_cb

    .line 572
    invoke-static {}, Landroid/text/Html;->getDisplayMetricsDensity()F

    move-result v6

    div-float/2addr v5, v6

    .line 576
    :cond_cb
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "<span style=\"font-size:%.0fpx\";>"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .end local v4    # "s":Landroid/text/style/AbsoluteSizeSpan;
    .end local v5    # "sizeDip":F
    :cond_dc
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/RelativeSizeSpan;

    if-eqz v4, :cond_fb

    .line 579
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v4}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v4

    .line 580
    .local v4, "sizeEm":F
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "<span style=\"font-size:%.2fem;\">"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .end local v4    # "sizeEm":F
    :cond_fb
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/ForegroundColorSpan;

    const v5, 0xffffff

    if-eqz v4, :cond_11f

    .line 583
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v4}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v4

    .line 584
    .local v4, "color":I
    and-int v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "<span style=\"color:#%06X;\">"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .end local v4    # "color":I
    :cond_11f
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/BackgroundColorSpan;

    if-eqz v4, :cond_13f

    .line 587
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v4}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v4

    .line 588
    .restart local v4    # "color":I
    and-int/2addr v5, v4

    .line 589
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 588
    const-string v6, "<span style=\"background-color:#%06X;\">"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .end local v4    # "color":I
    :cond_13f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    .line 593
    .end local v3    # "j":I
    :cond_143
    invoke-static {p0, p1, v0, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 595
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "j":I
    :goto_149
    if-ltz v3, :cond_1e3

    .line 596
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/BackgroundColorSpan;

    const-string v6, "</span>"

    if-eqz v4, :cond_156

    .line 597
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_156
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/ForegroundColorSpan;

    if-eqz v4, :cond_15f

    .line 600
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_15f
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/RelativeSizeSpan;

    if-eqz v4, :cond_168

    .line 603
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    :cond_168
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v4, :cond_171

    .line 606
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_171
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/URLSpan;

    if-eqz v4, :cond_17c

    .line 609
    const-string v4, "</a>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_17c
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/StrikethroughSpan;

    if-eqz v4, :cond_185

    .line 612
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_185
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/UnderlineSpan;

    if-eqz v4, :cond_190

    .line 615
    const-string v4, "</u>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_190
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/SubscriptSpan;

    if-eqz v4, :cond_19b

    .line 618
    const-string v4, "</sub>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_19b
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/SuperscriptSpan;

    if-eqz v4, :cond_1a6

    .line 621
    const-string v4, "</sup>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_1a6
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/TypefaceSpan;

    if-eqz v4, :cond_1bf

    .line 624
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v4}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v4

    .line 626
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bf

    .line 627
    const-string v6, "</tt>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .end local v4    # "s":Ljava/lang/String;
    :cond_1bf
    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/StyleSpan;

    if-eqz v4, :cond_1df

    .line 631
    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/StyleSpan;

    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v4

    .line 633
    .local v4, "s":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_1d6

    .line 634
    const-string v6, "</b>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_1d6
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_1df

    .line 637
    const-string v6, "</i>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .end local v4    # "s":I
    :cond_1df
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_149

    .line 521
    .end local v2    # "style":[Landroid/text/style/CharacterStyle;
    .end local v3    # "j":I
    :cond_1e3
    move v0, v1

    goto/16 :goto_1

    .line 642
    .end local v0    # "i":I
    .end local v1    # "next":I
    :cond_1e6
    return-void
.end method

.method private static greylist-max-r withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 647
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_97

    .line 648
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 650
    .local v1, "c":C
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_12

    .line 651
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_93

    .line 652
    :cond_12
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1d

    .line 653
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_93

    .line 654
    :cond_1d
    const/16 v2, 0x26

    if-ne v1, v2, :cond_28

    .line 655
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_93

    .line 656
    :cond_28
    const-string v2, ";"

    const-string v3, "&#"

    const v4, 0xd800

    if-lt v1, v4, :cond_61

    const v5, 0xdfff

    if-gt v1, v5, :cond_61

    .line 657
    const v6, 0xdc00

    if-ge v1, v6, :cond_93

    add-int/lit8 v7, v0, 0x1

    if-ge v7, p3, :cond_93

    .line 658
    add-int/lit8 v7, v0, 0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 659
    .local v7, "d":C
    if-lt v7, v6, :cond_60

    if-gt v7, v5, :cond_60

    .line 660
    add-int/lit8 v0, v0, 0x1

    .line 661
    sub-int v4, v1, v4

    shl-int/lit8 v4, v4, 0xa

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    sub-int v5, v7, v6

    or-int/2addr v4, v5

    .line 662
    .local v4, "codepoint":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .end local v4    # "codepoint":I
    .end local v7    # "d":C
    :cond_60
    goto :goto_93

    .line 665
    :cond_61
    const/16 v4, 0x7e

    if-gt v1, v4, :cond_88

    const/16 v4, 0x20

    if-ge v1, v4, :cond_6a

    goto :goto_88

    .line 667
    :cond_6a
    if-ne v1, v4, :cond_84

    .line 668
    :goto_6c
    add-int/lit8 v2, v0, 0x1

    if-ge v2, p3, :cond_80

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_80

    .line 669
    const-string v2, "&nbsp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 673
    :cond_80
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 675
    :cond_84
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 666
    :cond_88
    :goto_88
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .end local v1    # "c":C
    :cond_93
    :goto_93
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 678
    .end local v0    # "i":I
    :cond_97
    return-void
.end method
