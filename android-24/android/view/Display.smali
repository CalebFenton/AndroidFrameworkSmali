.class public final Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$ColorTransform;,
        Landroid/view/Display$HdrCapabilities;,
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
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    new-instance v0, Landroid/util/DisplayMetrics;

    #@5
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@a
    .line 298
    iput-object p1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    #@c
    .line 299
    iput p2, p0, Landroid/view/Display;->mDisplayId:I

    #@e
    .line 300
    iput-object p3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@10
    .line 301
    new-instance v0, Landroid/view/DisplayAdjustments;

    #@12
    invoke-direct {v0, p4}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    #@15
    iput-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@17
    .line 302
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    #@1a
    .line 305
    iget v0, p3, Landroid/view/DisplayInfo;->layerStack:I

    #@1c
    iput v0, p0, Landroid/view/Display;->mLayerStack:I

    #@1e
    .line 306
    iget v0, p3, Landroid/view/DisplayInfo;->flags:I

    #@20
    iput v0, p0, Landroid/view/Display;->mFlags:I

    #@22
    .line 307
    iget v0, p3, Landroid/view/DisplayInfo;->type:I

    #@24
    iput v0, p0, Landroid/view/Display;->mType:I

    #@26
    .line 308
    iget-object v0, p3, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    #@28
    iput-object v0, p0, Landroid/view/Display;->mAddress:Ljava/lang/String;

    #@2a
    .line 309
    iget v0, p3, Landroid/view/DisplayInfo;->ownerUid:I

    #@2c
    iput v0, p0, Landroid/view/Display;->mOwnerUid:I

    #@2e
    .line 310
    iget-object v0, p3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    #@30
    iput-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    #@32
    .line 297
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
    .line 868
    and-int/lit8 v2, p1, 0x4

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 869
    if-ne p0, p2, :cond_1

    #@8
    .line 868
    :cond_0
    :goto_0
    return v0

    #@9
    .line 870
    :cond_1
    const/16 v2, 0x3e8

    #@b
    if-eq p0, v2, :cond_0

    #@d
    .line 871
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
    .line 976
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
    .line 954
    packed-switch p0, :pswitch_data_0

    #@3
    .line 966
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 956
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    #@b
    return-object v0

    #@c
    .line 958
    :pswitch_1
    const-string/jumbo v0, "OFF"

    #@f
    return-object v0

    #@10
    .line 960
    :pswitch_2
    const-string/jumbo v0, "ON"

    #@13
    return-object v0

    #@14
    .line 962
    :pswitch_3
    const-string/jumbo v0, "DOZE"

    #@17
    return-object v0

    #@18
    .line 964
    :pswitch_4
    const-string/jumbo v0, "DOZE_SUSPEND"

    #@1b
    return-object v0

    #@1c
    .line 954
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
    .line 932
    packed-switch p0, :pswitch_data_0

    #@3
    .line 946
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 934
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    #@b
    return-object v0

    #@c
    .line 936
    :pswitch_1
    const-string/jumbo v0, "BUILT_IN"

    #@f
    return-object v0

    #@10
    .line 938
    :pswitch_2
    const-string/jumbo v0, "HDMI"

    #@13
    return-object v0

    #@14
    .line 940
    :pswitch_3
    const-string/jumbo v0, "WIFI"

    #@17
    return-object v0

    #@18
    .line 942
    :pswitch_4
    const-string/jumbo v0, "OVERLAY"

    #@1b
    return-object v0

    #@1c
    .line 944
    :pswitch_5
    const-string/jumbo v0, "VIRTUAL"

    #@1f
    return-object v0

    #@20
    .line 932
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
    .line 907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 908
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
    .line 909
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@10
    .line 910
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@12
    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@14
    iget-object v4, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@16
    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    #@19
    .line 911
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@1b
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1d
    iput v2, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    #@1f
    .line 912
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@21
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@23
    iput v2, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    #@25
    .line 913
    iput-wide v0, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    #@27
    .line 906
    :cond_0
    return-void
.end method

.method private updateDisplayInfoLocked()V
    .locals 3

    #@0
    .prologue
    .line 885
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    #@2
    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    #@4
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    #@7
    move-result-object v0

    #@8
    .line 886
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_1

    #@a
    .line 888
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 889
    const/4 v1, 0x0

    #@f
    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    #@11
    .line 883
    :cond_0
    :goto_0
    return-void

    #@12
    .line 896
    :cond_1
    iput-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@14
    .line 897
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    #@16
    if-nez v1, :cond_0

    #@18
    .line 898
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
    .line 410
    iget-object v0, p0, Landroid/view/Display;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAppVsyncOffsetNanos()J
    .locals 2

    #@0
    .prologue
    .line 752
    monitor-enter p0

    #@1
    .line 753
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 754
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
    .line 752
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public getColorTransform()Landroid/view/Display$ColorTransform;
    .locals 1

    #@0
    .prologue
    .line 703
    monitor-enter p0

    #@1
    .line 704
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 705
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getColorTransform()Landroid/view/Display$ColorTransform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    .line 703
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outSmallestSize"    # Landroid/graphics/Point;
    .param p2, "outLargestSize"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 538
    monitor-enter p0

    #@1
    .line 539
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 540
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@8
    iput v0, p1, Landroid/graphics/Point;->x:I

    #@a
    .line 541
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@c
    iget v0, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@e
    iput v0, p1, Landroid/graphics/Point;->y:I

    #@10
    .line 542
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@12
    iget v0, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@14
    iput v0, p2, Landroid/graphics/Point;->x:I

    #@16
    .line 543
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
    .line 537
    return-void

    #@1e
    .line 538
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method public getDefaultColorTransform()Landroid/view/Display$ColorTransform;
    .locals 1

    #@0
    .prologue
    .line 714
    monitor-enter p0

    #@1
    .line 715
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 716
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getDefaultColorTransform()Landroid/view/Display$ColorTransform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    .line 714
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@2
    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/view/Display;->mDisplayId:I

    #@2
    return v0
.end method

.method public getDisplayInfo(Landroid/view/DisplayInfo;)Z
    .locals 1
    .param p1, "outDisplayInfo"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    .line 352
    monitor-enter p0

    #@1
    .line 353
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 354
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    #@9
    .line 355
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    return v0

    #@d
    .line 352
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
    .line 382
    iget v0, p0, Landroid/view/Display;->mFlags:I

    #@2
    return v0
.end method

.method public getHdrCapabilities()Landroid/view/Display$HdrCapabilities;
    .locals 1

    #@0
    .prologue
    .line 724
    monitor-enter p0

    #@1
    .line 725
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 726
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v0, v0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    .line 724
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public getHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 575
    monitor-enter p0

    #@1
    .line 576
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    #@4
    .line 577
    iget v0, p0, Landroid/view/Display;->mCachedAppHeightCompat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return v0

    #@8
    .line 575
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
    .line 369
    iget v0, p0, Landroid/view/Display;->mLayerStack:I

    #@2
    return v0
.end method

.method public getMaximumSizeDimension()I
    .locals 2

    #@0
    .prologue
    .line 553
    monitor-enter p0

    #@1
    .line 554
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 555
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
    .line 553
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
    .line 800
    monitor-enter p0

    #@1
    .line 801
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 802
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
    .line 799
    return-void

    #@d
    .line 800
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
    .line 672
    monitor-enter p0

    #@1
    .line 673
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 674
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
    .line 672
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
    .line 458
    monitor-enter p0

    #@1
    .line 459
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 460
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
    .line 458
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
    .line 627
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
    .line 588
    monitor-enter p0

    #@1
    .line 589
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 590
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget v0, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    #@8
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@a
    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    #@c
    .line 591
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@e
    iget v2, v2, Landroid/view/DisplayInfo;->overscanRight:I

    #@10
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@12
    iget v3, v3, Landroid/view/DisplayInfo;->overscanBottom:I

    #@14
    .line 590
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 587
    return-void

    #@19
    .line 588
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
    .line 436
    iget-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOwnerUid()I
    .locals 1

    #@0
    .prologue
    .line 423
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
    .line 639
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getPresentationDeadlineNanos()J
    .locals 2

    #@0
    .prologue
    .line 770
    monitor-enter p0

    #@1
    .line 771
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 772
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
    .line 770
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
    .line 838
    monitor-enter p0

    #@1
    .line 839
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 840
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    .line 841
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@8
    const/4 v2, 0x0

    #@9
    .line 840
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 837
    return-void

    #@e
    .line 838
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public getRealSize(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outSize"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 819
    monitor-enter p0

    #@1
    .line 820
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 821
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@8
    iput v0, p1, Landroid/graphics/Point;->x:I

    #@a
    .line 822
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
    .line 818
    return-void

    #@12
    .line 819
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
    .line 500
    monitor-enter p0

    #@1
    .line 501
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 502
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@8
    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    #@d
    .line 503
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
    .line 499
    return-void

    #@1c
    .line 500
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
    .line 646
    monitor-enter p0

    #@1
    .line 647
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 648
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
    .line 646
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
    .line 614
    monitor-enter p0

    #@1
    .line 615
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 616
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
    .line 614
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
    .line 485
    monitor-enter p0

    #@1
    .line 486
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 487
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@8
    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    #@d
    .line 488
    iget-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@f
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@11
    iput v0, p1, Landroid/graphics/Point;->x:I

    #@13
    .line 489
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
    .line 484
    return-void

    #@1b
    .line 485
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
    .line 852
    monitor-enter p0

    #@1
    .line 853
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 854
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
    .line 852
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public getSupportedColorTransforms()[Landroid/view/Display$ColorTransform;
    .locals 2

    #@0
    .prologue
    .line 735
    monitor-enter p0

    #@1
    .line 736
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 737
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v0, v1, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    #@8
    .line 738
    .local v0, "transforms":[Landroid/view/Display$ColorTransform;
    array-length v1, v0

    #@9
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [Landroid/view/Display$ColorTransform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    return-object v1

    #@11
    .line 735
    .end local v0    # "transforms":[Landroid/view/Display$ColorTransform;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public getSupportedModes()[Landroid/view/Display$Mode;
    .locals 2

    #@0
    .prologue
    .line 682
    monitor-enter p0

    #@1
    .line 683
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 684
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v0, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    #@8
    .line 685
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
    .line 682
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
    .line 662
    monitor-enter p0

    #@1
    .line 663
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 664
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
    .line 662
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
    .line 399
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
    .line 564
    monitor-enter p0

    #@1
    .line 565
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    #@4
    .line 566
    iget v0, p0, Landroid/view/Display;->mCachedAppWidthCompat:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return v0

    #@8
    .line 564
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
    .line 863
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
    .line 879
    iget v0, p0, Landroid/view/Display;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0xc

    #@4
    .line 880
    const/16 v1, 0x8

    #@6
    .line 879
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
    .line 338
    monitor-enter p0

    #@1
    .line 339
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 340
    iget-boolean v0, p0, Landroid/view/Display;->mIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return v0

    #@8
    .line 338
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public requestColorTransform(Landroid/view/Display$ColorTransform;)V
    .locals 3
    .param p1, "colorTransform"    # Landroid/view/Display$ColorTransform;

    #@0
    .prologue
    .line 695
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    #@2
    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    #@4
    invoke-virtual {p1}, Landroid/view/Display$ColorTransform;->getId()I

    #@7
    move-result v2

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->requestColorTransform(II)V

    #@b
    .line 694
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 920
    monitor-enter p0

    #@1
    .line 921
    :try_start_0
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    #@4
    .line 922
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@6
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@8
    iget-object v2, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    #@d
    .line 923
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
    .line 924
    const-string/jumbo v1, ", "

    #@2f
    .line 923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 924
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    #@35
    .line 923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 924
    const-string/jumbo v1, ", isValid="

    #@3c
    .line 923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 924
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    #@42
    .line 923
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
    .line 920
    :catchall_0
    move-exception v0

    #@4d
    monitor-exit p0

    #@4e
    throw v0
.end method
