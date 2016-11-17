.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$1;,
        Landroid/text/util/Linkify$2;,
        Landroid/text/util/Linkify$3;,
        Landroid/text/util/Linkify$MatchFilter;,
        Landroid/text/util/Linkify$TransformFilter;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 116
    new-instance v0, Landroid/text/util/Linkify$1;

    #@2
    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    #@5
    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    #@7
    .line 134
    new-instance v0, Landroid/text/util/Linkify$2;

    #@9
    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    #@c
    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    #@e
    .line 157
    new-instance v0, Landroid/text/util/Linkify$3;

    #@10
    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    #@13
    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    #@15
    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "t"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    #@3
    move-result-object v0

    #@4
    .line 312
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_1

    #@6
    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 309
    :cond_0
    :goto_0
    return-void

    #@b
    .line 313
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 314
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@18
    goto :goto_0
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 6
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, v3

    #@5
    move-object v5, v3

    #@6
    .line 332
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    #@9
    .line 331
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    #@0
    .prologue
    .line 352
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    #@9
    .line 351
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    #@0
    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    #@7
    move-result-object v0

    #@8
    .local v0, "spannable":Landroid/text/SpannableString;
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move-object v5, p5

    #@d
    .line 377
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    #@10
    move-result v6

    #@11
    .line 379
    .local v6, "linksAdded":Z
    if-eqz v6, :cond_0

    #@13
    .line 380
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@16
    .line 381
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    #@19
    .line 374
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 12
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 225
    if-nez p1, :cond_0

    #@5
    .line 226
    return v10

    #@6
    .line 229
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    #@9
    move-result v1

    #@a
    const-class v2, Landroid/text/style/URLSpan;

    #@c
    invoke-interface {p0, v10, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@f
    move-result-object v9

    #@10
    check-cast v9, [Landroid/text/style/URLSpan;

    #@12
    .line 231
    .local v9, "old":[Landroid/text/style/URLSpan;
    array-length v1, v9

    #@13
    add-int/lit8 v6, v1, -0x1

    #@15
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    #@17
    .line 232
    aget-object v1, v9, v6

    #@19
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@1c
    .line 231
    add-int/lit8 v6, v6, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 235
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    .line 237
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 238
    sget-object v2, Landroid/util/Patterns;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    #@2a
    .line 239
    const/4 v1, 0x3

    #@2b
    new-array v3, v1, [Ljava/lang/String;

    #@2d
    const-string/jumbo v1, "http://"

    #@30
    aput-object v1, v3, v10

    #@32
    const-string/jumbo v1, "https://"

    #@35
    aput-object v1, v3, v11

    #@37
    const-string/jumbo v1, "rtsp://"

    #@3a
    const/4 v4, 0x2

    #@3b
    aput-object v1, v3, v4

    #@3d
    .line 240
    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    #@3f
    move-object v1, p0

    #@40
    .line 238
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    #@43
    .line 243
    :cond_2
    and-int/lit8 v1, p1, 0x2

    #@45
    if-eqz v1, :cond_3

    #@47
    .line 244
    sget-object v2, Landroid/util/Patterns;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    #@49
    .line 245
    new-array v3, v11, [Ljava/lang/String;

    #@4b
    const-string/jumbo v1, "mailto:"

    #@4e
    aput-object v1, v3, v10

    #@50
    move-object v1, p0

    #@51
    move-object v4, v5

    #@52
    .line 244
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    #@55
    .line 249
    :cond_3
    and-int/lit8 v1, p1, 0x4

    #@57
    if-eqz v1, :cond_4

    #@59
    .line 250
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    #@5c
    .line 253
    :cond_4
    and-int/lit8 v1, p1, 0x8

    #@5e
    if-eqz v1, :cond_5

    #@60
    .line 254
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    #@63
    .line 257
    :cond_5
    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    #@66
    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@69
    move-result v1

    #@6a
    if-nez v1, :cond_6

    #@6c
    .line 260
    return v10

    #@6d
    .line 263
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@70
    move-result-object v8

    #@71
    .local v8, "link$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@74
    move-result v1

    #@75
    if-eqz v1, :cond_7

    #@77
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7a
    move-result-object v7

    #@7b
    check-cast v7, Landroid/text/util/LinkSpec;

    #@7d
    .line 264
    .local v7, "link":Landroid/text/util/LinkSpec;
    iget-object v1, v7, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    #@7f
    iget v2, v7, Landroid/text/util/LinkSpec;->start:I

    #@81
    iget v3, v7, Landroid/text/util/LinkSpec;->end:I

    #@83
    invoke-static {v1, v2, v3, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    #@86
    goto :goto_1

    #@87
    .line 267
    .end local v7    # "link":Landroid/text/util/LinkSpec;
    :cond_7
    return v11
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, v3

    #@5
    move-object v5, v3

    #@6
    .line 396
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 6
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    #@0
    .prologue
    .line 417
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 12
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    #@0
    .prologue
    .line 441
    if-nez p2, :cond_0

    #@2
    const-string/jumbo p2, ""

    #@5
    .line 442
    :cond_0
    if-eqz p3, :cond_1

    #@7
    array-length v10, p3

    #@8
    const/4 v11, 0x1

    #@9
    if-ge v10, v11, :cond_2

    #@b
    .line 443
    :cond_1
    sget-object p3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@d
    .line 446
    :cond_2
    array-length v10, p3

    #@e
    add-int/lit8 v10, v10, 0x1

    #@10
    new-array v7, v10, [Ljava/lang/String;

    #@12
    .line 447
    .local v7, "schemesCopy":[Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@14
    invoke-virtual {p2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@17
    move-result-object v10

    #@18
    const/4 v11, 0x0

    #@19
    aput-object v10, v7, v11

    #@1b
    .line 448
    const/4 v4, 0x0

    #@1c
    .local v4, "index":I
    :goto_0
    array-length v10, p3

    #@1d
    if-ge v4, v10, :cond_4

    #@1f
    .line 449
    aget-object v6, p3, v4

    #@21
    .line 450
    .local v6, "scheme":Ljava/lang/String;
    add-int/lit8 v11, v4, 0x1

    #@23
    if-nez v6, :cond_3

    #@25
    const-string/jumbo v10, ""

    #@28
    :goto_1
    aput-object v10, v7, v11

    #@2a
    .line 448
    add-int/lit8 v4, v4, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 450
    :cond_3
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@2f
    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@32
    move-result-object v10

    #@33
    goto :goto_1

    #@34
    .line 453
    .end local v6    # "scheme":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    #@35
    .line 454
    .local v3, "hasMatches":Z
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@38
    move-result-object v5

    #@39
    .line 456
    .local v5, "m":Ljava/util/regex/Matcher;
    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    #@3c
    move-result v10

    #@3d
    if-eqz v10, :cond_7

    #@3f
    .line 457
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    #@42
    move-result v8

    #@43
    .line 458
    .local v8, "start":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    #@46
    move-result v2

    #@47
    .line 459
    .local v2, "end":I
    const/4 v1, 0x1

    #@48
    .line 461
    .local v1, "allowed":Z
    if-eqz p4, :cond_6

    #@4a
    .line 462
    move-object/from16 v0, p4

    #@4c
    invoke-interface {v0, p0, v8, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    #@4f
    move-result v1

    #@50
    .line 465
    .end local v1    # "allowed":Z
    :cond_6
    if-eqz v1, :cond_5

    #@52
    .line 466
    const/4 v10, 0x0

    #@53
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@56
    move-result-object v10

    #@57
    move-object/from16 v0, p5

    #@59
    invoke-static {v10, v7, v5, v0}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    .line 468
    .local v9, "url":Ljava/lang/String;
    invoke-static {v9, v8, v2, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    #@60
    .line 469
    const/4 v3, 0x1

    #@61
    goto :goto_2

    #@62
    .line 473
    .end local v2    # "end":I
    .end local v8    # "start":I
    .end local v9    # "url":Ljava/lang/String;
    :cond_7
    return v3
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 5
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 282
    if-nez p1, :cond_0

    #@4
    .line 283
    return v3

    #@5
    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    .line 288
    .local v1, "t":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 289
    check-cast v1, Landroid/text/Spannable;

    #@f
    .end local v1    # "t":Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 290
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    #@18
    .line 291
    return v4

    #@19
    .line 294
    :cond_1
    return v3

    #@1a
    .line 296
    .restart local v1    # "t":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    #@1d
    move-result-object v0

    #@1e
    .line 298
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 299
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    #@27
    .line 300
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2a
    .line 302
    return v4

    #@2b
    .line 305
    :cond_3
    return v3
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    .line 477
    new-instance v0, Landroid/text/style/URLSpan;

    #@2
    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    #@5
    .line 479
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    #@7
    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@a
    .line 476
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 513
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3
    move-result-object v1

    #@4
    .line 515
    .local v1, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_2

    #@a
    .line 516
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    #@d
    move-result v3

    #@e
    .line 517
    .local v3, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    #@11
    move-result v0

    #@12
    .line 519
    .local v0, "end":I
    if-eqz p4, :cond_1

    #@14
    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 520
    :cond_1
    new-instance v2, Landroid/text/util/LinkSpec;

    #@1c
    invoke-direct {v2}, Landroid/text/util/LinkSpec;-><init>()V

    #@1f
    .line 521
    .local v2, "spec":Landroid/text/util/LinkSpec;
    const/4 v5, 0x0

    #@20
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-static {v5, p3, v1, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 523
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v2, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    #@2a
    .line 524
    iput v3, v2, Landroid/text/util/LinkSpec;->start:I

    #@2c
    .line 525
    iput v0, v2, Landroid/text/util/LinkSpec;->end:I

    #@2e
    .line 527
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_0

    #@32
    .line 512
    .end local v0    # "end":I
    .end local v2    # "spec":Landroid/text/util/LinkSpec;
    .end local v3    # "start":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 12
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 546
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    #@3
    move-result-object v9

    #@4
    .line 548
    .local v9, "string":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    .line 551
    .local v1, "base":I
    :goto_0
    :try_start_0
    invoke-static {v9}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    .line 552
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@e
    move-result v8

    #@f
    .line 554
    .local v8, "start":I
    if-gez v8, :cond_1

    #@11
    .line 545
    .end local v8    # "start":I
    :cond_0
    return-void

    #@12
    .line 558
    .restart local v8    # "start":I
    :cond_1
    new-instance v7, Landroid/text/util/LinkSpec;

    #@14
    invoke-direct {v7}, Landroid/text/util/LinkSpec;-><init>()V

    #@17
    .line 559
    .local v7, "spec":Landroid/text/util/LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1a
    move-result v6

    #@1b
    .line 560
    .local v6, "length":I
    add-int v5, v8, v6

    #@1d
    .line 562
    .local v5, "end":I
    add-int v10, v1, v8

    #@1f
    iput v10, v7, Landroid/text/util/LinkSpec;->start:I

    #@21
    .line 563
    add-int v10, v1, v5

    #@23
    iput v10, v7, Landroid/text/util/LinkSpec;->end:I

    #@25
    .line 564
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v9

    #@29
    .line 565
    add-int/2addr v1, v5

    #@2a
    .line 567
    const/4 v4, 0x0

    #@2b
    .line 570
    .local v4, "encodedAddress":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v10, "UTF-8"

    #@2e
    invoke-static {v0, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    #@31
    move-result-object v4

    #@32
    .line 575
    .local v4, "encodedAddress":Ljava/lang/String;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v11, "geo:0,0?q="

    #@3a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v10

    #@3e
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v10

    #@46
    iput-object v10, v7, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    #@48
    .line 576
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    #@4b
    goto :goto_0

    #@4c
    .line 578
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "encodedAddress":Ljava/lang/String;
    .end local v5    # "end":I
    .end local v6    # "length":I
    .end local v7    # "spec":Landroid/text/util/LinkSpec;
    .end local v8    # "start":I
    :catch_0
    move-exception v3

    #@4d
    .line 582
    .local v3, "e":Ljava/lang/UnsupportedOperationException;
    return-void

    #@4e
    .line 571
    .end local v3    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v0    # "address":Ljava/lang/String;
    .local v4, "encodedAddress":Ljava/lang/String;
    .restart local v5    # "end":I
    .restart local v6    # "length":I
    .restart local v7    # "spec":Landroid/text/util/LinkSpec;
    .restart local v8    # "start":I
    :catch_1
    move-exception v2

    #@4f
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 533
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@3
    move-result-object v0

    #@4
    .line 534
    .local v0, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-interface {p1}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 535
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@12
    const-wide v4, 0x7fffffffffffffffL

    #@17
    .line 534
    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    #@1a
    move-result-object v8

    #@1b
    .line 536
    .local v8, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v7

    #@1f
    .local v7, "match$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_0

    #@25
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    check-cast v6, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    #@2b
    .line 537
    .local v6, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v9, Landroid/text/util/LinkSpec;

    #@2d
    invoke-direct {v9}, Landroid/text/util/LinkSpec;-><init>()V

    #@30
    .line 538
    .local v9, "spec":Landroid/text/util/LinkSpec;
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "tel:"

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    iput-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    #@4e
    .line 539
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    #@51
    move-result v1

    #@52
    iput v1, v9, Landroid/text/util/LinkSpec;->start:I

    #@54
    .line 540
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    #@57
    move-result v1

    #@58
    iput v1, v9, Landroid/text/util/LinkSpec;->end:I

    #@5a
    .line 541
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5d
    goto :goto_0

    #@5e
    .line 532
    .end local v6    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v9    # "spec":Landroid/text/util/LinkSpec;
    :cond_0
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "matcher"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 484
    if-eqz p3, :cond_0

    #@3
    .line 485
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    .line 488
    :cond_0
    const/4 v7, 0x0

    #@8
    .line 490
    .local v7, "hasPrefix":Z
    const/4 v8, 0x0

    #@9
    .local v8, "i":I
    :goto_0
    array-length v0, p1

    #@a
    if-ge v8, v0, :cond_1

    #@c
    .line 491
    aget-object v3, p1, v8

    #@e
    aget-object v0, p1, v8

    #@10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@13
    move-result v5

    #@14
    const/4 v1, 0x1

    #@15
    move-object v0, p0

    #@16
    move v4, v2

    #@17
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_3

    #@1d
    .line 492
    const/4 v7, 0x1

    #@1e
    .line 495
    aget-object v4, p1, v8

    #@20
    aget-object v0, p1, v8

    #@22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@25
    move-result v6

    #@26
    move-object v1, p0

    #@27
    move v3, v2

    #@28
    move v5, v2

    #@29
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_1

    #@2f
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    aget-object v1, p1, v8

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    aget-object v1, p1, v8

    #@3c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@3f
    move-result v1

    #@40
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object p0

    #@4c
    .line 503
    :cond_1
    if-nez v7, :cond_2

    #@4e
    array-length v0, p1

    #@4f
    if-lez v0, :cond_2

    #@51
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    aget-object v1, p1, v2

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object p0

    #@64
    .line 507
    :cond_2
    return-object p0

    #@65
    .line 490
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@67
    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 587
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v2, Landroid/text/util/Linkify$4;

    #@2
    invoke-direct {v2}, Landroid/text/util/Linkify$4;-><init>()V

    #@5
    .line 609
    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/text/util/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@8
    .line 611
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v4

    #@c
    .line 612
    .local v4, "len":I
    const/4 v3, 0x0

    #@d
    .line 614
    .local v3, "i":I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    #@f
    if-ge v3, v6, :cond_4

    #@11
    .line 615
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/text/util/LinkSpec;

    #@17
    .line 616
    .local v0, "a":Landroid/text/util/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    #@19
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/text/util/LinkSpec;

    #@1f
    .line 617
    .local v1, "b":Landroid/text/util/LinkSpec;
    const/4 v5, -0x1

    #@20
    .line 619
    .local v5, "remove":I
    iget v6, v0, Landroid/text/util/LinkSpec;->start:I

    #@22
    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    #@24
    if-gt v6, v7, :cond_3

    #@26
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    #@28
    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    #@2a
    if-le v6, v7, :cond_3

    #@2c
    .line 620
    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    #@2e
    iget v7, v0, Landroid/text/util/LinkSpec;->end:I

    #@30
    if-gt v6, v7, :cond_1

    #@32
    .line 621
    add-int/lit8 v5, v3, 0x1

    #@34
    .line 628
    :cond_0
    :goto_1
    const/4 v6, -0x1

    #@35
    if-eq v5, v6, :cond_3

    #@37
    .line 629
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@3a
    .line 630
    add-int/lit8 v4, v4, -0x1

    #@3c
    .line 631
    goto :goto_0

    #@3d
    .line 622
    :cond_1
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    #@3f
    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    #@41
    sub-int/2addr v6, v7

    #@42
    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    #@44
    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    #@46
    sub-int/2addr v7, v8

    #@47
    if-le v6, v7, :cond_2

    #@49
    .line 623
    add-int/lit8 v5, v3, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 624
    :cond_2
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    #@4e
    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    #@50
    sub-int/2addr v6, v7

    #@51
    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    #@53
    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    #@55
    sub-int/2addr v7, v8

    #@56
    if-ge v6, v7, :cond_0

    #@58
    .line 625
    move v5, v3

    #@59
    goto :goto_1

    #@5a
    .line 636
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 586
    .end local v0    # "a":Landroid/text/util/LinkSpec;
    .end local v1    # "b":Landroid/text/util/LinkSpec;
    .end local v5    # "remove":I
    :cond_4
    return-void
.end method
