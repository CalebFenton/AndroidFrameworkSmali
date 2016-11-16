.class Landroid/media/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field private static final DEFAULT_FRAMERATE:I = 0x1e

.field private static final DEFAULT_SUBFRAMERATE:I = 0x1

.field private static final DEFAULT_TICKRATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "TtmlParser"


# instance fields
.field private mCurrentRunId:J

.field private final mListener:Landroid/media/TtmlNodeListener;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Landroid/media/TtmlNodeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/TtmlNodeListener;

    #@0
    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 363
    iput-object p1, p0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    #@5
    .line 362
    return-void
.end method

.method private extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "i"    # I
    .param p3, "out"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 390
    const-string/jumbo v0, " "

    #@3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 391
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 392
    const-string/jumbo v0, "=\""

    #@10
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 393
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 394
    const-string/jumbo v0, "\""

    #@1d
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 389
    return-void
.end method

.method private isEndOfDoc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 502
    iget-object v1, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@6
    move-result v1

    #@7
    if-ne v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 506
    const-string/jumbo v0, "tt"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "head"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 507
    const-string/jumbo v0, "body"

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    .line 506
    if-nez v0, :cond_0

    #@1b
    .line 507
    const-string/jumbo v0, "div"

    #@1e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    .line 506
    if-nez v0, :cond_0

    #@24
    .line 508
    const-string/jumbo v0, "p"

    #@27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    .line 506
    if-nez v0, :cond_0

    #@2d
    .line 508
    const-string/jumbo v0, "span"

    #@30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    .line 506
    if-nez v0, :cond_0

    #@36
    .line 509
    const-string/jumbo v0, "br"

    #@39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    .line 506
    if-nez v0, :cond_0

    #@3f
    .line 509
    const-string/jumbo v0, "style"

    #@42
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    .line 506
    if-nez v0, :cond_0

    #@48
    .line 510
    const-string/jumbo v0, "styling"

    #@4b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    .line 506
    if-nez v0, :cond_0

    #@51
    .line 510
    const-string/jumbo v0, "layout"

    #@54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v0

    #@58
    .line 506
    if-nez v0, :cond_0

    #@5a
    .line 511
    const-string/jumbo v0, "region"

    #@5d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v0

    #@61
    .line 506
    if-nez v0, :cond_0

    #@63
    .line 511
    const-string/jumbo v0, "metadata"

    #@66
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v0

    #@6a
    .line 506
    if-nez v0, :cond_0

    #@6c
    .line 512
    const-string/jumbo v0, "smpte:image"

    #@6f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v0

    #@73
    .line 506
    if-nez v0, :cond_0

    #@75
    .line 512
    const-string/jumbo v0, "smpte:data"

    #@78
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v0

    #@7c
    .line 506
    if-nez v0, :cond_0

    #@7e
    .line 513
    const-string/jumbo v0, "smpte:information"

    #@81
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v0

    #@85
    .line 506
    if-eqz v0, :cond_1

    #@87
    .line 514
    :cond_0
    const/4 v0, 0x1

    #@88
    return v0

    #@89
    .line 516
    :cond_1
    const/4 v0, 0x0

    #@8a
    return v0
.end method

.method private loadParser(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttmlFragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    #@3
    move-result-object v0

    #@4
    .line 383
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    #@8
    .line 384
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@b
    move-result-object v2

    #@c
    iput-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@e
    .line 385
    new-instance v1, Ljava/io/StringReader;

    #@10
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@13
    .line 386
    .local v1, "in":Ljava/io/StringReader;
    iget-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@15
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    #@18
    .line 381
    return-void
.end method

.method private parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;
    .locals 20
    .param p1, "parent"    # Landroid/media/TtmlNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@7
    move-result v15

    #@8
    .line 449
    .local v15, "eventType":I
    const/4 v3, 0x2

    #@9
    if-eq v15, v3, :cond_0

    #@b
    .line 450
    const/4 v3, 0x0

    #@c
    return-object v3

    #@d
    .line 452
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    .line 453
    .local v14, "attrStr":Ljava/lang/StringBuilder;
    const-wide/16 v6, 0x0

    #@14
    .line 454
    .local v6, "start":J
    const-wide v8, 0x7fffffffffffffffL

    #@19
    .line 455
    .local v8, "end":J
    const-wide/16 v16, 0x0

    #@1b
    .line 456
    .local v16, "dur":J
    const/16 v18, 0x0

    #@1d
    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@1f
    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@21
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@24
    move-result v3

    #@25
    move/from16 v0, v18

    #@27
    if-ge v0, v3, :cond_4

    #@29
    .line 457
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@2d
    move/from16 v0, v18

    #@2f
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@32
    move-result-object v13

    #@33
    .line 458
    .local v13, "attr":Ljava/lang/String;
    move-object/from16 v0, p0

    #@35
    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@37
    move/from16 v0, v18

    #@39
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@3c
    move-result-object v19

    #@3d
    .line 460
    .local v19, "value":Ljava/lang/String;
    const-string/jumbo v3, "^.*:"

    #@40
    const-string/jumbo v4, ""

    #@43
    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v13

    #@47
    .line 461
    const-string/jumbo v3, "begin"

    #@4a
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_1

    #@50
    .line 462
    const/16 v3, 0x1e

    #@52
    .line 463
    const/4 v4, 0x1

    #@53
    const/4 v5, 0x1

    #@54
    .line 462
    move-object/from16 v0, v19

    #@56
    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    #@59
    move-result-wide v6

    #@5a
    .line 456
    :goto_1
    add-int/lit8 v18, v18, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 464
    :cond_1
    const-string/jumbo v3, "end"

    #@60
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_2

    #@66
    .line 465
    const/16 v3, 0x1e

    #@68
    const/4 v4, 0x1

    #@69
    .line 466
    const/4 v5, 0x1

    #@6a
    .line 465
    move-object/from16 v0, v19

    #@6c
    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    #@6f
    move-result-wide v8

    #@70
    goto :goto_1

    #@71
    .line 467
    :cond_2
    const-string/jumbo v3, "dur"

    #@74
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v3

    #@78
    if-eqz v3, :cond_3

    #@7a
    .line 468
    const/16 v3, 0x1e

    #@7c
    const/4 v4, 0x1

    #@7d
    .line 469
    const/4 v5, 0x1

    #@7e
    .line 468
    move-object/from16 v0, v19

    #@80
    invoke-static {v0, v3, v4, v5}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    #@83
    move-result-wide v16

    #@84
    goto :goto_1

    #@85
    .line 471
    :cond_3
    move-object/from16 v0, p0

    #@87
    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@89
    move-object/from16 v0, p0

    #@8b
    move/from16 v1, v18

    #@8d
    invoke-direct {v0, v3, v1, v14}, Landroid/media/TtmlParser;->extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V

    #@90
    goto :goto_1

    #@91
    .line 474
    .end local v13    # "attr":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    #@93
    .line 475
    move-object/from16 v0, p1

    #@95
    iget-wide v4, v0, Landroid/media/TtmlNode;->mStartTimeMs:J

    #@97
    add-long/2addr v6, v4

    #@98
    .line 476
    const-wide v4, 0x7fffffffffffffffL

    #@9d
    cmp-long v3, v8, v4

    #@9f
    if-eqz v3, :cond_5

    #@a1
    .line 477
    move-object/from16 v0, p1

    #@a3
    iget-wide v4, v0, Landroid/media/TtmlNode;->mStartTimeMs:J

    #@a5
    add-long/2addr v8, v4

    #@a6
    .line 480
    :cond_5
    const-wide/16 v4, 0x0

    #@a8
    cmp-long v3, v16, v4

    #@aa
    if-lez v3, :cond_7

    #@ac
    .line 481
    const-wide v4, 0x7fffffffffffffffL

    #@b1
    cmp-long v3, v8, v4

    #@b3
    if-eqz v3, :cond_6

    #@b5
    .line 482
    const-string/jumbo v3, "TtmlParser"

    #@b8
    const-string/jumbo v4, "\'dur\' and \'end\' attributes are defined at the same time.\'end\' value is ignored."

    #@bb
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    .line 485
    :cond_6
    add-long v8, v6, v16

    #@c0
    .line 487
    :cond_7
    if-eqz p1, :cond_8

    #@c2
    .line 490
    const-wide v4, 0x7fffffffffffffffL

    #@c7
    cmp-long v3, v8, v4

    #@c9
    if-nez v3, :cond_8

    #@cb
    .line 491
    move-object/from16 v0, p1

    #@cd
    iget-wide v4, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    #@cf
    const-wide v10, 0x7fffffffffffffffL

    #@d4
    cmp-long v3, v4, v10

    #@d6
    if-eqz v3, :cond_8

    #@d8
    .line 492
    move-object/from16 v0, p1

    #@da
    iget-wide v4, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    #@dc
    cmp-long v3, v8, v4

    #@de
    if-lez v3, :cond_8

    #@e0
    .line 493
    move-object/from16 v0, p1

    #@e2
    iget-wide v8, v0, Landroid/media/TtmlNode;->mEndTimeMs:J

    #@e4
    .line 496
    :cond_8
    new-instance v2, Landroid/media/TtmlNode;

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@ea
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@ed
    move-result-object v3

    #@ee
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v4

    #@f2
    .line 497
    move-object/from16 v0, p0

    #@f4
    iget-wide v11, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    #@f6
    .line 496
    const/4 v5, 0x0

    #@f7
    move-object/from16 v10, p1

    #@f9
    invoke-direct/range {v2 .. v12}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    #@fc
    .line 498
    .local v2, "node":Landroid/media/TtmlNode;
    return-object v2
.end method

.method private parseTtml()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    new-instance v17, Ljava/util/LinkedList;

    #@2
    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 399
    .local v17, "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/media/TtmlNode;>;"
    const/4 v14, 0x0

    #@6
    .line 400
    .local v14, "depthInUnsupportedTag":I
    const/4 v13, 0x1

    #@7
    .line 401
    .local v13, "active":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/media/TtmlParser;->isEndOfDoc()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_8

    #@d
    .line 402
    move-object/from16 v0, p0

    #@f
    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@11
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@14
    move-result v15

    #@15
    .line 403
    .local v15, "eventType":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    #@18
    move-result-object v10

    #@19
    check-cast v10, Landroid/media/TtmlNode;

    #@1b
    .line 404
    .local v10, "parent":Landroid/media/TtmlNode;
    if-eqz v13, :cond_6

    #@1d
    .line 405
    const/4 v2, 0x2

    #@1e
    if-ne v15, v2, :cond_2

    #@20
    .line 406
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@24
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v2}, Landroid/media/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_1

    #@2e
    .line 407
    const-string/jumbo v2, "TtmlParser"

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Unsupported tag "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v4, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@41
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    const-string/jumbo v4, " is ignored."

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 408
    add-int/lit8 v14, v14, 0x1

    #@59
    .line 409
    const/4 v13, 0x0

    #@5a
    .line 443
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    #@5c
    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@5e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@61
    goto :goto_0

    #@62
    .line 411
    :cond_1
    move-object/from16 v0, p0

    #@64
    invoke-direct {v0, v10}, Landroid/media/TtmlParser;->parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;

    #@67
    move-result-object v16

    #@68
    .line 412
    .local v16, "node":Landroid/media/TtmlNode;
    move-object/from16 v0, v17

    #@6a
    move-object/from16 v1, v16

    #@6c
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@6f
    .line 413
    if-eqz v10, :cond_0

    #@71
    .line 414
    iget-object v2, v10, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    #@73
    move-object/from16 v0, v16

    #@75
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@78
    goto :goto_1

    #@79
    .line 417
    .end local v16    # "node":Landroid/media/TtmlNode;
    :cond_2
    const/4 v2, 0x4

    #@7a
    if-ne v15, v2, :cond_3

    #@7c
    .line 418
    move-object/from16 v0, p0

    #@7e
    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@80
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    invoke-static {v2}, Landroid/media/TtmlUtils;->applyDefaultSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    .line 419
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8b
    move-result v2

    #@8c
    if-nez v2, :cond_0

    #@8e
    .line 420
    iget-object v0, v10, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    #@90
    move-object/from16 v18, v0

    #@92
    new-instance v2, Landroid/media/TtmlNode;

    #@94
    .line 421
    const-string/jumbo v3, "#pcdata"

    #@97
    const-string/jumbo v4, ""

    #@9a
    const-wide/16 v6, 0x0

    #@9c
    .line 422
    move-object/from16 v0, p0

    #@9e
    iget-wide v11, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    #@a0
    .line 421
    const-wide v8, 0x7fffffffffffffffL

    #@a5
    .line 420
    invoke-direct/range {v2 .. v12}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    #@a8
    move-object/from16 v0, v18

    #@aa
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ad
    goto :goto_1

    #@ae
    .line 425
    .end local v5    # "text":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x3

    #@af
    if-ne v15, v2, :cond_0

    #@b1
    .line 426
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@b5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    const-string/jumbo v3, "p"

    #@bc
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v2

    #@c0
    if-eqz v2, :cond_5

    #@c2
    .line 427
    move-object/from16 v0, p0

    #@c4
    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    #@c6
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    #@c9
    move-result-object v2

    #@ca
    check-cast v2, Landroid/media/TtmlNode;

    #@cc
    invoke-interface {v3, v2}, Landroid/media/TtmlNodeListener;->onTtmlNodeParsed(Landroid/media/TtmlNode;)V

    #@cf
    .line 431
    :cond_4
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    #@d2
    goto :goto_1

    #@d3
    .line 428
    :cond_5
    move-object/from16 v0, p0

    #@d5
    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@d7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@da
    move-result-object v2

    #@db
    const-string/jumbo v3, "tt"

    #@de
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e1
    move-result v2

    #@e2
    if-eqz v2, :cond_4

    #@e4
    .line 429
    move-object/from16 v0, p0

    #@e6
    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    #@e8
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    #@eb
    move-result-object v2

    #@ec
    check-cast v2, Landroid/media/TtmlNode;

    #@ee
    invoke-interface {v3, v2}, Landroid/media/TtmlNodeListener;->onRootNodeParsed(Landroid/media/TtmlNode;)V

    #@f1
    goto :goto_2

    #@f2
    .line 434
    :cond_6
    const/4 v2, 0x2

    #@f3
    if-ne v15, v2, :cond_7

    #@f5
    .line 435
    add-int/lit8 v14, v14, 0x1

    #@f7
    goto/16 :goto_1

    #@f9
    .line 436
    :cond_7
    const/4 v2, 0x3

    #@fa
    if-ne v15, v2, :cond_0

    #@fc
    .line 437
    add-int/lit8 v14, v14, -0x1

    #@fe
    .line 438
    if-nez v14, :cond_0

    #@100
    .line 439
    const/4 v13, 0x1

    #@101
    goto/16 :goto_1

    #@103
    .line 397
    .end local v10    # "parent":Landroid/media/TtmlNode;
    .end local v15    # "eventType":I
    :cond_8
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;J)V
    .locals 2
    .param p1, "ttmlText"    # Ljava/lang/String;
    .param p2, "runId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 375
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    #@3
    .line 376
    iput-wide p2, p0, Landroid/media/TtmlParser;->mCurrentRunId:J

    #@5
    .line 377
    invoke-direct {p0, p1}, Landroid/media/TtmlParser;->loadParser(Ljava/lang/String;)V

    #@8
    .line 378
    invoke-direct {p0}, Landroid/media/TtmlParser;->parseTtml()V

    #@b
    .line 374
    return-void
.end method
