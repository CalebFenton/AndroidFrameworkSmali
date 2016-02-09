.class Landroid/media/TtmlTrack;
.super Landroid/media/SubtitleTrack;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/TtmlNodeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TtmlTrack"


# instance fields
.field private mCurrentRunID:Ljava/lang/Long;

.field private final mParser:Landroid/media/TtmlParser;

.field private mParsingData:Ljava/lang/String;

.field private final mRenderingWidget:Landroid/media/TtmlRenderingWidget;

.field private mRootNode:Landroid/media/TtmlNode;

.field private final mTimeEvents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTtmlNodes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/TtmlRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/TtmlRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 540
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    #@3
    .line 530
    new-instance v0, Landroid/media/TtmlParser;

    #@5
    invoke-direct {v0, p0}, Landroid/media/TtmlParser;-><init>(Landroid/media/TtmlNodeListener;)V

    #@8
    iput-object v0, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    #@a
    .line 542
    new-instance v0, Ljava/util/LinkedList;

    #@c
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/LinkedList;

    #@11
    .line 543
    new-instance v0, Ljava/util/TreeSet;

    #@13
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@16
    iput-object v0, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    #@18
    .line 544
    iput-object p1, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    #@1a
    .line 545
    const-string/jumbo v0, ""

    #@1d
    iput-object v0, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    #@1f
    .line 539
    return-void
.end method

.method private addTimeEvents(Landroid/media/TtmlNode;)V
    .locals 4
    .param p1, "node"    # Landroid/media/TtmlNode;

    #@0
    .prologue
    .line 644
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    #@2
    iget-wide v2, p1, Landroid/media/TtmlNode;->mStartTimeMs:J

    #@4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 645
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    #@d
    iget-wide v2, p1, Landroid/media/TtmlNode;->mEndTimeMs:J

    #@f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@16
    .line 646
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    #@19
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1c
    move-result v1

    #@1d
    if-ge v0, v1, :cond_0

    #@1f
    .line 647
    iget-object v1, p1, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    #@21
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Landroid/media/TtmlNode;

    #@27
    invoke-direct {p0, v1}, Landroid/media/TtmlTrack;->addTimeEvents(Landroid/media/TtmlNode;)V

    #@2a
    .line 646
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 643
    :cond_0
    return-void
.end method

.method private getActiveNodes(JJ)Ljava/util/List;
    .locals 5
    .param p1, "startTimeUs"    # J
    .param p3, "endTimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 652
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 653
    .local v0, "activeNodes":Ljava/util/List;, "Ljava/util/List<Landroid/media/TtmlNode;>;"
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/LinkedList;

    #@8
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v1, v3, :cond_1

    #@e
    .line 654
    iget-object v3, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/LinkedList;

    #@10
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/media/TtmlNode;

    #@16
    .line 655
    .local v2, "node":Landroid/media/TtmlNode;
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 656
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 653
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 659
    .end local v2    # "node":Landroid/media/TtmlNode;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getNextResult()Landroid/media/TtmlCue;
    .locals 8

    #@0
    .prologue
    .line 629
    :cond_0
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    #@2
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    #@5
    move-result v1

    #@6
    const/4 v6, 0x2

    #@7
    if-lt v1, v6, :cond_1

    #@9
    .line 630
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    #@b
    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/Long;

    #@11
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@14
    move-result-wide v2

    #@15
    .line 631
    .local v2, "start":J
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    #@17
    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/lang/Long;

    #@1d
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@20
    move-result-wide v4

    #@21
    .line 632
    .local v4, "end":J
    invoke-direct {p0, v2, v3, v4, v5}, Landroid/media/TtmlTrack;->getActiveNodes(JJ)Ljava/util/List;

    #@24
    move-result-object v0

    #@25
    .line 633
    .local v0, "activeCues":Ljava/util/List;, "Ljava/util/List<Landroid/media/TtmlNode;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_0

    #@2b
    .line 634
    new-instance v1, Landroid/media/TtmlCue;

    #@2d
    .line 636
    iget-object v6, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    #@2f
    .line 635
    invoke-static {v6, v2, v3, v4, v5}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJ)Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    .line 636
    const/4 v7, 0x0

    #@34
    .line 635
    invoke-static {v6, v7}, Landroid/media/TtmlUtils;->applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    .line 637
    iget-object v7, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    #@3a
    invoke-static {v7, v2, v3, v4, v5}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJ)Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    .line 634
    invoke-direct/range {v1 .. v7}, Landroid/media/TtmlCue;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    #@41
    return-object v1

    #@42
    .line 640
    .end local v0    # "activeCues":Ljava/util/List;, "Ljava/util/List<Landroid/media/TtmlNode;>;"
    .end local v2    # "start":J
    .end local v4    # "end":J
    :cond_1
    const/4 v1, 0x0

    #@43
    return-object v1
.end method

.method public bridge synthetic getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    #@0
    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/media/TtmlTrack;->getRenderingWidget()Landroid/media/TtmlRenderingWidget;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRenderingWidget()Landroid/media/TtmlRenderingWidget;
    .locals 1

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    #@2
    return-object v0
.end method

.method public onData([BZJ)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    #@0
    .prologue
    .line 557
    :try_start_0
    new-instance v3, Ljava/lang/String;

    #@2
    const-string/jumbo v4, "UTF-8"

    #@5
    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@8
    .line 560
    .local v3, "str":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    #@a
    monitor-enter v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 561
    :try_start_1
    iget-object v4, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    #@d
    if-eqz v4, :cond_0

    #@f
    iget-object v4, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    #@11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@14
    move-result-wide v6

    #@15
    cmp-long v4, p3, v6

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 562
    new-instance v4, Ljava/lang/IllegalStateException;

    #@1b
    .line 563
    new-instance v6, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v7, "Run #"

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    iget-object v7, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    .line 564
    const-string/jumbo v7, " in progress.  Cannot process run #"

    #@30
    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    .line 562
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 560
    :catchall_0
    move-exception v4

    #@41
    :try_start_2
    monitor-exit v5

    #@42
    throw v4
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    #@43
    .line 581
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@44
    .line 582
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "TtmlTrack"

    #@47
    new-instance v5, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v6, "subtitle data is not UTF-8 encoded: "

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 554
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void

    #@5f
    .line 566
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@62
    move-result-object v4

    #@63
    iput-object v4, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    #@65
    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    iget-object v6, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    #@6c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    iput-object v4, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7a
    .line 568
    if-eqz p2, :cond_1

    #@7c
    .line 570
    :try_start_4
    iget-object v4, p0, Landroid/media/TtmlTrack;->mParser:Landroid/media/TtmlParser;

    #@7e
    iget-object v6, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    #@80
    iget-object v7, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;

    #@82
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@85
    move-result-wide v8

    #@86
    invoke-virtual {v4, v6, v8, v9}, Landroid/media/TtmlParser;->parse(Ljava/lang/String;J)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@89
    .line 576
    :goto_1
    :try_start_5
    invoke-virtual {p0, p3, p4}, Landroid/media/TtmlTrack;->finishedRun(J)V

    #@8c
    .line 577
    const-string/jumbo v4, ""

    #@8f
    iput-object v4, p0, Landroid/media/TtmlTrack;->mParsingData:Ljava/lang/String;

    #@91
    .line 578
    const/4 v4, 0x0

    #@92
    iput-object v4, p0, Landroid/media/TtmlTrack;->mCurrentRunID:Ljava/lang/Long;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@94
    :cond_1
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0

    #@95
    goto :goto_0

    #@96
    .line 573
    :catch_1
    move-exception v0

    #@97
    .line 574
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@9a
    goto :goto_1

    #@9b
    .line 571
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    #@9c
    .line 572
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@9f
    goto :goto_1
.end method

.method public onRootNodeParsed(Landroid/media/TtmlNode;)V
    .locals 2
    .param p1, "node"    # Landroid/media/TtmlNode;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 594
    iput-object p1, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    #@3
    .line 595
    const/4 v0, 0x0

    #@4
    .line 596
    :goto_0
    invoke-virtual {p0}, Landroid/media/TtmlTrack;->getNextResult()Landroid/media/TtmlCue;

    #@7
    move-result-object v0

    #@8
    .local v0, "cue":Landroid/media/TtmlCue;
    if-eqz v0, :cond_0

    #@a
    .line 597
    invoke-virtual {p0, v0}, Landroid/media/TtmlTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    #@d
    goto :goto_0

    #@e
    .line 599
    :cond_0
    iput-object v1, p0, Landroid/media/TtmlTrack;->mRootNode:Landroid/media/TtmlNode;

    #@10
    .line 600
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/LinkedList;

    #@12
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    #@15
    .line 601
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeEvents:Ljava/util/TreeSet;

    #@17
    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    #@1a
    .line 593
    return-void
.end method

.method public onTtmlNodeParsed(Landroid/media/TtmlNode;)V
    .locals 1
    .param p1, "node"    # Landroid/media/TtmlNode;

    #@0
    .prologue
    .line 588
    iget-object v0, p0, Landroid/media/TtmlTrack;->mTtmlNodes:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@5
    .line 589
    invoke-direct {p0, p1}, Landroid/media/TtmlTrack;->addTimeEvents(Landroid/media/TtmlNode;)V

    #@8
    .line 587
    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 606
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    iget-boolean v1, p0, Landroid/media/TtmlTrack;->mVisible:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 608
    return-void

    #@5
    .line 611
    :cond_0
    iget-boolean v1, p0, Landroid/media/TtmlTrack;->DEBUG:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    iget-object v1, p0, Landroid/media/TtmlTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 613
    :try_start_0
    const-string/jumbo v1, "TtmlTrack"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "at "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 614
    iget-object v3, p0, Landroid/media/TtmlTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@1e
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x1

    #@20
    invoke-interface {v3, v4, v5}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    #@23
    move-result-wide v4

    #@24
    const-wide/16 v6, 0x3e8

    #@26
    div-long/2addr v4, v6

    #@27
    .line 613
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 615
    const-string/jumbo v3, " ms the active cues are:"

    #@2e
    .line 613
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 621
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/TtmlTrack;->mRenderingWidget:Landroid/media/TtmlRenderingWidget;

    #@3b
    invoke-virtual {v1, p1}, Landroid/media/TtmlRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    #@3e
    .line 605
    return-void

    #@3f
    .line 616
    :catch_0
    move-exception v0

    #@40
    .line 617
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "TtmlTrack"

    #@43
    const-string/jumbo v2, "at (illegal state) the active cues are:"

    #@46
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    goto :goto_0
.end method
