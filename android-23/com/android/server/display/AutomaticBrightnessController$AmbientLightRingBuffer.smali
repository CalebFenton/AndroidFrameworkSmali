.class final Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbientLightRingBuffer"
.end annotation


# static fields
.field private static final BUFFER_SLACK:F = 1.5f


# instance fields
.field private mCapacity:I

.field private mCount:I

.field private mEnd:I

.field private mRingLux:[F

.field private mRingTime:[J

.field private mStart:I


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "lightSensorRate"    # J

    #@0
    .prologue
    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 657
    long-to-float v0, p1

    #@4
    const v1, 0x466a6000    # 15000.0f

    #@7
    div-float v0, v1, v0

    #@9
    float-to-double v0, v0

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@d
    move-result-wide v0

    #@e
    double-to-int v0, v0

    #@f
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@11
    .line 658
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@13
    new-array v0, v0, [F

    #@15
    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    #@17
    .line 659
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@19
    new-array v0, v0, [J

    #@1b
    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    #@1d
    .line 656
    return-void
.end method

.method private offsetOf(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 758
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 759
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@b
    throw v0

    #@c
    .line 761
    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@e
    add-int/2addr p1, v0

    #@f
    .line 762
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@11
    if-lt p1, v0, :cond_2

    #@13
    .line 763
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@15
    sub-int/2addr p1, v0

    #@16
    .line 765
    :cond_2
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 734
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@3
    .line 735
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    #@5
    .line 736
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@7
    .line 733
    return-void
.end method

.method public getLux(I)F
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getTime(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    #@5
    move-result v1

    #@6
    aget-wide v0, v0, v1

    #@8
    return-wide v0
.end method

.method public prune(J)V
    .locals 5
    .param p1, "horizon"    # J

    #@0
    .prologue
    .line 701
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@2
    if-nez v1, :cond_1

    #@4
    .line 702
    return-void

    #@5
    .line 720
    .local v0, "next":I
    :cond_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@7
    .line 721
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@d
    .line 705
    .end local v0    # "next":I
    :cond_1
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@f
    const/4 v2, 0x1

    #@10
    if-le v1, v2, :cond_3

    #@12
    .line 706
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@14
    add-int/lit8 v0, v1, 0x1

    #@16
    .line 707
    .restart local v0    # "next":I
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@18
    if-lt v0, v1, :cond_2

    #@1a
    .line 708
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@1c
    sub-int/2addr v0, v1

    #@1d
    .line 710
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    #@1f
    aget-wide v2, v1, v0

    #@21
    cmp-long v1, v2, p1

    #@23
    if-lez v1, :cond_0

    #@25
    .line 724
    .end local v0    # "next":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    #@27
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@29
    aget-wide v2, v1, v2

    #@2b
    cmp-long v1, v2, p1

    #@2d
    if-gez v1, :cond_4

    #@2f
    .line 725
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    #@31
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@33
    aput-wide p1, v1, v2

    #@35
    .line 700
    :cond_4
    return-void
.end method

.method public push(JF)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "lux"    # F

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 671
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    #@3
    .line 672
    .local v4, "next":I
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@5
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@7
    if-ne v5, v6, :cond_1

    #@9
    .line 673
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@b
    mul-int/lit8 v3, v5, 0x2

    #@d
    .line 675
    .local v3, "newSize":I
    new-array v1, v3, [F

    #@f
    .line 676
    .local v1, "newRingLux":[F
    new-array v2, v3, [J

    #@11
    .line 677
    .local v2, "newRingTime":[J
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@13
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@15
    sub-int v0, v5, v6

    #@17
    .line 678
    .local v0, "length":I
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    #@19
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@1b
    invoke-static {v5, v6, v1, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@1e
    .line 679
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    #@20
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@22
    invoke-static {v5, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@25
    .line 680
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@27
    if-eqz v5, :cond_0

    #@29
    .line 681
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    #@2b
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@2d
    invoke-static {v5, v7, v1, v0, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@30
    .line 682
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    #@32
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@34
    invoke-static {v5, v7, v2, v0, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@37
    .line 684
    :cond_0
    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    #@39
    .line 685
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    #@3b
    .line 687
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@3d
    .line 688
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@3f
    .line 689
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    #@41
    .line 691
    .end local v0    # "length":I
    .end local v1    # "newRingLux":[F
    .end local v2    # "newRingTime":[J
    .end local v3    # "newSize":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    #@43
    aput-wide p1, v5, v4

    #@45
    .line 692
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    #@47
    aput p3, v5, v4

    #@49
    .line 693
    add-int/lit8 v5, v4, 0x1

    #@4b
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    #@4d
    .line 694
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    #@4f
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    #@51
    if-ne v5, v6, :cond_2

    #@53
    .line 695
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    #@55
    .line 697
    :cond_2
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@57
    add-int/lit8 v5, v5, 0x1

    #@59
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@5b
    .line 670
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 730
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 742
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v4, 0x5b

    #@7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@a
    .line 743
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@d
    if-ge v1, v4, :cond_2

    #@f
    .line 744
    add-int/lit8 v4, v1, 0x1

    #@11
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    #@13
    if-ge v4, v5, :cond_1

    #@15
    add-int/lit8 v4, v1, 0x1

    #@17
    invoke-virtual {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    #@1a
    move-result-wide v2

    #@1b
    .line 745
    .local v2, "next":J
    :goto_1
    if-eqz v1, :cond_0

    #@1d
    .line 746
    const-string/jumbo v4, ", "

    #@20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 748
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    #@26
    move-result v4

    #@27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    #@2a
    .line 749
    const-string/jumbo v4, " / "

    #@2d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 750
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    #@33
    move-result-wide v4

    #@34
    sub-long v4, v2, v4

    #@36
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@39
    .line 751
    const-string/jumbo v4, "ms"

    #@3c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3f
    .line 743
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 744
    .end local v2    # "next":J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@45
    move-result-wide v2

    #@46
    .restart local v2    # "next":J
    goto :goto_1

    #@47
    .line 753
    .end local v2    # "next":J
    :cond_2
    const/16 v4, 0x5d

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4c
    .line 754
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    return-object v4
.end method
