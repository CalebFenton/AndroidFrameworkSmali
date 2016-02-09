.class Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mLastReceivedDownEdgeFlags:I

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerDownX:F

.field private mLastReceivedUpPointerDownY:F

.field private mPrimaryPointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    #@0
    .prologue
    const/16 v1, 0x20

    #@2
    .line 1663
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1667
    new-array v0, v1, [F

    #@9
    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    #@b
    .line 1668
    new-array v0, v1, [F

    #@d
    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    #@f
    .line 1669
    new-array v0, v1, [J

    #@11
    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    #@13
    .line 1663
    return-void
.end method

.method private findPrimaryPointerId()I
    .locals 8

    #@0
    .prologue
    .line 1872
    const/4 v6, -0x1

    #@1
    .line 1873
    .local v6, "primaryPointerId":I
    const-wide v2, 0x7fffffffffffffffL

    #@6
    .line 1876
    .local v2, "minDownTime":J
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    #@8
    .line 1877
    .local v5, "pointerIdBits":I
    :cond_0
    :goto_0
    if-lez v5, :cond_1

    #@a
    .line 1878
    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@d
    move-result v4

    #@e
    .line 1879
    .local v4, "pointerId":I
    const/4 v7, 0x1

    #@f
    shl-int/2addr v7, v4

    #@10
    not-int v7, v7

    #@11
    and-int/2addr v5, v7

    #@12
    .line 1880
    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    #@14
    aget-wide v0, v7, v4

    #@16
    .line 1881
    .local v0, "downPointerTime":J
    cmp-long v7, v0, v2

    #@18
    if-gez v7, :cond_0

    #@1a
    .line 1882
    move-wide v2, v0

    #@1b
    .line 1883
    move v6, v4

    #@1c
    goto :goto_0

    #@1d
    .line 1886
    .end local v0    # "downPointerTime":J
    .end local v4    # "pointerId":I
    :cond_1
    return v6
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .locals 6
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1827
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@4
    move-result v1

    #@5
    .line 1828
    .local v1, "pointerId":I
    const/4 v2, 0x1

    #@6
    shl-int v0, v2, v1

    #@8
    .line 1830
    .local v0, "pointerFlag":I
    const-wide/16 v2, 0x0

    #@a
    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    #@c
    .line 1831
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    #@e
    .line 1832
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    #@10
    .line 1834
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@13
    move-result v2

    #@14
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    #@16
    .line 1836
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    #@18
    or-int/2addr v2, v0

    #@19
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    #@1b
    .line 1837
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    #@1d
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    #@20
    move-result v3

    #@21
    aput v3, v2, v1

    #@23
    .line 1838
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    #@25
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    #@28
    move-result v3

    #@29
    aput v3, v2, v1

    #@2b
    .line 1839
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    #@2d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    #@30
    move-result-wide v4

    #@31
    aput-wide v4, v2, v1

    #@33
    .line 1841
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    #@35
    .line 1826
    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .locals 6
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1851
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@4
    move-result v1

    #@5
    .line 1852
    .local v1, "pointerId":I
    const/4 v2, 0x1

    #@6
    shl-int v0, v2, v1

    #@8
    .line 1854
    .local v0, "pointerFlag":I
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownTime(I)J

    #@b
    move-result-wide v2

    #@c
    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    #@e
    .line 1855
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    #@10
    aget v2, v2, v1

    #@12
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    #@14
    .line 1856
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    #@16
    aget v2, v2, v1

    #@18
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    #@1a
    .line 1858
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    #@1c
    not-int v3, v0

    #@1d
    and-int/2addr v2, v3

    #@1e
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    #@20
    .line 1859
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    #@22
    aput v4, v2, v1

    #@24
    .line 1860
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    #@26
    aput v4, v2, v1

    #@28
    .line 1861
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    #@2a
    const-wide/16 v4, 0x0

    #@2c
    aput-wide v4, v2, v1

    #@2e
    .line 1863
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    #@30
    if-ne v2, v1, :cond_0

    #@32
    .line 1864
    const/4 v2, -0x1

    #@33
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    #@35
    .line 1850
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 1692
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    #@6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@9
    .line 1693
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    #@b
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@e
    .line 1694
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    #@10
    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    #@13
    .line 1695
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    #@15
    .line 1696
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    #@17
    .line 1697
    iput-wide v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    #@19
    .line 1698
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    #@1b
    .line 1699
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    #@1d
    .line 1691
    return-void
.end method

.method public getLastReceivedDownEdgeFlags()I
    .locals 1

    #@0
    .prologue
    .line 1817
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    #@2
    return v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .locals 1

    #@0
    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    #@2
    return-object v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .locals 2

    #@0
    .prologue
    .line 1796
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    #@2
    return-wide v0
.end method

.method public getLastReceivedUpPointerDownX()F
    .locals 1

    #@0
    .prologue
    .line 1803
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    #@2
    return v0
.end method

.method public getLastReceivedUpPointerDownY()F
    .locals 1

    #@0
    .prologue
    .line 1810
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    #@2
    return v0
.end method

.method public getPrimaryPointerId()I
    .locals 2

    #@0
    .prologue
    .line 1786
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1787
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->findPrimaryPointerId()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    #@b
    .line 1789
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    #@d
    return v0
.end method

.method public getReceivedPointerDownCount()I
    .locals 1

    #@0
    .prologue
    .line 1744
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .locals 2
    .param p1, "pointerId"    # I

    #@0
    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    #@2
    aget-wide v0, v0, p1

    #@4
    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .locals 1
    .param p1, "pointerId"    # I

    #@0
    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .locals 1
    .param p1, "pointerId"    # I

    #@0
    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public isReceivedPointerDown(I)Z
    .locals 4
    .param p1, "pointerId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1754
    shl-int v0, v1, p1

    #@4
    .line 1755
    .local v0, "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    #@6
    and-int/2addr v3, v0

    #@7
    if-eqz v3, :cond_0

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    move v1, v2

    #@b
    goto :goto_0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1708
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1709
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    #@6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@9
    .line 1711
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    #@f
    .line 1713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@12
    move-result v0

    #@13
    .line 1714
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@16
    .line 1707
    :goto_0
    :pswitch_0
    return-void

    #@17
    .line 1716
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@1a
    move-result v1

    #@1b
    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    #@1e
    goto :goto_0

    #@1f
    .line 1719
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@22
    move-result v1

    #@23
    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    #@26
    goto :goto_0

    #@27
    .line 1722
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@2a
    move-result v1

    #@2b
    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    #@2e
    goto :goto_0

    #@2f
    .line 1725
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@32
    move-result v1

    #@33
    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    #@36
    goto :goto_0

    #@37
    .line 1714
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1892
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "========================="

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1893
    const-string/jumbo v2, "\nDown pointers #"

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 1894
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    .line 1895
    const-string/jumbo v2, " [ "

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1896
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    #@21
    if-ge v1, v2, :cond_1

    #@23
    .line 1897
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 1898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 1899
    const-string/jumbo v2, " "

    #@2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 1896
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1902
    :cond_1
    const-string/jumbo v2, "]"

    #@38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 1903
    const-string/jumbo v2, "\nPrimary pointer id [ "

    #@3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 1904
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    #@44
    move-result v2

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    .line 1905
    const-string/jumbo v2, " ]"

    #@4b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 1906
    const-string/jumbo v2, "\n========================="

    #@51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 1907
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    return-object v2
.end method
