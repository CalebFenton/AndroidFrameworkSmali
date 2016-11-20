.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$ImageGetter;,
        Landroid/text/Html$TagHandler;
    }
.end annotation


# static fields
.field public static final FROM_HTML_MODE_COMPACT:I = 0x3f

.field public static final FROM_HTML_MODE_LEGACY:I = 0x0

.field public static final FROM_HTML_OPTION_USE_CSS_COLORS:I = 0x100

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE:I = 0x20

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_DIV:I = 0x10

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_HEADING:I = 0x2

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST:I = 0x8

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM:I = 0x4

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH:I = 0x1

.field private static final TO_HTML_PARAGRAPH_FLAG:I = 0x1

.field public static final TO_HTML_PARAGRAPH_LINES_CONSECUTIVE:I = 0x0

.field public static final TO_HTML_PARAGRAPH_LINES_INDIVIDUAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "option"    # I

    #@0
    .prologue
    .line 291
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    #@3
    move-result v4

    #@4
    .line 294
    .local v4, "len":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    #@7
    .line 295
    const-class v8, Landroid/text/style/ParagraphStyle;

    #@9
    invoke-interface {p1, v2, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@c
    move-result v6

    #@d
    .line 296
    .local v6, "next":I
    const-class v8, Landroid/text/style/ParagraphStyle;

    #@f
    invoke-interface {p1, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@12
    move-result-object v7

    #@13
    check-cast v7, [Landroid/text/style/ParagraphStyle;

    #@15
    .line 297
    .local v7, "style":[Landroid/text/style/ParagraphStyle;
    const-string/jumbo v1, " "

    #@18
    .line 298
    .local v1, "elements":Ljava/lang/String;
    const/4 v5, 0x0

    #@19
    .line 300
    .local v5, "needDiv":Z
    const/4 v3, 0x0

    #@1a
    .local v3, "j":I
    :goto_1
    array-length v8, v7

    #@1b
    if-ge v3, v8, :cond_3

    #@1d
    .line 301
    aget-object v8, v7, v3

    #@1f
    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    #@21
    if-eqz v8, :cond_0

    #@23
    .line 303
    aget-object v8, v7, v3

    #@25
    check-cast v8, Landroid/text/style/AlignmentSpan;

    #@27
    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    #@2a
    move-result-object v0

    #@2b
    .line 304
    .local v0, "align":Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    #@2c
    .line 305
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@2e
    if-ne v0, v8, :cond_1

    #@30
    .line 306
    new-instance v8, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v9, "align=\"center\" "

    #@38
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 300
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@46
    goto :goto_1

    #@47
    .line 307
    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@49
    if-ne v0, v8, :cond_2

    #@4b
    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v9, "align=\"right\" "

    #@53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    goto :goto_2

    #@60
    .line 310
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v9, "align=\"left\" "

    #@68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    goto :goto_2

    #@75
    .line 314
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_3
    if-eqz v5, :cond_4

    #@77
    .line 315
    const-string/jumbo v8, "<div "

    #@7a
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v8

    #@82
    const-string/jumbo v9, ">"

    #@85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 318
    :cond_4
    invoke-static {p0, p1, v2, v6, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    #@8b
    .line 320
    if-eqz v5, :cond_5

    #@8d
    .line 321
    const-string/jumbo v8, "</div>"

    #@90
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 294
    :cond_5
    move v2, v6

    #@94
    goto/16 :goto_0

    #@96
    .line 290
    .end local v1    # "elements":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "needDiv":Z
    .end local v6    # "next":I
    .end local v7    # "style":[Landroid/text/style/ParagraphStyle;
    :cond_6
    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 277
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, p0, v2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    #@d
    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 188
    const/4 v0, 0x0

    #@2
    invoke-static {p0, v0, v1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 199
    invoke-static {p0, p1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;

    #@0
    .prologue
    .line 232
    new-instance v4, Lorg/ccil/cowan/tagsoup/Parser;

    #@2
    invoke-direct {v4}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    #@5
    .line 234
    .local v4, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    #@8
    invoke-static {}, Landroid/text/Html$HtmlParser;->-get0()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v4, v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 244
    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    #@11
    move-object v1, p0

    #@12
    move-object v2, p2

    #@13
    move-object v3, p3

    #@14
    move v5, p1

    #@15
    invoke-direct/range {v0 .. v5}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V

    #@18
    .line 245
    .local v0, "converter":Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 238
    .end local v0    # "converter":Landroid/text/HtmlToSpannedConverter;
    :catch_0
    move-exception v7

    #@1e
    .line 240
    .local v7, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@20
    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@23
    throw v1

    #@24
    .line 235
    .end local v7    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_1
    move-exception v6

    #@25
    .line 237
    .local v6, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@27
    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@2a
    throw v1
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p2, "tagHandler"    # Landroid/text/Html$TagHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 219
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 346
    sub-int v1, p2, p1

    #@3
    .line 347
    .local v1, "len":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    #@6
    move-result-object v2

    #@7
    .line 348
    .local v2, "levels":[B
    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    #@a
    move-result-object v0

    #@b
    .line 349
    .local v0, "buffer":[C
    invoke-static {p0, p1, p2, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@e
    .line 351
    const/4 v4, 0x2

    #@f
    invoke-static {v4, v0, v2, v1, v5}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    #@12
    move-result v3

    #@13
    .line 353
    .local v3, "paraDir":I
    packed-switch v3, :pswitch_data_0

    #@16
    .line 358
    const-string/jumbo v4, " dir=\"ltr\""

    #@19
    return-object v4

    #@1a
    .line 355
    :pswitch_0
    const-string/jumbo v4, " dir=\"rtl\""

    #@1d
    return-object v4

    #@1e
    .line 353
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;
    .locals 9
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "forceNoVerticalMargin"    # Z
    .param p4, "includeTextAlign"    # Z

    #@0
    .prologue
    .line 364
    const/4 v3, 0x0

    #@1
    .line 365
    .local v3, "margin":Ljava/lang/String;
    const/4 v6, 0x0

    #@2
    .line 367
    .local v6, "textAlign":Ljava/lang/String;
    if-eqz p3, :cond_0

    #@4
    .line 368
    const-string/jumbo v3, "margin-top:0; margin-bottom:0;"

    #@7
    .line 370
    .end local v3    # "margin":Ljava/lang/String;
    :cond_0
    if-eqz p4, :cond_1

    #@9
    .line 371
    const-class v7, Landroid/text/style/AlignmentSpan;

    #@b
    invoke-interface {p0, p1, p2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, [Landroid/text/style/AlignmentSpan;

    #@11
    .line 374
    .local v1, "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    array-length v7, v1

    #@12
    add-int/lit8 v2, v7, -0x1

    #@14
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@16
    .line 375
    aget-object v4, v1, v2

    #@18
    .line 376
    .local v4, "s":Landroid/text/style/AlignmentSpan;
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@1b
    move-result v7

    #@1c
    and-int/lit8 v7, v7, 0x33

    #@1e
    const/16 v8, 0x33

    #@20
    if-ne v7, v8, :cond_4

    #@22
    .line 377
    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    #@25
    move-result-object v0

    #@26
    .line 378
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@28
    if-ne v0, v7, :cond_2

    #@2a
    .line 379
    const-string/jumbo v6, "text-align:start;"

    #@2d
    .line 390
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    .end local v1    # "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    .end local v2    # "i":I
    .end local v4    # "s":Landroid/text/style/AlignmentSpan;
    .end local v6    # "textAlign":Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v3, :cond_5

    #@2f
    if-nez v6, :cond_5

    #@31
    .line 391
    const-string/jumbo v7, ""

    #@34
    return-object v7

    #@35
    .line 380
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    .restart local v1    # "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    .restart local v2    # "i":I
    .restart local v4    # "s":Landroid/text/style/AlignmentSpan;
    .restart local v6    # "textAlign":Ljava/lang/String;
    :cond_2
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@37
    if-ne v0, v7, :cond_3

    #@39
    .line 381
    const-string/jumbo v6, "text-align:center;"

    #@3c
    .local v6, "textAlign":Ljava/lang/String;
    goto :goto_1

    #@3d
    .line 382
    .local v6, "textAlign":Ljava/lang/String;
    :cond_3
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@3f
    if-ne v0, v7, :cond_1

    #@41
    .line 383
    const-string/jumbo v6, "text-align:end;"

    #@44
    .local v6, "textAlign":Ljava/lang/String;
    goto :goto_1

    #@45
    .line 374
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    .local v6, "textAlign":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    #@47
    goto :goto_0

    #@48
    .line 394
    .end local v1    # "alignmentSpans":[Landroid/text/style/AlignmentSpan;
    .end local v2    # "i":I
    .end local v4    # "s":Landroid/text/style/AlignmentSpan;
    .end local v6    # "textAlign":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    const-string/jumbo v7, " style=\""

    #@4d
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@50
    .line 395
    .local v5, "style":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_7

    #@52
    if-eqz v6, :cond_7

    #@54
    .line 396
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    const-string/jumbo v8, " "

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 403
    :cond_6
    :goto_2
    const-string/jumbo v7, "\""

    #@65
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    return-object v7

    #@6e
    .line 397
    :cond_7
    if-eqz v3, :cond_8

    #@70
    .line 398
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    goto :goto_2

    #@74
    .line 399
    :cond_8
    if-eqz v6, :cond_6

    #@76
    .line 400
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    goto :goto_2
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Landroid/text/Spanned;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 253
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "option"    # I

    #@0
    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 268
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    #@8
    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 1
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    #@0
    .prologue
    .line 408
    and-int/lit8 v0, p4, 0x1

    #@2
    if-nez v0, :cond_0

    #@4
    .line 409
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    #@7
    .line 407
    :goto_0
    return-void

    #@8
    .line 411
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    #@b
    goto :goto_0
.end method

.method private static withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 7
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/16 v6, 0xa

    #@2
    .line 482
    const-string/jumbo v4, "<p"

    #@5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v4

    #@9
    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    const-string/jumbo v5, ">"

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 485
    move v0, p2

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_5

    #@1a
    .line 486
    invoke-static {p1, v6, v0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    #@1d
    move-result v2

    #@1e
    .line 487
    .local v2, "next":I
    if-gez v2, :cond_0

    #@20
    .line 488
    move v2, p3

    #@21
    .line 491
    :cond_0
    const/4 v3, 0x0

    #@22
    .line 493
    .local v3, "nl":I
    :goto_1
    if-ge v2, p3, :cond_1

    #@24
    invoke-interface {p1, v2}, Landroid/text/Spanned;->charAt(I)C

    #@27
    move-result v4

    #@28
    if-ne v4, v6, :cond_1

    #@2a
    .line 494
    add-int/lit8 v3, v3, 0x1

    #@2c
    .line 495
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 498
    :cond_1
    sub-int v4, v2, v3

    #@31
    invoke-static {p0, p1, v0, v4}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    #@34
    .line 500
    const/4 v4, 0x1

    #@35
    if-ne v3, v4, :cond_3

    #@37
    .line 501
    const-string/jumbo v4, "<br>\n"

    #@3a
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 485
    :cond_2
    :goto_2
    move v0, v2

    #@3e
    goto :goto_0

    #@3f
    .line 503
    :cond_3
    const/4 v1, 0x2

    #@40
    .local v1, "j":I
    :goto_3
    if-ge v1, v3, :cond_4

    #@42
    .line 504
    const-string/jumbo v4, "<br>"

    #@45
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 503
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_3

    #@4b
    .line 506
    :cond_4
    if-eq v2, p3, :cond_2

    #@4d
    .line 508
    const-string/jumbo v4, "</p>\n"

    #@50
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 509
    const-string/jumbo v4, "<p"

    #@56
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    const-string/jumbo v5, ">"

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    goto :goto_2

    #@69
    .line 514
    .end local v1    # "j":I
    .end local v2    # "next":I
    .end local v3    # "nl":I
    :cond_5
    const-string/jumbo v4, "</p>\n"

    #@6c
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 481
    return-void
.end method

.method private static withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 12
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 417
    const/4 v1, 0x0

    #@1
    .line 419
    .local v1, "isInList":Z
    move v0, p2

    #@2
    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_c

    #@4
    .line 420
    const/16 v8, 0xa

    #@6
    invoke-static {p1, v8, v0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    #@9
    move-result v3

    #@a
    .line 421
    .local v3, "next":I
    if-gez v3, :cond_0

    #@c
    .line 422
    move v3, p3

    #@d
    .line 425
    :cond_0
    if-ne v3, v0, :cond_3

    #@f
    .line 426
    if-eqz v1, :cond_1

    #@11
    .line 428
    const/4 v1, 0x0

    #@12
    .line 429
    const-string/jumbo v8, "</ul>\n"

    #@15
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 431
    :cond_1
    const-string/jumbo v8, "<br>\n"

    #@1b
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 476
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@20
    .line 419
    move v0, v3

    #@21
    goto :goto_0

    #@22
    .line 433
    :cond_3
    const/4 v2, 0x0

    #@23
    .line 434
    .local v2, "isListItem":Z
    const-class v8, Landroid/text/style/ParagraphStyle;

    #@25
    invoke-interface {p1, v0, v3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, [Landroid/text/style/ParagraphStyle;

    #@2b
    .line 435
    .local v5, "paragraphStyles":[Landroid/text/style/ParagraphStyle;
    const/4 v8, 0x0

    #@2c
    array-length v9, v5

    #@2d
    :goto_2
    if-ge v8, v9, :cond_4

    #@2f
    aget-object v4, v5, v8

    #@31
    .line 436
    .local v4, "paragraphStyle":Landroid/text/style/ParagraphStyle;
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@34
    move-result v6

    #@35
    .line 437
    .local v6, "spanFlags":I
    and-int/lit8 v10, v6, 0x33

    #@37
    const/16 v11, 0x33

    #@39
    if-ne v10, v11, :cond_7

    #@3b
    .line 438
    instance-of v10, v4, Landroid/text/style/BulletSpan;

    #@3d
    .line 437
    if-eqz v10, :cond_7

    #@3f
    .line 439
    const/4 v2, 0x1

    #@40
    .line 444
    .end local v4    # "paragraphStyle":Landroid/text/style/ParagraphStyle;
    .end local v6    # "spanFlags":I
    :cond_4
    if-eqz v2, :cond_5

    #@42
    if-eqz v1, :cond_8

    #@44
    .line 452
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    #@46
    if-eqz v2, :cond_9

    #@48
    .line 458
    :cond_6
    :goto_4
    if-eqz v2, :cond_a

    #@4a
    const-string/jumbo v7, "li"

    #@4d
    .line 459
    .local v7, "tagType":Ljava/lang/String;
    :goto_5
    const-string/jumbo v8, "<"

    #@50
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    .line 460
    invoke-static {p1, v0, v3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    .line 459
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v9

    #@60
    .line 461
    if-eqz v2, :cond_b

    #@62
    const/4 v8, 0x0

    #@63
    :goto_6
    const/4 v10, 0x1

    #@64
    invoke-static {p1, v0, v3, v8, v10}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    .line 459
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v8

    #@6c
    .line 462
    const-string/jumbo v9, ">"

    #@6f
    .line 459
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 464
    invoke-static {p0, p1, v0, v3}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    #@75
    .line 466
    const-string/jumbo v8, "</"

    #@78
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 467
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    .line 468
    const-string/jumbo v8, ">\n"

    #@81
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    .line 470
    if-ne v3, p3, :cond_2

    #@86
    if-eqz v1, :cond_2

    #@88
    .line 471
    const/4 v1, 0x0

    #@89
    .line 472
    const-string/jumbo v8, "</ul>\n"

    #@8c
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    goto :goto_1

    #@90
    .line 435
    .end local v7    # "tagType":Ljava/lang/String;
    .restart local v4    # "paragraphStyle":Landroid/text/style/ParagraphStyle;
    .restart local v6    # "spanFlags":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@92
    goto :goto_2

    #@93
    .line 446
    .end local v4    # "paragraphStyle":Landroid/text/style/ParagraphStyle;
    .end local v6    # "spanFlags":I
    :cond_8
    const/4 v1, 0x1

    #@94
    .line 447
    const-string/jumbo v8, "<ul"

    #@97
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v8

    #@9b
    .line 448
    const/4 v9, 0x1

    #@9c
    const/4 v10, 0x0

    #@9d
    invoke-static {p1, v0, v3, v9, v10}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    #@a0
    move-result-object v9

    #@a1
    .line 447
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v8

    #@a5
    .line 449
    const-string/jumbo v9, ">\n"

    #@a8
    .line 447
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    goto :goto_3

    #@ac
    .line 454
    :cond_9
    const/4 v1, 0x0

    #@ad
    .line 455
    const-string/jumbo v8, "</ul>\n"

    #@b0
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    goto :goto_4

    #@b4
    .line 458
    :cond_a
    const-string/jumbo v7, "p"

    #@b7
    .restart local v7    # "tagType":Ljava/lang/String;
    goto :goto_5

    #@b8
    .line 461
    :cond_b
    const/4 v8, 0x1

    #@b9
    goto :goto_6

    #@ba
    .line 416
    .end local v2    # "isListItem":Z
    .end local v3    # "next":I
    .end local v5    # "paragraphStyles":[Landroid/text/style/ParagraphStyle;
    .end local v7    # "tagType":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 8
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 329
    move v0, p2

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    #@4
    .line 330
    const-class v4, Landroid/text/style/QuoteSpan;

    #@6
    invoke-interface {p1, v0, p3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@9
    move-result v1

    #@a
    .line 331
    .local v1, "next":I
    const-class v4, Landroid/text/style/QuoteSpan;

    #@c
    invoke-interface {p1, v0, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, [Landroid/text/style/QuoteSpan;

    #@12
    .line 333
    .local v3, "quotes":[Landroid/text/style/QuoteSpan;
    array-length v6, v3

    #@13
    move v4, v5

    #@14
    :goto_1
    if-ge v4, v6, :cond_0

    #@16
    aget-object v2, v3, v4

    #@18
    .line 334
    .local v2, "quote":Landroid/text/style/QuoteSpan;
    const-string/jumbo v7, "<blockquote>"

    #@1b
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 333
    add-int/lit8 v4, v4, 0x1

    #@20
    goto :goto_1

    #@21
    .line 337
    .end local v2    # "quote":Landroid/text/style/QuoteSpan;
    :cond_0
    invoke-static {p0, p1, v0, v1, p4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    #@24
    .line 339
    array-length v6, v3

    #@25
    move v4, v5

    #@26
    :goto_2
    if-ge v4, v6, :cond_1

    #@28
    aget-object v2, v3, v4

    #@2a
    .line 340
    .restart local v2    # "quote":Landroid/text/style/QuoteSpan;
    const-string/jumbo v7, "</blockquote>\n"

    #@2d
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 339
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_2

    #@33
    .line 329
    .end local v2    # "quote":Landroid/text/style/QuoteSpan;
    :cond_1
    move v0, v1

    #@34
    goto :goto_0

    #@35
    .line 327
    .end local v1    # "next":I
    .end local v3    # "quotes":[Landroid/text/style/QuoteSpan;
    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 2
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "option"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 282
    and-int/lit8 v0, p2, 0x1

    #@3
    if-nez v0, :cond_0

    #@5
    .line 283
    invoke-static {p0, p1, p2}, Landroid/text/Html;->encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    #@8
    .line 284
    return-void

    #@9
    .line 287
    :cond_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    #@c
    move-result v0

    #@d
    invoke-static {p0, p1, v1, v0, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    #@10
    .line 281
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 17
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 519
    move/from16 v4, p2

    #@2
    .local v4, "i":I
    :goto_0
    move/from16 v0, p3

    #@4
    if-ge v4, v0, :cond_1c

    #@6
    .line 520
    const-class v13, Landroid/text/style/CharacterStyle;

    #@8
    move-object/from16 v0, p1

    #@a
    move/from16 v1, p3

    #@c
    invoke-interface {v0, v4, v1, v13}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@f
    move-result v6

    #@10
    .line 521
    .local v6, "next":I
    const-class v13, Landroid/text/style/CharacterStyle;

    #@12
    move-object/from16 v0, p1

    #@14
    invoke-interface {v0, v4, v6, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@17
    move-result-object v12

    #@18
    check-cast v12, [Landroid/text/style/CharacterStyle;

    #@1a
    .line 523
    .local v12, "style":[Landroid/text/style/CharacterStyle;
    const/4 v5, 0x0

    #@1b
    .local v5, "j":I
    :goto_1
    array-length v13, v12

    #@1c
    if-ge v5, v13, :cond_e

    #@1e
    .line 524
    aget-object v13, v12, v5

    #@20
    instance-of v13, v13, Landroid/text/style/StyleSpan;

    #@22
    if-eqz v13, :cond_1

    #@24
    .line 525
    aget-object v13, v12, v5

    #@26
    check-cast v13, Landroid/text/style/StyleSpan;

    #@28
    invoke-virtual {v13}, Landroid/text/style/StyleSpan;->getStyle()I

    #@2b
    move-result v7

    #@2c
    .line 527
    .local v7, "s":I
    and-int/lit8 v13, v7, 0x1

    #@2e
    if-eqz v13, :cond_0

    #@30
    .line 528
    const-string/jumbo v13, "<b>"

    #@33
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 530
    :cond_0
    and-int/lit8 v13, v7, 0x2

    #@3a
    if-eqz v13, :cond_1

    #@3c
    .line 531
    const-string/jumbo v13, "<i>"

    #@3f
    move-object/from16 v0, p0

    #@41
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 534
    .end local v7    # "s":I
    :cond_1
    aget-object v13, v12, v5

    #@46
    instance-of v13, v13, Landroid/text/style/TypefaceSpan;

    #@48
    if-eqz v13, :cond_2

    #@4a
    .line 535
    aget-object v13, v12, v5

    #@4c
    check-cast v13, Landroid/text/style/TypefaceSpan;

    #@4e
    invoke-virtual {v13}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    .line 537
    .local v9, "s":Ljava/lang/String;
    const-string/jumbo v13, "monospace"

    #@55
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v13

    #@59
    if-eqz v13, :cond_2

    #@5b
    .line 538
    const-string/jumbo v13, "<tt>"

    #@5e
    move-object/from16 v0, p0

    #@60
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 541
    .end local v9    # "s":Ljava/lang/String;
    :cond_2
    aget-object v13, v12, v5

    #@65
    instance-of v13, v13, Landroid/text/style/SuperscriptSpan;

    #@67
    if-eqz v13, :cond_3

    #@69
    .line 542
    const-string/jumbo v13, "<sup>"

    #@6c
    move-object/from16 v0, p0

    #@6e
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 544
    :cond_3
    aget-object v13, v12, v5

    #@73
    instance-of v13, v13, Landroid/text/style/SubscriptSpan;

    #@75
    if-eqz v13, :cond_4

    #@77
    .line 545
    const-string/jumbo v13, "<sub>"

    #@7a
    move-object/from16 v0, p0

    #@7c
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 547
    :cond_4
    aget-object v13, v12, v5

    #@81
    instance-of v13, v13, Landroid/text/style/UnderlineSpan;

    #@83
    if-eqz v13, :cond_5

    #@85
    .line 548
    const-string/jumbo v13, "<u>"

    #@88
    move-object/from16 v0, p0

    #@8a
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    .line 550
    :cond_5
    aget-object v13, v12, v5

    #@8f
    instance-of v13, v13, Landroid/text/style/StrikethroughSpan;

    #@91
    if-eqz v13, :cond_6

    #@93
    .line 551
    const-string/jumbo v13, "<span style=\"text-decoration:line-through;\">"

    #@96
    move-object/from16 v0, p0

    #@98
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    .line 553
    :cond_6
    aget-object v13, v12, v5

    #@9d
    instance-of v13, v13, Landroid/text/style/URLSpan;

    #@9f
    if-eqz v13, :cond_7

    #@a1
    .line 554
    const-string/jumbo v13, "<a href=\""

    #@a4
    move-object/from16 v0, p0

    #@a6
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    .line 555
    aget-object v13, v12, v5

    #@ab
    check-cast v13, Landroid/text/style/URLSpan;

    #@ad
    invoke-virtual {v13}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    #@b0
    move-result-object v13

    #@b1
    move-object/from16 v0, p0

    #@b3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    .line 556
    const-string/jumbo v13, "\">"

    #@b9
    move-object/from16 v0, p0

    #@bb
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 558
    :cond_7
    aget-object v13, v12, v5

    #@c0
    instance-of v13, v13, Landroid/text/style/ImageSpan;

    #@c2
    if-eqz v13, :cond_8

    #@c4
    .line 559
    const-string/jumbo v13, "<img src=\""

    #@c7
    move-object/from16 v0, p0

    #@c9
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    .line 560
    aget-object v13, v12, v5

    #@ce
    check-cast v13, Landroid/text/style/ImageSpan;

    #@d0
    invoke-virtual {v13}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    #@d3
    move-result-object v13

    #@d4
    move-object/from16 v0, p0

    #@d6
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    .line 561
    const-string/jumbo v13, "\">"

    #@dc
    move-object/from16 v0, p0

    #@de
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    .line 564
    move v4, v6

    #@e2
    .line 566
    :cond_8
    aget-object v13, v12, v5

    #@e4
    instance-of v13, v13, Landroid/text/style/AbsoluteSizeSpan;

    #@e6
    if-eqz v13, :cond_a

    #@e8
    .line 567
    aget-object v8, v12, v5

    #@ea
    check-cast v8, Landroid/text/style/AbsoluteSizeSpan;

    #@ec
    .line 568
    .local v8, "s":Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v8}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    #@ef
    move-result v13

    #@f0
    int-to-float v10, v13

    #@f1
    .line 569
    .local v10, "sizeDip":F
    invoke-virtual {v8}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    #@f4
    move-result v13

    #@f5
    if-nez v13, :cond_9

    #@f7
    .line 570
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@fa
    move-result-object v2

    #@fb
    .line 571
    .local v2, "application":Landroid/app/Application;
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    #@fe
    move-result-object v13

    #@ff
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@102
    move-result-object v13

    #@103
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    #@105
    div-float/2addr v10, v13

    #@106
    .line 575
    .end local v2    # "application":Landroid/app/Application;
    :cond_9
    const-string/jumbo v13, "<span style=\"font-size:%.0fpx\";>"

    #@109
    const/4 v14, 0x1

    #@10a
    new-array v14, v14, [Ljava/lang/Object;

    #@10c
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@10f
    move-result-object v15

    #@110
    const/16 v16, 0x0

    #@112
    aput-object v15, v14, v16

    #@114
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@117
    move-result-object v13

    #@118
    move-object/from16 v0, p0

    #@11a
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    .line 577
    .end local v8    # "s":Landroid/text/style/AbsoluteSizeSpan;
    .end local v10    # "sizeDip":F
    :cond_a
    aget-object v13, v12, v5

    #@11f
    instance-of v13, v13, Landroid/text/style/RelativeSizeSpan;

    #@121
    if-eqz v13, :cond_b

    #@123
    .line 578
    aget-object v13, v12, v5

    #@125
    check-cast v13, Landroid/text/style/RelativeSizeSpan;

    #@127
    invoke-virtual {v13}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    #@12a
    move-result v11

    #@12b
    .line 579
    .local v11, "sizeEm":F
    const-string/jumbo v13, "<span style=\"font-size:%.2fem;\">"

    #@12e
    const/4 v14, 0x1

    #@12f
    new-array v14, v14, [Ljava/lang/Object;

    #@131
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@134
    move-result-object v15

    #@135
    const/16 v16, 0x0

    #@137
    aput-object v15, v14, v16

    #@139
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13c
    move-result-object v13

    #@13d
    move-object/from16 v0, p0

    #@13f
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    .line 581
    .end local v11    # "sizeEm":F
    :cond_b
    aget-object v13, v12, v5

    #@144
    instance-of v13, v13, Landroid/text/style/ForegroundColorSpan;

    #@146
    if-eqz v13, :cond_c

    #@148
    .line 582
    aget-object v13, v12, v5

    #@14a
    check-cast v13, Landroid/text/style/ForegroundColorSpan;

    #@14c
    invoke-virtual {v13}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    #@14f
    move-result v3

    #@150
    .line 583
    .local v3, "color":I
    const-string/jumbo v13, "<span style=\"color:#%06X;\">"

    #@153
    const/4 v14, 0x1

    #@154
    new-array v14, v14, [Ljava/lang/Object;

    #@156
    const v15, 0xffffff

    #@159
    and-int/2addr v15, v3

    #@15a
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15d
    move-result-object v15

    #@15e
    const/16 v16, 0x0

    #@160
    aput-object v15, v14, v16

    #@162
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@165
    move-result-object v13

    #@166
    move-object/from16 v0, p0

    #@168
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    .line 585
    .end local v3    # "color":I
    :cond_c
    aget-object v13, v12, v5

    #@16d
    instance-of v13, v13, Landroid/text/style/BackgroundColorSpan;

    #@16f
    if-eqz v13, :cond_d

    #@171
    .line 586
    aget-object v13, v12, v5

    #@173
    check-cast v13, Landroid/text/style/BackgroundColorSpan;

    #@175
    invoke-virtual {v13}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    #@178
    move-result v3

    #@179
    .line 587
    .restart local v3    # "color":I
    const-string/jumbo v13, "<span style=\"background-color:#%06X;\">"

    #@17c
    const/4 v14, 0x1

    #@17d
    new-array v14, v14, [Ljava/lang/Object;

    #@17f
    .line 588
    const v15, 0xffffff

    #@182
    and-int/2addr v15, v3

    #@183
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@186
    move-result-object v15

    #@187
    const/16 v16, 0x0

    #@189
    aput-object v15, v14, v16

    #@18b
    .line 587
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@18e
    move-result-object v13

    #@18f
    move-object/from16 v0, p0

    #@191
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    .line 523
    .end local v3    # "color":I
    :cond_d
    add-int/lit8 v5, v5, 0x1

    #@196
    goto/16 :goto_1

    #@198
    .line 592
    :cond_e
    move-object/from16 v0, p0

    #@19a
    move-object/from16 v1, p1

    #@19c
    invoke-static {v0, v1, v4, v6}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    #@19f
    .line 594
    array-length v13, v12

    #@1a0
    add-int/lit8 v5, v13, -0x1

    #@1a2
    :goto_2
    if-ltz v5, :cond_1b

    #@1a4
    .line 595
    aget-object v13, v12, v5

    #@1a6
    instance-of v13, v13, Landroid/text/style/BackgroundColorSpan;

    #@1a8
    if-eqz v13, :cond_f

    #@1aa
    .line 596
    const-string/jumbo v13, "</span>"

    #@1ad
    move-object/from16 v0, p0

    #@1af
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    .line 598
    :cond_f
    aget-object v13, v12, v5

    #@1b4
    instance-of v13, v13, Landroid/text/style/ForegroundColorSpan;

    #@1b6
    if-eqz v13, :cond_10

    #@1b8
    .line 599
    const-string/jumbo v13, "</span>"

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    .line 601
    :cond_10
    aget-object v13, v12, v5

    #@1c2
    instance-of v13, v13, Landroid/text/style/RelativeSizeSpan;

    #@1c4
    if-eqz v13, :cond_11

    #@1c6
    .line 602
    const-string/jumbo v13, "</span>"

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    .line 604
    :cond_11
    aget-object v13, v12, v5

    #@1d0
    instance-of v13, v13, Landroid/text/style/AbsoluteSizeSpan;

    #@1d2
    if-eqz v13, :cond_12

    #@1d4
    .line 605
    const-string/jumbo v13, "</span>"

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    .line 607
    :cond_12
    aget-object v13, v12, v5

    #@1de
    instance-of v13, v13, Landroid/text/style/URLSpan;

    #@1e0
    if-eqz v13, :cond_13

    #@1e2
    .line 608
    const-string/jumbo v13, "</a>"

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    .line 610
    :cond_13
    aget-object v13, v12, v5

    #@1ec
    instance-of v13, v13, Landroid/text/style/StrikethroughSpan;

    #@1ee
    if-eqz v13, :cond_14

    #@1f0
    .line 611
    const-string/jumbo v13, "</span>"

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    .line 613
    :cond_14
    aget-object v13, v12, v5

    #@1fa
    instance-of v13, v13, Landroid/text/style/UnderlineSpan;

    #@1fc
    if-eqz v13, :cond_15

    #@1fe
    .line 614
    const-string/jumbo v13, "</u>"

    #@201
    move-object/from16 v0, p0

    #@203
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    .line 616
    :cond_15
    aget-object v13, v12, v5

    #@208
    instance-of v13, v13, Landroid/text/style/SubscriptSpan;

    #@20a
    if-eqz v13, :cond_16

    #@20c
    .line 617
    const-string/jumbo v13, "</sub>"

    #@20f
    move-object/from16 v0, p0

    #@211
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    .line 619
    :cond_16
    aget-object v13, v12, v5

    #@216
    instance-of v13, v13, Landroid/text/style/SuperscriptSpan;

    #@218
    if-eqz v13, :cond_17

    #@21a
    .line 620
    const-string/jumbo v13, "</sup>"

    #@21d
    move-object/from16 v0, p0

    #@21f
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    .line 622
    :cond_17
    aget-object v13, v12, v5

    #@224
    instance-of v13, v13, Landroid/text/style/TypefaceSpan;

    #@226
    if-eqz v13, :cond_18

    #@228
    .line 623
    aget-object v13, v12, v5

    #@22a
    check-cast v13, Landroid/text/style/TypefaceSpan;

    #@22c
    invoke-virtual {v13}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    #@22f
    move-result-object v9

    #@230
    .line 625
    .restart local v9    # "s":Ljava/lang/String;
    const-string/jumbo v13, "monospace"

    #@233
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@236
    move-result v13

    #@237
    if-eqz v13, :cond_18

    #@239
    .line 626
    const-string/jumbo v13, "</tt>"

    #@23c
    move-object/from16 v0, p0

    #@23e
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    .line 629
    .end local v9    # "s":Ljava/lang/String;
    :cond_18
    aget-object v13, v12, v5

    #@243
    instance-of v13, v13, Landroid/text/style/StyleSpan;

    #@245
    if-eqz v13, :cond_1a

    #@247
    .line 630
    aget-object v13, v12, v5

    #@249
    check-cast v13, Landroid/text/style/StyleSpan;

    #@24b
    invoke-virtual {v13}, Landroid/text/style/StyleSpan;->getStyle()I

    #@24e
    move-result v7

    #@24f
    .line 632
    .restart local v7    # "s":I
    and-int/lit8 v13, v7, 0x1

    #@251
    if-eqz v13, :cond_19

    #@253
    .line 633
    const-string/jumbo v13, "</b>"

    #@256
    move-object/from16 v0, p0

    #@258
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    .line 635
    :cond_19
    and-int/lit8 v13, v7, 0x2

    #@25d
    if-eqz v13, :cond_1a

    #@25f
    .line 636
    const-string/jumbo v13, "</i>"

    #@262
    move-object/from16 v0, p0

    #@264
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@267
    .line 594
    .end local v7    # "s":I
    :cond_1a
    add-int/lit8 v5, v5, -0x1

    #@269
    goto/16 :goto_2

    #@26b
    .line 519
    :cond_1b
    move v4, v6

    #@26c
    goto/16 :goto_0

    #@26e
    .line 517
    .end local v5    # "j":I
    .end local v6    # "next":I
    .end local v12    # "style":[Landroid/text/style/CharacterStyle;
    :cond_1c
    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const v9, 0xdfff

    #@3
    const v8, 0xd800

    #@6
    const v7, 0xdc00

    #@9
    const/16 v6, 0x20

    #@b
    .line 645
    move v3, p2

    #@c
    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_9

    #@e
    .line 646
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 648
    .local v0, "c":C
    const/16 v4, 0x3c

    #@14
    if-ne v0, v4, :cond_1

    #@16
    .line 649
    const-string/jumbo v4, "&lt;"

    #@19
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 645
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 650
    :cond_1
    const/16 v4, 0x3e

    #@21
    if-ne v0, v4, :cond_2

    #@23
    .line 651
    const-string/jumbo v4, "&gt;"

    #@26
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    goto :goto_1

    #@2a
    .line 652
    :cond_2
    const/16 v4, 0x26

    #@2c
    if-ne v0, v4, :cond_3

    #@2e
    .line 653
    const-string/jumbo v4, "&amp;"

    #@31
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    goto :goto_1

    #@35
    .line 654
    :cond_3
    if-lt v0, v8, :cond_4

    #@37
    if-gt v0, v9, :cond_4

    #@39
    .line 655
    if-ge v0, v7, :cond_0

    #@3b
    add-int/lit8 v4, v3, 0x1

    #@3d
    if-ge v4, p3, :cond_0

    #@3f
    .line 656
    add-int/lit8 v4, v3, 0x1

    #@41
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@44
    move-result v2

    #@45
    .line 657
    .local v2, "d":C
    if-lt v2, v7, :cond_0

    #@47
    if-gt v2, v9, :cond_0

    #@49
    .line 658
    add-int/lit8 v3, v3, 0x1

    #@4b
    .line 659
    sub-int v4, v0, v8

    #@4d
    shl-int/lit8 v4, v4, 0xa

    #@4f
    const/high16 v5, 0x10000

    #@51
    or-int/2addr v4, v5

    #@52
    sub-int v5, v2, v7

    #@54
    or-int v1, v4, v5

    #@56
    .line 660
    .local v1, "codepoint":I
    const-string/jumbo v4, "&#"

    #@59
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    const-string/jumbo v5, ";"

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    goto :goto_1

    #@68
    .line 663
    .end local v1    # "codepoint":I
    .end local v2    # "d":C
    :cond_4
    const/16 v4, 0x7e

    #@6a
    if-gt v0, v4, :cond_5

    #@6c
    if-ge v0, v6, :cond_6

    #@6e
    .line 664
    :cond_5
    const-string/jumbo v4, "&#"

    #@71
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    const-string/jumbo v5, ";"

    #@7c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    goto :goto_1

    #@80
    .line 665
    :cond_6
    if-ne v0, v6, :cond_8

    #@82
    .line 666
    :goto_2
    add-int/lit8 v4, v3, 0x1

    #@84
    if-ge v4, p3, :cond_7

    #@86
    add-int/lit8 v4, v3, 0x1

    #@88
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@8b
    move-result v4

    #@8c
    if-ne v4, v6, :cond_7

    #@8e
    .line 667
    const-string/jumbo v4, "&nbsp;"

    #@91
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 668
    add-int/lit8 v3, v3, 0x1

    #@96
    goto :goto_2

    #@97
    .line 671
    :cond_7
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9a
    goto :goto_1

    #@9b
    .line 673
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9e
    goto/16 :goto_1

    #@a0
    .line 644
    .end local v0    # "c":C
    :cond_9
    return-void
.end method
