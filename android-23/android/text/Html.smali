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


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 158
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, p0, v2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    #@d
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 99
    invoke-static {p0, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p2, "tagHandler"    # Landroid/text/Html$TagHandler;

    #@0
    .prologue
    .line 122
    new-instance v3, Lorg/ccil/cowan/tagsoup/Parser;

    #@2
    invoke-direct {v3}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    #@5
    .line 124
    .local v3, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string/jumbo v4, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    #@8
    invoke-static {}, Landroid/text/Html$HtmlParser;->-get0()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 134
    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    #@11
    invoke-direct {v0, p0, p1, p2, v3}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    #@14
    .line 136
    .local v0, "converter":Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    #@17
    move-result-object v4

    #@18
    return-object v4

    #@19
    .line 128
    .end local v0    # "converter":Landroid/text/HtmlToSpannedConverter;
    :catch_0
    move-exception v2

    #@1a
    .line 130
    .local v2, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@1c
    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v4

    #@20
    .line 125
    .end local v2    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_1
    move-exception v1

    #@21
    .line 127
    .local v1, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@23
    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v4
.end method

.method private static getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 218
    sub-int v1, p2, p1

    #@3
    .line 219
    .local v1, "len":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    #@6
    move-result-object v2

    #@7
    .line 220
    .local v2, "levels":[B
    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    #@a
    move-result-object v0

    #@b
    .line 221
    .local v0, "buffer":[C
    invoke-static {p0, p1, p2, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@e
    .line 223
    const/4 v4, 0x2

    #@f
    invoke-static {v4, v0, v2, v1, v5}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    #@12
    move-result v3

    #@13
    .line 225
    .local v3, "paraDir":I
    packed-switch v3, :pswitch_data_0

    #@16
    .line 230
    const-string/jumbo v4, "<p dir=\"ltr\">"

    #@19
    return-object v4

    #@1a
    .line 227
    :pswitch_0
    const-string/jumbo v4, "<p dir=\"rtl\">"

    #@1d
    return-object v4

    #@1e
    .line 225
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;

    #@0
    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 149
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    #@8
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 9
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v7, 0x0

    #@3
    .line 236
    invoke-static {p1, p2, p3}, Landroid/text/Html;->getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 239
    move v2, p2

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_4

    #@d
    .line 240
    invoke-static {p1, v8, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    #@10
    move-result v6

    #@11
    .line 241
    .local v6, "next":I
    if-gez v6, :cond_0

    #@13
    .line 242
    move v6, p3

    #@14
    .line 245
    :cond_0
    const/4 v4, 0x0

    #@15
    .line 247
    .local v4, "nl":I
    :goto_1
    if-ge v6, p3, :cond_1

    #@17
    invoke-interface {p1, v6}, Landroid/text/Spanned;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    if-ne v0, v8, :cond_1

    #@1d
    .line 248
    add-int/lit8 v4, v4, 0x1

    #@1f
    .line 249
    add-int/lit8 v6, v6, 0x1

    #@21
    goto :goto_1

    #@22
    .line 252
    :cond_1
    sub-int v3, v6, v4

    #@24
    if-ne v6, p3, :cond_3

    #@26
    const/4 v5, 0x1

    #@27
    :goto_2
    move-object v0, p0

    #@28
    move-object v1, p1

    #@29
    invoke-static/range {v0 .. v5}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 254
    const-string/jumbo v0, "</p>\n"

    #@32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 255
    invoke-static {p1, v6, p3}, Landroid/text/Html;->getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 239
    :cond_2
    move v2, v6

    #@3d
    goto :goto_0

    #@3e
    :cond_3
    move v5, v7

    #@3f
    .line 252
    goto :goto_2

    #@40
    .line 259
    .end local v4    # "nl":I
    .end local v6    # "next":I
    :cond_4
    const-string/jumbo v0, "</p>\n"

    #@43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 235
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 201
    move v0, p2

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    #@4
    .line 202
    const-class v4, Landroid/text/style/QuoteSpan;

    #@6
    invoke-interface {p1, v0, p3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@9
    move-result v1

    #@a
    .line 203
    .local v1, "next":I
    const-class v4, Landroid/text/style/QuoteSpan;

    #@c
    invoke-interface {p1, v0, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, [Landroid/text/style/QuoteSpan;

    #@12
    .line 205
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
    .line 206
    .local v2, "quote":Landroid/text/style/QuoteSpan;
    const-string/jumbo v7, "<blockquote>"

    #@1b
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 205
    add-int/lit8 v4, v4, 0x1

    #@20
    goto :goto_1

    #@21
    .line 209
    .end local v2    # "quote":Landroid/text/style/QuoteSpan;
    :cond_0
    invoke-static {p0, p1, v0, v1}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    #@24
    .line 211
    array-length v6, v3

    #@25
    move v4, v5

    #@26
    :goto_2
    if-ge v4, v6, :cond_1

    #@28
    aget-object v2, v3, v4

    #@2a
    .line 212
    .restart local v2    # "quote":Landroid/text/style/QuoteSpan;
    const-string/jumbo v7, "</blockquote>\n"

    #@2d
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 211
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_2

    #@33
    .line 201
    .end local v2    # "quote":Landroid/text/style/QuoteSpan;
    :cond_1
    move v0, v1

    #@34
    goto :goto_0

    #@35
    .line 199
    .end local v1    # "next":I
    .end local v3    # "quotes":[Landroid/text/style/QuoteSpan;
    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;

    #@0
    .prologue
    .line 163
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    #@3
    move-result v4

    #@4
    .line 166
    .local v4, "len":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    #@8
    move-result v8

    #@9
    if-ge v2, v8, :cond_6

    #@b
    .line 167
    const-class v8, Landroid/text/style/ParagraphStyle;

    #@d
    invoke-interface {p1, v2, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@10
    move-result v6

    #@11
    .line 168
    .local v6, "next":I
    const-class v8, Landroid/text/style/ParagraphStyle;

    #@13
    invoke-interface {p1, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@16
    move-result-object v7

    #@17
    check-cast v7, [Landroid/text/style/ParagraphStyle;

    #@19
    .line 169
    .local v7, "style":[Landroid/text/style/ParagraphStyle;
    const-string/jumbo v1, " "

    #@1c
    .line 170
    .local v1, "elements":Ljava/lang/String;
    const/4 v5, 0x0

    #@1d
    .line 172
    .local v5, "needDiv":Z
    const/4 v3, 0x0

    #@1e
    .local v3, "j":I
    :goto_1
    array-length v8, v7

    #@1f
    if-ge v3, v8, :cond_3

    #@21
    .line 173
    aget-object v8, v7, v3

    #@23
    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    #@25
    if-eqz v8, :cond_0

    #@27
    .line 175
    aget-object v8, v7, v3

    #@29
    check-cast v8, Landroid/text/style/AlignmentSpan;

    #@2b
    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    #@2e
    move-result-object v0

    #@2f
    .line 176
    .local v0, "align":Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    #@30
    .line 177
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@32
    if-ne v0, v8, :cond_1

    #@34
    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v9, "align=\"center\" "

    #@3c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 172
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 179
    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@4d
    if-ne v0, v8, :cond_2

    #@4f
    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v9, "align=\"right\" "

    #@57
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    goto :goto_2

    #@64
    .line 182
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v9, "align=\"left\" "

    #@6c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v8

    #@74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    goto :goto_2

    #@79
    .line 186
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_3
    if-eqz v5, :cond_4

    #@7b
    .line 187
    const-string/jumbo v8, "<div "

    #@7e
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    const-string/jumbo v9, ">"

    #@89
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 190
    :cond_4
    invoke-static {p0, p1, v2, v6}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    #@8f
    .line 192
    if-eqz v5, :cond_5

    #@91
    .line 193
    const-string/jumbo v8, "</div>"

    #@94
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 166
    :cond_5
    move v2, v6

    #@98
    goto/16 :goto_0

    #@9a
    .line 162
    .end local v1    # "elements":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "needDiv":Z
    .end local v6    # "next":I
    .end local v7    # "style":[Landroid/text/style/ParagraphStyle;
    :cond_6
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)Z
    .locals 9
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "nl"    # I
    .param p5, "last"    # Z

    #@0
    .prologue
    .line 267
    move v1, p2

    #@1
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_18

    #@3
    .line 268
    const-class v7, Landroid/text/style/CharacterStyle;

    #@5
    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@8
    move-result v3

    #@9
    .line 270
    .local v3, "next":I
    const-class v7, Landroid/text/style/CharacterStyle;

    #@b
    .line 269
    invoke-interface {p1, v1, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@e
    move-result-object v6

    #@f
    check-cast v6, [Landroid/text/style/CharacterStyle;

    #@11
    .line 272
    .local v6, "style":[Landroid/text/style/CharacterStyle;
    const/4 v2, 0x0

    #@12
    .local v2, "j":I
    :goto_1
    array-length v7, v6

    #@13
    if-ge v2, v7, :cond_c

    #@15
    .line 273
    aget-object v7, v6, v2

    #@17
    instance-of v7, v7, Landroid/text/style/StyleSpan;

    #@19
    if-eqz v7, :cond_1

    #@1b
    .line 274
    aget-object v7, v6, v2

    #@1d
    check-cast v7, Landroid/text/style/StyleSpan;

    #@1f
    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    #@22
    move-result v4

    #@23
    .line 276
    .local v4, "s":I
    and-int/lit8 v7, v4, 0x1

    #@25
    if-eqz v7, :cond_0

    #@27
    .line 277
    const-string/jumbo v7, "<b>"

    #@2a
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 279
    :cond_0
    and-int/lit8 v7, v4, 0x2

    #@2f
    if-eqz v7, :cond_1

    #@31
    .line 280
    const-string/jumbo v7, "<i>"

    #@34
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 283
    .end local v4    # "s":I
    :cond_1
    aget-object v7, v6, v2

    #@39
    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    #@3b
    if-eqz v7, :cond_2

    #@3d
    .line 284
    aget-object v7, v6, v2

    #@3f
    check-cast v7, Landroid/text/style/TypefaceSpan;

    #@41
    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 286
    .local v5, "s":Ljava/lang/String;
    const-string/jumbo v7, "monospace"

    #@48
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_2

    #@4e
    .line 287
    const-string/jumbo v7, "<tt>"

    #@51
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 290
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    aget-object v7, v6, v2

    #@56
    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    #@58
    if-eqz v7, :cond_3

    #@5a
    .line 291
    const-string/jumbo v7, "<sup>"

    #@5d
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 293
    :cond_3
    aget-object v7, v6, v2

    #@62
    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    #@64
    if-eqz v7, :cond_4

    #@66
    .line 294
    const-string/jumbo v7, "<sub>"

    #@69
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 296
    :cond_4
    aget-object v7, v6, v2

    #@6e
    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    #@70
    if-eqz v7, :cond_5

    #@72
    .line 297
    const-string/jumbo v7, "<u>"

    #@75
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 299
    :cond_5
    aget-object v7, v6, v2

    #@7a
    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    #@7c
    if-eqz v7, :cond_6

    #@7e
    .line 300
    const-string/jumbo v7, "<strike>"

    #@81
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    .line 302
    :cond_6
    aget-object v7, v6, v2

    #@86
    instance-of v7, v7, Landroid/text/style/URLSpan;

    #@88
    if-eqz v7, :cond_7

    #@8a
    .line 303
    const-string/jumbo v7, "<a href=\""

    #@8d
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    .line 304
    aget-object v7, v6, v2

    #@92
    check-cast v7, Landroid/text/style/URLSpan;

    #@94
    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    .line 305
    const-string/jumbo v7, "\">"

    #@9e
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    .line 307
    :cond_7
    aget-object v7, v6, v2

    #@a3
    instance-of v7, v7, Landroid/text/style/ImageSpan;

    #@a5
    if-eqz v7, :cond_8

    #@a7
    .line 308
    const-string/jumbo v7, "<img src=\""

    #@aa
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    .line 309
    aget-object v7, v6, v2

    #@af
    check-cast v7, Landroid/text/style/ImageSpan;

    #@b1
    invoke-virtual {v7}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    .line 310
    const-string/jumbo v7, "\">"

    #@bb
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 313
    move v1, v3

    #@bf
    .line 315
    :cond_8
    aget-object v7, v6, v2

    #@c1
    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    #@c3
    if-eqz v7, :cond_9

    #@c5
    .line 316
    const-string/jumbo v7, "<font size =\""

    #@c8
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    .line 317
    aget-object v7, v6, v2

    #@cd
    check-cast v7, Landroid/text/style/AbsoluteSizeSpan;

    #@cf
    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    #@d2
    move-result v7

    #@d3
    div-int/lit8 v7, v7, 0x6

    #@d5
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    .line 318
    const-string/jumbo v7, "\">"

    #@db
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    .line 320
    :cond_9
    aget-object v7, v6, v2

    #@e0
    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    #@e2
    if-eqz v7, :cond_b

    #@e4
    .line 321
    const-string/jumbo v7, "<font color =\"#"

    #@e7
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    .line 323
    aget-object v7, v6, v2

    #@ec
    .line 322
    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    #@ee
    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    #@f1
    move-result v7

    #@f2
    .line 323
    const/high16 v8, 0x1000000

    #@f4
    .line 322
    add-int/2addr v7, v8

    #@f5
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f8
    move-result-object v0

    #@f9
    .line 324
    .local v0, "color":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@fc
    move-result v7

    #@fd
    const/4 v8, 0x6

    #@fe
    if-ge v7, v8, :cond_a

    #@100
    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v8, "0"

    #@108
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v7

    #@10c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v7

    #@110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v0

    #@114
    goto :goto_2

    #@115
    .line 327
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    .line 328
    const-string/jumbo v7, "\">"

    #@11b
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    .line 272
    .end local v0    # "color":Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    #@120
    goto/16 :goto_1

    #@122
    .line 332
    :cond_c
    invoke-static {p0, p1, v1, v3}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    #@125
    .line 334
    array-length v7, v6

    #@126
    add-int/lit8 v2, v7, -0x1

    #@128
    :goto_3
    if-ltz v2, :cond_17

    #@12a
    .line 335
    aget-object v7, v6, v2

    #@12c
    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    #@12e
    if-eqz v7, :cond_d

    #@130
    .line 336
    const-string/jumbo v7, "</font>"

    #@133
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    .line 338
    :cond_d
    aget-object v7, v6, v2

    #@138
    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    #@13a
    if-eqz v7, :cond_e

    #@13c
    .line 339
    const-string/jumbo v7, "</font>"

    #@13f
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    .line 341
    :cond_e
    aget-object v7, v6, v2

    #@144
    instance-of v7, v7, Landroid/text/style/URLSpan;

    #@146
    if-eqz v7, :cond_f

    #@148
    .line 342
    const-string/jumbo v7, "</a>"

    #@14b
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    .line 344
    :cond_f
    aget-object v7, v6, v2

    #@150
    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    #@152
    if-eqz v7, :cond_10

    #@154
    .line 345
    const-string/jumbo v7, "</strike>"

    #@157
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    .line 347
    :cond_10
    aget-object v7, v6, v2

    #@15c
    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    #@15e
    if-eqz v7, :cond_11

    #@160
    .line 348
    const-string/jumbo v7, "</u>"

    #@163
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    .line 350
    :cond_11
    aget-object v7, v6, v2

    #@168
    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    #@16a
    if-eqz v7, :cond_12

    #@16c
    .line 351
    const-string/jumbo v7, "</sub>"

    #@16f
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    .line 353
    :cond_12
    aget-object v7, v6, v2

    #@174
    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    #@176
    if-eqz v7, :cond_13

    #@178
    .line 354
    const-string/jumbo v7, "</sup>"

    #@17b
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    .line 356
    :cond_13
    aget-object v7, v6, v2

    #@180
    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    #@182
    if-eqz v7, :cond_14

    #@184
    .line 357
    aget-object v7, v6, v2

    #@186
    check-cast v7, Landroid/text/style/TypefaceSpan;

    #@188
    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    #@18b
    move-result-object v5

    #@18c
    .line 359
    .restart local v5    # "s":Ljava/lang/String;
    const-string/jumbo v7, "monospace"

    #@18f
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@192
    move-result v7

    #@193
    if-eqz v7, :cond_14

    #@195
    .line 360
    const-string/jumbo v7, "</tt>"

    #@198
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    .line 363
    .end local v5    # "s":Ljava/lang/String;
    :cond_14
    aget-object v7, v6, v2

    #@19d
    instance-of v7, v7, Landroid/text/style/StyleSpan;

    #@19f
    if-eqz v7, :cond_16

    #@1a1
    .line 364
    aget-object v7, v6, v2

    #@1a3
    check-cast v7, Landroid/text/style/StyleSpan;

    #@1a5
    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    #@1a8
    move-result v4

    #@1a9
    .line 366
    .restart local v4    # "s":I
    and-int/lit8 v7, v4, 0x1

    #@1ab
    if-eqz v7, :cond_15

    #@1ad
    .line 367
    const-string/jumbo v7, "</b>"

    #@1b0
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    .line 369
    :cond_15
    and-int/lit8 v7, v4, 0x2

    #@1b5
    if-eqz v7, :cond_16

    #@1b7
    .line 370
    const-string/jumbo v7, "</i>"

    #@1ba
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    .line 334
    .end local v4    # "s":I
    :cond_16
    add-int/lit8 v2, v2, -0x1

    #@1bf
    goto/16 :goto_3

    #@1c1
    .line 267
    :cond_17
    move v1, v3

    #@1c2
    goto/16 :goto_0

    #@1c4
    .line 376
    .end local v2    # "j":I
    .end local v3    # "next":I
    .end local v6    # "style":[Landroid/text/style/CharacterStyle;
    :cond_18
    const/4 v7, 0x1

    #@1c5
    if-ne p4, v7, :cond_19

    #@1c7
    .line 377
    const-string/jumbo v7, "<br>\n"

    #@1ca
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    .line 378
    const/4 v7, 0x0

    #@1ce
    return v7

    #@1cf
    .line 380
    :cond_19
    const/4 v1, 0x2

    #@1d0
    :goto_4
    if-ge v1, p4, :cond_1a

    #@1d2
    .line 381
    const-string/jumbo v7, "<br>"

    #@1d5
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    .line 380
    add-int/lit8 v1, v1, 0x1

    #@1da
    goto :goto_4

    #@1db
    .line 383
    :cond_1a
    if-eqz p5, :cond_1b

    #@1dd
    const/4 v7, 0x0

    #@1de
    :goto_5
    return v7

    #@1df
    :cond_1b
    const/4 v7, 0x1

    #@1e0
    goto :goto_5
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
    .line 389
    move v3, p2

    #@c
    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_9

    #@e
    .line 390
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 392
    .local v0, "c":C
    const/16 v4, 0x3c

    #@14
    if-ne v0, v4, :cond_1

    #@16
    .line 393
    const-string/jumbo v4, "&lt;"

    #@19
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 389
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 394
    :cond_1
    const/16 v4, 0x3e

    #@21
    if-ne v0, v4, :cond_2

    #@23
    .line 395
    const-string/jumbo v4, "&gt;"

    #@26
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    goto :goto_1

    #@2a
    .line 396
    :cond_2
    const/16 v4, 0x26

    #@2c
    if-ne v0, v4, :cond_3

    #@2e
    .line 397
    const-string/jumbo v4, "&amp;"

    #@31
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    goto :goto_1

    #@35
    .line 398
    :cond_3
    if-lt v0, v8, :cond_4

    #@37
    if-gt v0, v9, :cond_4

    #@39
    .line 399
    if-ge v0, v7, :cond_0

    #@3b
    add-int/lit8 v4, v3, 0x1

    #@3d
    if-ge v4, p3, :cond_0

    #@3f
    .line 400
    add-int/lit8 v4, v3, 0x1

    #@41
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@44
    move-result v2

    #@45
    .line 401
    .local v2, "d":C
    if-lt v2, v7, :cond_0

    #@47
    if-gt v2, v9, :cond_0

    #@49
    .line 402
    add-int/lit8 v3, v3, 0x1

    #@4b
    .line 403
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
    .line 404
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
    .line 407
    .end local v1    # "codepoint":I
    .end local v2    # "d":C
    :cond_4
    const/16 v4, 0x7e

    #@6a
    if-gt v0, v4, :cond_5

    #@6c
    if-ge v0, v6, :cond_6

    #@6e
    .line 408
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
    .line 409
    :cond_6
    if-ne v0, v6, :cond_8

    #@82
    .line 410
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
    .line 411
    const-string/jumbo v4, "&nbsp;"

    #@91
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 412
    add-int/lit8 v3, v3, 0x1

    #@96
    goto :goto_2

    #@97
    .line 415
    :cond_7
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9a
    goto :goto_1

    #@9b
    .line 417
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9e
    goto/16 :goto_1

    #@a0
    .line 388
    .end local v0    # "c":C
    :cond_9
    return-void
.end method
