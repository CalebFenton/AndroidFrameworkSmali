.class public final Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode;
    }
.end annotation


# static fields
.field private static final CACHED_APP_SIZE_DURATION_MILLIS:I = 0x14

.field private static final DEBUG:Z = false

.field public static final DEFAULT_DISPLAY:I = 0x0

.field public static final FLAG_PRESENTATION:I = 0x8

.field public static final FLAG_PRIVATE:I = 0x4

.field public static final FLAG_ROUND:I = 0x10

.field public static final FLAG_SCALING_DISABLED:I = 0x40000000

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x1

.field public static final INVALID_DISPLAY:I = -0x1

.field public static final STATE_DOZE:I = 0x3

.field public static final STATE_DOZE_SUSPEND:I = 0x4

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x2

.field public static final STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Display"

.field public static final TYPE_BUILT_IN:I = 0x1

.field public static final TYPE_HDMI:I = 0x2

.field public static final TYPE_OVERLAY:I = 0x4

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_VIRTUAL:I = 0x5

.field public static final TYPE_WIFI:I = 0x3


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mCachedAppHeightCompat:I

.field private mCachedAppWidthCompat:I

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDisplayId:I

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mFlags:I

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private mIsValid:Z

.field private mLastCachedAppSizeUpdate:J

.field private final mLayerStack:I

.field private final mOwnerPackageName:Ljava/lang/String;

.field private final mOwnerUid:I

.field private final mTempMetrics:Landroid/util/DisplayMetrics;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V
    .locals 1
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;

    #@0
    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    new-instance v0, Landroid/util/DisplayMetrics;

    #@5
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@a
    .line 290
    iput-object p1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    #@c
    .line 291
    iput p2, p0, Landroid/view/Display;->mDisplayId:I

    #@e
    .line 292
    iput-object p3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@10
    .line 293
    new-instance v0, Landroid/view/DisplayAdjustments;

    #@12
    invoke-direct {v0, p4}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    #@15
    iput-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@17
    .line 294
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    #@1a
    .line 297
    iget v0, p3, Landroid/view/DisplayInfo;->layerStack:I

    #@1c
    iput v0, p0, Landroid/view/Display;->mLayerStack:I

    #@1e
    .line 298
    iget v0, p3, Landroid/view/DisplayInfo;->flags:I

    #@20
    iput v0, p0, Landroid/view/Display;->mFlags:I

    #@22
    .line 299
    iget v0, p3, Landroid/view/DisplayInfo;->type:I

    #@24
    iput v0, p0, Landroid/view/Display;->mType:I

    #@26
    .line 300
    iget-object v0, p3, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@28
    iput-object v0, p0, Landroid/view/Display;->mAddress:Ljava/lang/String;

    #@2a
    .line 301
    iget v0, p3, Landroid/view/DisplayInfo;->ownerUid:I

    #@2c
    iput v0, p0, Landroid/view/Display;->mOwnerUid:I

    #@2e
    .line 302
    iget-object v0, p3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@30
    iput-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    #@32
    .line 289
    return-void
.end method

.method public static hasAccess(III)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "flags"    # I
    .param p2, "ownerUid"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 799
    and-int/lit8 v2, p1, 0x4

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 800
    if-ne p0, p2, :cond_1

    #@8
    .line 799
    :cond_0
    :goto_0
    return v0

    #@9
    .line 801
    :cond_1
    const/16 v2, 0x3e8

    #@b
    if-eq p0, v2, :cond_0

    #@d
    .line 802
    if-eqz p0, :cond_0

    #@f
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public static isSuspendedState(I)Z
    .locals 2
    .param p0, "state"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 907
    if-eq p0, v0, :cond_0

    #@3
    const/4 v1, 0x4

    #@4
    if-ne p0, v1, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 885
    packed-switch p0, :pswitch_data_0

    #@3
    .line 897
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 887
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    #@b
    return-object v0

    #@c
    .line 889
    :pswitch_1
    const-string/jumbo v0, "OFF"

    #@f
    return-object v0

    #@10
    .line 891
    :pswitch_2
    const-string/jumbo v0, "ON"

    #@13
    return-object v0

    #@14
    .line 893
    :pswitch_3
    const-string/jumbo v0, "DOZE"

    #@17
    return-object v0

    #@18
    .line 895
    :pswitch_4
    const-string/jumbo v0, "DOZE_SUSPEND"

    #@1b
    return-object v0

    #@1c
    .line 885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 863
    packed-switch p0, :pswitch_data_0

    #@3
    .line 877
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 865
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    #@b
    return-object v0

    #@c
    .line 867
    :pswitch_1
    const-string/jumbo v0, "BUILT_IN"

    #@f
    return-object v0

    #@10
    .line 869
    :pswitch_2
    const-string/jumbo v0, "HDMI"

    #@13
    return-object v0

    #@14
    .line 871
    :pswitch_3
    const-string/jumbo v0, "WIFI"

    #@17
    return-object v0

    #@18
    .line 873
    :pswitch_4
    const-string/jumbo v0, "OVERLAY"

    #@1b
    return-object v0

    #@1c
    .line 875
    :pswitch_5
    const-string/jumbo v0, "VIRTUAL"

    #@1f
    return-object v0

    #@20
    .line 863
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateCachedAppSizeIfNeededLocked()V
    .locals 6

    #@0
    .prologue
    .line 838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 839
    .local v0, "now":J
    iget-wide v2, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    #@6
    const-wide/16 v4, 0x14

    #@8
    add-long/2addr v2, v4

    #@9
    cmp-long v2, v0, v2

    #@b
    if-lez v2, :cond_0

    #@d
    .line 840
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@10
    .line 841
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@12
    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@14
    iget-object v4, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@16
    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    #@19
    .line 842
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@1b
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1d
    iput v2, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    #@1f
    .line 843
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@21
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@23
    iput v2, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    #@25
    .line 844
    iput-wide v0, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    #@27
    .line 837
    :cond_0
    return-void
.end method

.method private updateDisplayInfoLocked()V
    .locals 3

    #@0
    .prologue
    .line 816
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    #@2
    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    #@4
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    #@7
    move-result-object v0

    #@8
    .line 817
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_1

    #@a
    .line 819
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 820
    const/4 v1, 0x0

    #@f
    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    #@11
    .line 814
    :cond_0
    :goto_0
    return-void

    #@12
    .line 827
    :cond_1
    iput-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@14
    .line 828
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    #@16
    if-nez v1, :cond_0

    #@18
    .line 829
    const/4 v1, 0x1

    #@19
    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    #@1b
    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Landroid/view/Display;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAppVsyncOffsetNanos()J
    .locals 2

    #@0
    .prologue
    .line 691
    monitor-enter p0

    #@1
    .line 692
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 693
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-wide v0, v0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-wide v0

    #@a
    .line 691
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outSmallestSize"    # Landroid/graphics/Point;
    .param p2, "outLargestSize"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 530
    monitor-enter p0

    #@1
    .line 531
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 532
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@8
    iput v0, p1, Landroid/graphics/Point;->x:I

    #@a
    .line 533
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@c
    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@e
    iput v0, p1, Landroid/graphics/Point;->y:I

    #@10
    .line 534
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@12
    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@14
    iput v0, p2, Landroid/graphics/Point;->x:I

    #@16
    .line 535
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@18
    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@1a
    iput v0, p2, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 529
    return-void

    #@1e
    .line 530
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    #@0
    .prologue
    .line 438
    iget-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@2
    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    #@0
    .prologue
    .line 313
    iget v0, p0, Landroid/view/Display;->mDisplayId:I

    #@2
    return v0
.end method

.method public getDisplayInfo(Landroid/view/DisplayInfo;)Z
    .locals 1
    .param p1, "outDisplayInfo"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    .line 344
    monitor-enter p0

    #@1
    .line 345
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 346
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    #@9
    .line 347
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    return v0

    #@d
    .line 344
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 374
    iget v0, p0, Landroid/view/Display;->mFlags:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 567
    monitor-enter p0

    #@1
    .line 568
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    #@4
    .line 569
    iget v0, p0, Landroid/view/Display;->mCachedAppHeightCompat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return v0

    #@8
    .line 567
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public getLayerStack()I
    .locals 1

    #@0
    .prologue
    .line 361
    iget v0, p0, Landroid/view/Display;->mLayerStack:I

    #@2
    return v0
.end method

.method public getMaximumSizeDimension()I
    .locals 2

    #@0
    .prologue
    .line 545
    monitor-enter p0

    #@1
    .line 546
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 547
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@8
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@a
    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v0

    #@10
    monitor-exit p0

    #@11
    return v0

    #@12
    .line 545
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 730
    monitor-enter p0

    #@1
    .line 731
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 732
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 729
    return-void

    #@d
    .line 730
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public getMode()Landroid/view/Display$Mode;
    .locals 1

    #@0
    .prologue
    .line 664
    monitor-enter p0

    #@1
    .line 665
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 666
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    .line 664
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 450
    monitor-enter p0

    #@1
    .line 451
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 452
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v0, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    .line 450
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public getOrientation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 619
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getOverscanInsets(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 580
    monitor-enter p0

    #@1
    .line 581
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 582
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget v0, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@8
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@a
    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    #@c
    .line 583
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@e
    iget v2, v2, Landroid/view/DisplayInfo;->overscanRight:I

    #@10
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@12
    iget v3, v3, Landroid/view/DisplayInfo;->overscanBottom:I

    #@14
    .line 582
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 579
    return-void

    #@19
    .line 580
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public getOwnerPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOwnerUid()I
    .locals 1

    #@0
    .prologue
    .line 415
    iget v0, p0, Landroid/view/Display;->mOwnerUid:I

    #@2
    return v0
.end method

.method public getPixelFormat()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 631
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getPresentationDeadlineNanos()J
    .locals 2

    #@0
    .prologue
    .line 709
    monitor-enter p0

    #@1
    .line 710
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 711
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-wide v0, v0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-wide v0

    #@a
    .line 709
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public getRealMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 768
    monitor-enter p0

    #@1
    .line 769
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 770
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    .line 771
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@8
    .line 772
    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@a
    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    #@d
    move-result-object v2

    #@e
    .line 770
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 767
    return-void

    #@13
    .line 768
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public getRealSize(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outSize"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 749
    monitor-enter p0

    #@1
    .line 750
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 751
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@8
    iput v0, p1, Landroid/graphics/Point;->x:I

    #@a
    .line 752
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@c
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@e
    iput v0, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 748
    return-void

    #@12
    .line 749
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public getRectSize(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outSize"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 492
    monitor-enter p0

    #@1
    .line 493
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 494
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@8
    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    #@d
    .line 495
    iget-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@f
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@11
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@13
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    #@15
    const/4 v2, 0x0

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 491
    return-void

    #@1c
    .line 492
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method public getRefreshRate()F
    .locals 1

    #@0
    .prologue
    .line 638
    monitor-enter p0

    #@1
    .line 639
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 640
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v0

    #@e
    monitor-exit p0

    #@f
    return v0

    #@10
    .line 638
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public getRotation()I
    .locals 1

    #@0
    .prologue
    .line 606
    monitor-enter p0

    #@1
    .line 607
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 608
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return v0

    #@a
    .line 606
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outSize"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 477
    monitor-enter p0

    #@1
    .line 478
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 479
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@8
    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    #@d
    .line 480
    iget-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@f
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@11
    iput v0, p1, Landroid/graphics/Point;->x:I

    #@13
    .line 481
    iget-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@15
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@17
    iput v0, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 476
    return-void

    #@1b
    .line 477
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 783
    monitor-enter p0

    #@1
    .line 784
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 785
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@a
    iget v0, v0, Landroid/view/DisplayInfo;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :goto_0
    monitor-exit p0

    #@d
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0

    #@10
    .line 783
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public getSupportedModes()[Landroid/view/Display$Mode;
    .locals 2

    #@0
    .prologue
    .line 674
    monitor-enter p0

    #@1
    .line 675
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 676
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v0, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@8
    .line 677
    .local v0, "modes":[Landroid/view/Display$Mode;
    array-length v1, v0

    #@9
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [Landroid/view/Display$Mode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    return-object v1

    #@11
    .line 674
    .end local v0    # "modes":[Landroid/view/Display$Mode;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public getSupportedRefreshRates()[F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 654
    monitor-enter p0

    #@1
    .line 655
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 656
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    .line 654
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 391
    iget v0, p0, Landroid/view/Display;->mType:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 556
    monitor-enter p0

    #@1
    .line 557
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    #@4
    .line 558
    iget v0, p0, Landroid/view/Display;->mCachedAppWidthCompat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return v0

    #@8
    .line 556
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public hasAccess(I)Z
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 794
    iget v0, p0, Landroid/view/Display;->mFlags:I

    #@2
    iget v1, p0, Landroid/view/Display;->mOwnerUid:I

    #@4
    invoke-static {p1, v0, v1}, Landroid/view/Display;->hasAccess(III)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isPublicPresentation()Z
    .locals 2

    #@0
    .prologue
    .line 810
    iget v0, p0, Landroid/view/Display;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0xc

    #@4
    .line 811
    const/16 v1, 0x8

    #@6
    .line 810
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 330
    monitor-enter p0

    #@1
    .line 331
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 332
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return v0

    #@8
    .line 330
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 851
    monitor-enter p0

    #@1
    .line 852
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 853
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@8
    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    #@d
    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v1, "Display id "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ": "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 855
    const-string/jumbo v1, ", "

    #@2f
    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 855
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@35
    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 855
    const-string/jumbo v1, ", isValid="

    #@3c
    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 855
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    #@42
    .line 854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    move-result-object v0

    #@4a
    monitor-exit p0

    #@4b
    return-object v0

    #@4c
    .line 851
    :catchall_0
    move-exception v0

    #@4d
    monitor-exit p0

    #@4e
    throw v0
.end method
