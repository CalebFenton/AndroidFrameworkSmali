.class Landroid/media/Cea708CCWidget$CCHandler;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCHandler"
.end annotation


# static fields
.field private static final CAPTION_ALL_WINDOWS_BITMAP:I = 0xff

.field private static final CAPTION_CLEAR_INTERVAL_MS:J = 0xea60L

.field private static final CAPTION_WINDOWS_MAX:I = 0x8

.field private static final DEBUG:Z = false

.field private static final MSG_CAPTION_CLEAR:I = 0x2

.field private static final MSG_DELAY_CANCEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CCHandler"

.field private static final TENTHS_OF_SECOND_IN_MILLIS:I = 0x64


# instance fields
.field private final mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

.field private final mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

.field private mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDelayed:Z

.field private final mPendingCaptionEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/Cea708CCParser$CaptionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/Cea708CCWidget$CCLayout;)V
    .locals 1
    .param p1, "ccLayout"    # Landroid/media/Cea708CCWidget$CCLayout;

    #@0
    .prologue
    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1393
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    #@6
    .line 1396
    const/16 v0, 0x8

    #@8
    new-array v0, v0, [Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@a
    .line 1395
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@c
    .line 1398
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 1397
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    #@13
    .line 1402
    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@15
    .line 1403
    new-instance v0, Landroid/os/Handler;

    #@17
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    #@1a
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    #@1c
    .line 1401
    return-void
.end method

.method private clearWindows(I)V
    .locals 3
    .param p1, "windowBitmap"    # I

    #@0
    .prologue
    .line 1508
    if-nez p1, :cond_0

    #@2
    .line 1509
    return-void

    #@3
    .line 1511
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "windowLayout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@17
    .line 1512
    .local v0, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->clear()V

    #@1a
    goto :goto_0

    #@1b
    .line 1507
    .end local v0    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_1
    return-void
.end method

.method private defineWindow(Landroid/media/Cea708CCParser$CaptionWindow;)V
    .locals 3
    .param p1, "window"    # Landroid/media/Cea708CCParser$CaptionWindow;

    #@0
    .prologue
    .line 1578
    if-nez p1, :cond_0

    #@2
    .line 1579
    return-void

    #@3
    .line 1581
    :cond_0
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    #@5
    .line 1582
    .local v0, "windowId":I
    if-ltz v0, :cond_1

    #@7
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@9
    array-length v2, v2

    #@a
    if-lt v0, v2, :cond_2

    #@c
    .line 1583
    :cond_1
    return-void

    #@d
    .line 1585
    :cond_2
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@f
    aget-object v1, v2, v0

    #@11
    .line 1586
    .local v1, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    if-nez v1, :cond_3

    #@13
    .line 1587
    new-instance v1, Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@15
    .end local v1    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@17
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;)V

    #@1e
    .line 1589
    .restart local v1    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_3
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@20
    invoke-virtual {v1, v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->initWindow(Landroid/media/Cea708CCWidget$CCLayout;Landroid/media/Cea708CCParser$CaptionWindow;)V

    #@23
    .line 1590
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@25
    aput-object v1, v2, v0

    #@27
    iput-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@29
    .line 1577
    return-void
.end method

.method private delay(I)V
    .locals 4
    .param p1, "tenthsOfSeconds"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1595
    if-ltz p1, :cond_0

    #@3
    const/16 v0, 0xff

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 1596
    :cond_0
    return-void

    #@8
    .line 1598
    :cond_1
    iput-boolean v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    #@a
    .line 1599
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    #@c
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    #@e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    .line 1600
    mul-int/lit8 v2, p1, 0x64

    #@14
    int-to-long v2, v2

    #@15
    .line 1599
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@18
    .line 1594
    return-void
.end method

.method private delayCancel()V
    .locals 1

    #@0
    .prologue
    .line 1604
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    #@3
    .line 1605
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCHandler;->processPendingBuffer()V

    #@6
    .line 1603
    return-void
.end method

.method private deleteWindows(I)V
    .locals 5
    .param p1, "windowBitmap"    # I

    #@0
    .prologue
    .line 1548
    if-nez p1, :cond_0

    #@2
    .line 1549
    return-void

    #@3
    .line 1551
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "windowLayout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@17
    .line 1552
    .local v0, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->removeFromCaptionView()V

    #@1a
    .line 1553
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@1c
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getCaptionWindowId()I

    #@1f
    move-result v3

    #@20
    const/4 v4, 0x0

    #@21
    aput-object v4, v2, v3

    #@23
    goto :goto_0

    #@24
    .line 1547
    .end local v0    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_1
    return-void
.end method

.method private displayWindows(I)V
    .locals 3
    .param p1, "windowBitmap"    # I

    #@0
    .prologue
    .line 1517
    if-nez p1, :cond_0

    #@2
    .line 1518
    return-void

    #@3
    .line 1520
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "windowLayout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@17
    .line 1521
    .local v0, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    #@1a
    goto :goto_0

    #@1b
    .line 1516
    .end local v0    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_1
    return-void
.end method

.method private getWindowsFromBitmap(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "windowBitmap"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/Cea708CCWidget$CCWindowLayout;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1495
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1496
    .local v2, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/Cea708CCWidget$CCWindowLayout;>;"
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    const/16 v3, 0x8

    #@8
    if-ge v0, v3, :cond_1

    #@a
    .line 1497
    const/4 v3, 0x1

    #@b
    shl-int/2addr v3, v0

    #@c
    and-int/2addr v3, p1

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 1498
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@11
    aget-object v1, v3, v0

    #@13
    .line 1499
    .local v1, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    if-eqz v1, :cond_0

    #@15
    .line 1500
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 1496
    .end local v1    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1504
    :cond_1
    return-object v2
.end method

.method private hideWindows(I)V
    .locals 3
    .param p1, "windowBitmap"    # I

    #@0
    .prologue
    .line 1526
    if-nez p1, :cond_0

    #@2
    .line 1527
    return-void

    #@3
    .line 1529
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "windowLayout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@17
    .line 1530
    .local v0, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    #@1a
    goto :goto_0

    #@1b
    .line 1525
    .end local v0    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_1
    return-void
.end method

.method private processPendingBuffer()V
    .locals 3

    #@0
    .prologue
    .line 1609
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/media/Cea708CCParser$CaptionEvent;

    #@12
    .line 1610
    .local v0, "event":Landroid/media/Cea708CCParser$CaptionEvent;
    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->processCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@15
    goto :goto_0

    #@16
    .line 1612
    .end local v0    # "event":Landroid/media/Cea708CCParser$CaptionEvent;
    :cond_0
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1b
    .line 1608
    return-void
.end method

.method private sendBufferToCurrentWindow(Ljava/lang/String;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1623
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1624
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@7
    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->sendBuffer(Ljava/lang/String;)V

    #@a
    .line 1625
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    #@c
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@f
    .line 1626
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    #@11
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    #@13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@16
    move-result-object v1

    #@17
    .line 1627
    const-wide/32 v2, 0xea60

    #@1a
    .line 1626
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1d
    .line 1622
    :cond_0
    return-void
.end method

.method private sendControlToCurrentWindow(C)V
    .locals 1
    .param p1, "control"    # C

    #@0
    .prologue
    .line 1617
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1618
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@6
    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->sendControl(C)V

    #@9
    .line 1616
    :cond_0
    return-void
.end method

.method private setCurrentWindowLayout(I)V
    .locals 2
    .param p1, "windowId"    # I

    #@0
    .prologue
    .line 1478
    if-ltz p1, :cond_0

    #@2
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@4
    array-length v1, v1

    #@5
    if-lt p1, v1, :cond_1

    #@7
    .line 1479
    :cond_0
    return-void

    #@8
    .line 1481
    :cond_1
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@a
    aget-object v0, v1, p1

    #@c
    .line 1482
    .local v0, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    if-nez v0, :cond_2

    #@e
    .line 1483
    return-void

    #@f
    .line 1488
    :cond_2
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@11
    .line 1477
    return-void
.end method

.method private setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V
    .locals 1
    .param p1, "attr"    # Landroid/media/Cea708CCParser$CaptionPenAttr;

    #@0
    .prologue
    .line 1633
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1634
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@6
    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V

    #@9
    .line 1632
    :cond_0
    return-void
.end method

.method private setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V
    .locals 1
    .param p1, "color"    # Landroid/media/Cea708CCParser$CaptionPenColor;

    #@0
    .prologue
    .line 1639
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1640
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@6
    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V

    #@9
    .line 1638
    :cond_0
    return-void
.end method

.method private setPenLocation(Landroid/media/Cea708CCParser$CaptionPenLocation;)V
    .locals 3
    .param p1, "location"    # Landroid/media/Cea708CCParser$CaptionPenLocation;

    #@0
    .prologue
    .line 1645
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1646
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@6
    iget v1, p1, Landroid/media/Cea708CCParser$CaptionPenLocation;->row:I

    #@8
    iget v2, p1, Landroid/media/Cea708CCParser$CaptionPenLocation;->column:I

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setPenLocation(II)V

    #@d
    .line 1644
    :cond_0
    return-void
.end method

.method private setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V
    .locals 1
    .param p1, "windowAttr"    # Landroid/media/Cea708CCParser$CaptionWindowAttr;

    #@0
    .prologue
    .line 1572
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1573
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@6
    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V

    #@9
    .line 1571
    :cond_0
    return-void
.end method

.method private toggleWindows(I)V
    .locals 3
    .param p1, "windowBitmap"    # I

    #@0
    .prologue
    .line 1535
    if-nez p1, :cond_0

    #@2
    .line 1536
    return-void

    #@3
    .line 1538
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "windowLayout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@17
    .line 1539
    .local v0, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 1540
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    #@20
    goto :goto_0

    #@21
    .line 1542
    :cond_1
    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    #@24
    goto :goto_0

    #@25
    .line 1534
    .end local v0    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1408
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 1416
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1410
    :pswitch_0
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCHandler;->delayCancel()V

    #@b
    .line 1411
    return v1

    #@c
    .line 1413
    :pswitch_1
    const/16 v0, 0xff

    #@e
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->clearWindows(I)V

    #@11
    .line 1414
    return v1

    #@12
    .line 1408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/media/Cea708CCParser$CaptionEvent;

    #@0
    .prologue
    .line 1420
    iget-boolean v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1421
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 1422
    return-void

    #@a
    .line 1424
    :cond_0
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->type:I

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 1419
    :goto_0
    return-void

    #@10
    .line 1426
    :pswitch_0
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->sendBufferToCurrentWindow(Ljava/lang/String;)V

    #@17
    goto :goto_0

    #@18
    .line 1429
    :pswitch_1
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@1a
    check-cast v0, Ljava/lang/Character;

    #@1c
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    #@1f
    move-result v0

    #@20
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->sendControlToCurrentWindow(C)V

    #@23
    goto :goto_0

    #@24
    .line 1432
    :pswitch_2
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@26
    check-cast v0, Ljava/lang/Integer;

    #@28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v0

    #@2c
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setCurrentWindowLayout(I)V

    #@2f
    goto :goto_0

    #@30
    .line 1435
    :pswitch_3
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@32
    check-cast v0, Ljava/lang/Integer;

    #@34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@37
    move-result v0

    #@38
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->clearWindows(I)V

    #@3b
    goto :goto_0

    #@3c
    .line 1438
    :pswitch_4
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@3e
    check-cast v0, Ljava/lang/Integer;

    #@40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@43
    move-result v0

    #@44
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->displayWindows(I)V

    #@47
    goto :goto_0

    #@48
    .line 1441
    :pswitch_5
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@4a
    check-cast v0, Ljava/lang/Integer;

    #@4c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@4f
    move-result v0

    #@50
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->hideWindows(I)V

    #@53
    goto :goto_0

    #@54
    .line 1444
    :pswitch_6
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@56
    check-cast v0, Ljava/lang/Integer;

    #@58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v0

    #@5c
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->toggleWindows(I)V

    #@5f
    goto :goto_0

    #@60
    .line 1447
    :pswitch_7
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@62
    check-cast v0, Ljava/lang/Integer;

    #@64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@67
    move-result v0

    #@68
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->deleteWindows(I)V

    #@6b
    goto :goto_0

    #@6c
    .line 1450
    :pswitch_8
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@6e
    check-cast v0, Ljava/lang/Integer;

    #@70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@73
    move-result v0

    #@74
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->delay(I)V

    #@77
    goto :goto_0

    #@78
    .line 1453
    :pswitch_9
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCHandler;->delayCancel()V

    #@7b
    goto :goto_0

    #@7c
    .line 1456
    :pswitch_a
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCHandler;->reset()V

    #@7f
    goto :goto_0

    #@80
    .line 1459
    :pswitch_b
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@82
    check-cast v0, Landroid/media/Cea708CCParser$CaptionPenAttr;

    #@84
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V

    #@87
    goto :goto_0

    #@88
    .line 1462
    :pswitch_c
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@8a
    check-cast v0, Landroid/media/Cea708CCParser$CaptionPenColor;

    #@8c
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V

    #@8f
    goto :goto_0

    #@90
    .line 1465
    :pswitch_d
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@92
    check-cast v0, Landroid/media/Cea708CCParser$CaptionPenLocation;

    #@94
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setPenLocation(Landroid/media/Cea708CCParser$CaptionPenLocation;)V

    #@97
    goto/16 :goto_0

    #@99
    .line 1468
    :pswitch_e
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@9b
    check-cast v0, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    #@9d
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V

    #@a0
    goto/16 :goto_0

    #@a2
    .line 1471
    :pswitch_f
    iget-object v0, p1, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    #@a4
    check-cast v0, Landroid/media/Cea708CCParser$CaptionWindow;

    #@a6
    invoke-direct {p0, v0}, Landroid/media/Cea708CCWidget$CCHandler;->defineWindow(Landroid/media/Cea708CCParser$CaptionWindow;)V

    #@a9
    goto/16 :goto_0

    #@ab
    .line 1424
    nop

    #@ac
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1558
    iput-object v2, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@3
    .line 1559
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mIsDelayed:Z

    #@6
    .line 1560
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@b
    .line 1561
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 1562
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@12
    aget-object v1, v1, v0

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1563
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@18
    aget-object v1, v1, v0

    #@1a
    invoke-virtual {v1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->removeFromCaptionView()V

    #@1d
    .line 1565
    :cond_0
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@1f
    aput-object v2, v1, v0

    #@21
    .line 1561
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1567
    :cond_1
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    #@26
    const/4 v2, 0x4

    #@27
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@2a
    .line 1568
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    #@2c
    const/4 v2, 0x2

    #@2d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@30
    .line 1557
    return-void
.end method
