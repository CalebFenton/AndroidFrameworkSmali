.class Landroid/media/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field private static final blacklist DEFAULT_FRAMERATE:I = 0x1e

.field private static final blacklist DEFAULT_SUBFRAMERATE:I = 0x1

.field private static final blacklist DEFAULT_TICKRATE:I = 0x1

.field static final blacklist TAG:Ljava/lang/String; = "TtmlParser"


# instance fields
.field private blacklist mCurrentRunId:J

.field private final blacklist mListener:Landroid/media/TtmlNodeListener;

.field private blacklist mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor blacklist <init>(Landroid/media/TtmlNodeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/TtmlNodeListener;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    .line 367
    return-void
.end method

.method private blacklist extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "i"    # I
    .param p3, "out"    # Ljava/lang/StringBuilder;

    .line 393
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    return-void
.end method

.method private blacklist isEndOfDoc()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private static blacklist isSupportedTag(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 509
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 510
    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 511
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 512
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 513
    const-string v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 514
    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 515
    const-string v0, "smpte:image"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "smpte:data"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 516
    const-string v0, "smpte:information"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    goto :goto_7b

    .line 519
    :cond_79
    const/4 v0, 0x0

    return v0

    .line 517
    :cond_7b
    :goto_7b
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist loadParser(Ljava/lang/String;)V
    .registers 5
    .param p1, "ttmlFragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 385
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 386
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 387
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 388
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, "in":Ljava/io/StringReader;
    iget-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 390
    return-void
.end method

.method private blacklist parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;
    .registers 18
    .param p1, "parent"    # Landroid/media/TtmlNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .line 452
    .local v12, "eventType":I
    const/4 v1, 0x2

    if-eq v12, v1, :cond_f

    .line 453
    const/4 v1, 0x0

    return-object v1

    .line 455
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    .line 456
    .local v13, "attrStr":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    .line 457
    .local v1, "start":J
    const-wide v3, 0x7fffffffffffffffL

    .line 458
    .local v3, "end":J
    const-wide/16 v5, 0x0

    .line 459
    .local v5, "dur":J
    const/4 v7, 0x0

    move-wide v14, v5

    .end local v5    # "dur":J
    .local v7, "i":I
    .local v14, "dur":J
    :goto_20
    iget-object v5, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v7, v5, :cond_6f

    .line 460
    iget-object v5, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "attr":Ljava/lang/String;
    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, "value":Ljava/lang/String;
    const-string v8, "^.*:"

    const-string v10, ""

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 464
    const-string v8, "begin"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v10, 0x1e

    const/4 v11, 0x1

    if-eqz v8, :cond_4c

    .line 465
    invoke-static {v6, v10, v11, v11}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v1

    goto :goto_6c

    .line 467
    :cond_4c
    const-string v8, "end"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 468
    invoke-static {v6, v10, v11, v11}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v3

    goto :goto_6c

    .line 470
    :cond_59
    const-string v8, "dur"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 471
    invoke-static {v6, v10, v11, v11}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v10

    move-wide v14, v10

    .end local v14    # "dur":J
    .local v10, "dur":J
    goto :goto_6c

    .line 474
    .end local v10    # "dur":J
    .restart local v14    # "dur":J
    :cond_67
    iget-object v8, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v8, v7, v13}, Landroid/media/TtmlParser;->extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V

    .line 459
    .end local v5    # "attr":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :goto_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 477
    .end local v7    # "i":I
    :cond_6f
    const-wide v5, 0x7fffffffffffffffL

    if-eqz v9, :cond_80

    .line 478
    iget-wide v7, v9, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v1, v7

    .line 479
    cmp-long v7, v3, v5

    if-eqz v7, :cond_80

    .line 480
    iget-wide v7, v9, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v3, v7

    .line 483
    :cond_80
    const-wide/16 v7, 0x0

    cmp-long v7, v14, v7

    if-lez v7, :cond_93

    .line 484
    cmp-long v7, v3, v5

    if-eqz v7, :cond_91

    .line 485
    const-string v7, "TtmlParser"

    const-string v8, "\'dur\' and \'end\' attributes are defined at the same time.\'end\' value is ignored."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_91
    add-long v3, v1, v14

    .line 490
    :cond_93
    if-eqz v9, :cond_a9

    .line 493
    cmp-long v7, v3, v5

    if-nez v7, :cond_a9

    iget-wide v7, v9, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_a9

    iget-wide v5, v9, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_a9

    .line 496
    iget-wide v3, v9, Landroid/media/TtmlNode;->mEndTimeMs:J

    move-wide v7, v3

    goto :goto_aa

    .line 499
    :cond_a9
    move-wide v7, v3

    .end local v3    # "end":J
    .local v7, "end":J
    :goto_aa
    move-wide v5, v1

    .end local v1    # "start":J
    .local v5, "start":J
    new-instance v1, Landroid/media/TtmlNode;

    iget-object v2, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-wide v10, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    invoke-direct/range {v1 .. v11}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    .line 501
    .local v1, "node":Landroid/media/TtmlNode;
    return-object v1
.end method

.method private blacklist parseTtml()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 402
    .local v1, "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/media/TtmlNode;>;"
    const/4 v2, 0x0

    .line 403
    .local v2, "depthInUnsupportedTag":I
    const/4 v3, 0x1

    .line 404
    .local v3, "active":Z
    :goto_9
    invoke-direct {v0}, Landroid/media/TtmlParser;->isEndOfDoc()Z

    move-result v4

    if-nez v4, :cond_e0

    .line 405
    iget-object v4, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 406
    .local v4, "eventType":I
    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/media/TtmlNode;

    .line 407
    .local v14, "parent":Landroid/media/TtmlNode;
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v3, :cond_cd

    .line 408
    if-ne v4, v6, :cond_67

    .line 409
    iget-object v5, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is ignored."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TtmlParser"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    add-int/lit8 v2, v2, 0x1

    .line 412
    const/4 v3, 0x0

    goto/16 :goto_d9

    .line 414
    :cond_57
    invoke-direct {v0, v14}, Landroid/media/TtmlParser;->parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;

    move-result-object v5

    .line 415
    .local v5, "node":Landroid/media/TtmlNode;
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 416
    if-eqz v14, :cond_65

    .line 417
    iget-object v6, v14, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v5    # "node":Landroid/media/TtmlNode;
    :cond_65
    goto/16 :goto_d9

    .line 420
    :cond_67
    const/4 v6, 0x4

    if-ne v4, v6, :cond_93

    .line 421
    iget-object v5, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/TtmlUtils;->applyDefaultSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 422
    .local v9, "text":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cc

    .line 423
    iget-object v5, v14, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    new-instance v6, Landroid/media/TtmlNode;

    const-wide v12, 0x7fffffffffffffffL

    iget-wide v7, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    move-wide v15, v7

    const-string v7, "#pcdata"

    const-string v8, ""

    const-wide/16 v10, 0x0

    invoke-direct/range {v6 .. v16}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    .line 428
    .end local v9    # "text":Ljava/lang/String;
    :cond_93
    if-ne v4, v5, :cond_cc

    .line 429
    iget-object v5, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "p"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 430
    iget-object v5, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/TtmlNode;

    invoke-interface {v5, v6}, Landroid/media/TtmlNodeListener;->onTtmlNodeParsed(Landroid/media/TtmlNode;)V

    goto :goto_c8

    .line 431
    :cond_af
    iget-object v5, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tt"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 432
    iget-object v5, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/TtmlNode;

    invoke-interface {v5, v6}, Landroid/media/TtmlNodeListener;->onRootNodeParsed(Landroid/media/TtmlNode;)V

    .line 434
    :cond_c8
    :goto_c8
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_d9

    .line 428
    :cond_cc
    :goto_cc
    goto :goto_d9

    .line 437
    :cond_cd
    if-ne v4, v6, :cond_d2

    .line 438
    add-int/lit8 v2, v2, 0x1

    goto :goto_d9

    .line 439
    :cond_d2
    if-ne v4, v5, :cond_d9

    .line 440
    add-int/lit8 v2, v2, -0x1

    .line 441
    if-nez v2, :cond_d9

    .line 442
    const/4 v3, 0x1

    .line 446
    :cond_d9
    :goto_d9
    iget-object v5, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 447
    .end local v4    # "eventType":I
    .end local v14    # "parent":Landroid/media/TtmlNode;
    goto/16 :goto_9

    .line 448
    :cond_e0
    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;J)V
    .registers 5
    .param p1, "ttmlText"    # Ljava/lang/String;
    .param p2, "runId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 379
    iput-wide p2, p0, Landroid/media/TtmlParser;->mCurrentRunId:J

    .line 380
    invoke-direct {p0, p1}, Landroid/media/TtmlParser;->loadParser(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Landroid/media/TtmlParser;->parseTtml()V

    .line 382
    return-void
.end method
