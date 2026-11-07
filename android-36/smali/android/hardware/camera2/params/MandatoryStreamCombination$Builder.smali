.class public final Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;
    }
.end annotation


# instance fields
.field private final blacklist kPreviewSizeBound:Landroid/util/Size;

.field private blacklist mCameraId:I

.field private blacklist mCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDisplaySize:Landroid/util/Size;

.field private blacklist mHwLevel:I

.field private blacklist mIsCroppedRawSupported:Z

.field private blacklist mIsHiddenPhysicalCamera:Z

.field private blacklist mIsPreviewStabilizationSupported:Z

.field private blacklist mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private blacklist mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;


# direct methods
.method public constructor blacklist <init>(IILandroid/util/Size;Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/StreamConfigurationMap;ZZ)V
    .registers 12
    .param p1, "cameraId"    # I
    .param p2, "hwLevel"    # I
    .param p3, "displaySize"    # Landroid/util/Size;
    .param p5, "sm"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p6, "smMaxResolution"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p7, "previewStabilization"    # Z
    .param p8, "isCroppedRawSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            "ZZ)V"
        }
    .end annotation

    .line 1399
    .local p4, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsPreviewStabilizationSupported:Z

    .line 1379
    iput-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsCroppedRawSupported:Z

    .line 1381
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x440

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    .line 1400
    iput p1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    .line 1401
    iput-object p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    .line 1402
    iput-object p4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCapabilities:Ljava/util/List;

    .line 1403
    iput-object p5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1404
    iput-object p6, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1405
    iput p2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    .line 1406
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    .line 1407
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsHiddenPhysicalCamera:Z

    .line 1408
    iput-boolean p7, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsPreviewStabilizationSupported:Z

    .line 1409
    iput-boolean p8, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsCroppedRawSupported:Z

    .line 1410
    return-void
.end method

.method private blacklist createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 27
    .param p1, "combTemplate"    # Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .param p2, "substitutedFormat"    # I

    .line 1743
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1745
    .local v3, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v0, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1746
    iget-object v0, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-eq v0, v4, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    move v4, v0

    .line 1747
    .local v4, "isReprocess":Z
    const/16 v0, 0x20

    if-eqz v4, :cond_7b

    .line 1748
    const/4 v7, -0x1

    .line 1749
    .local v7, "format":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v8

    .line 1750
    .local v10, "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    iget-object v8, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v8, v9, :cond_3e

    .line 1751
    iget-object v8, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1752
    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v8

    .line 1751
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1754
    const/16 v7, 0x22

    move v11, v7

    goto :goto_67

    .line 1755
    :cond_3e
    iget-object v8, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v8, v9, :cond_55

    .line 1756
    iget-object v8, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1757
    invoke-virtual {v8, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v8

    .line 1756
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    const/16 v7, 0x20

    move v11, v7

    goto :goto_67

    .line 1761
    :cond_55
    iget-object v8, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1762
    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v8

    .line 1761
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1764
    const/16 v7, 0x23

    move v11, v7

    .line 1766
    .end local v7    # "format":I
    .local v11, "format":I
    :goto_67
    new-instance v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    new-instance v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    .end local v10    # "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    .end local v11    # "format":I
    :cond_7b
    nop

    .line 1774
    invoke-direct {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v7

    .line 1775
    .local v7, "availableDefaultNonRawSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    if-nez v7, :cond_8b

    .line 1776
    const-string v0, "MandatoryStreamCombination"

    const-string v5, "Available size enumeration failed"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/4 v0, 0x0

    return-object v0

    .line 1779
    :cond_8b
    iget-object v8, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1780
    invoke-virtual {v8, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    .line 1781
    .local v8, "defaultRawSizes":[Landroid/util/Size;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    .local v9, "availableDefaultRawSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    if-eqz v8, :cond_a3

    .line 1783
    array-length v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1784
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1786
    :cond_a3
    iget-object v10, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_a7
    if-ge v12, v11, :cond_17f

    aget-object v13, v10, v12

    .line 1788
    .local v13, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    .local v14, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget v15, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    .line 1790
    .local v15, "formatChosen":I
    const/16 v16, 0x1

    iget-object v5, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v17, 0x0

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v5, v6, :cond_bf

    move/from16 v5, v16

    goto :goto_c1

    :cond_bf
    move/from16 v5, v17

    :goto_c1
    move/from16 v23, v5

    .line 1793
    .local v23, "isUltraHighResolution":Z
    if-eqz v23, :cond_c8

    .line 1794
    iget-object v5, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    goto :goto_ca

    :cond_c8
    iget-object v5, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1795
    .local v5, "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :goto_ca
    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v6, v0, :cond_d3

    move/from16 v21, v16

    goto :goto_d5

    :cond_d3
    move/from16 v21, v17

    .line 1797
    .local v21, "isMaximumSize":Z
    :goto_d5
    if-eqz p2, :cond_db

    if-eqz v21, :cond_db

    .line 1798
    move/from16 v15, p2

    .line 1801
    :cond_db
    if-eqz v23, :cond_113

    .line 1802
    invoke-virtual {v5, v15}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 1803
    .local v0, "outputSizes":[Landroid/util/Size;
    nop

    .line 1804
    invoke-virtual {v5, v15}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    .line 1805
    .local v6, "highResolutionOutputSizes":[Landroid/util/Size;
    invoke-static {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSizeOrNull([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v18

    .line 1806
    .local v18, "maxBurstSize":Landroid/util/Size;
    invoke-static {v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSizeOrNull([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v19

    .line 1808
    .local v19, "maxHighResolutionSize":Landroid/util/Size;
    if-eqz v18, :cond_f3

    move-object/from16 v20, v18

    goto :goto_f5

    :cond_f3
    move-object/from16 v20, v19

    .line 1809
    .local v20, "chosenMaxSize":Landroid/util/Size;
    :goto_f5
    if-eqz v18, :cond_109

    if-eqz v19, :cond_109

    .line 1810
    move-object/from16 v22, v0

    .end local v0    # "outputSizes":[Landroid/util/Size;
    .local v22, "outputSizes":[Landroid/util/Size;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/Size;

    aput-object v18, v0, v17

    aput-object v19, v0, v16

    invoke-static {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v20

    move-object/from16 v0, v20

    goto :goto_10d

    .line 1809
    .end local v22    # "outputSizes":[Landroid/util/Size;
    .restart local v0    # "outputSizes":[Landroid/util/Size;
    :cond_109
    move-object/from16 v22, v0

    .line 1812
    .end local v0    # "outputSizes":[Landroid/util/Size;
    .restart local v22    # "outputSizes":[Landroid/util/Size;
    move-object/from16 v0, v20

    .end local v20    # "chosenMaxSize":Landroid/util/Size;
    .local v0, "chosenMaxSize":Landroid/util/Size;
    :goto_10d
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1813
    .end local v0    # "chosenMaxSize":Landroid/util/Size;
    .end local v6    # "highResolutionOutputSizes":[Landroid/util/Size;
    .end local v18    # "maxBurstSize":Landroid/util/Size;
    .end local v19    # "maxHighResolutionSize":Landroid/util/Size;
    .end local v22    # "outputSizes":[Landroid/util/Size;
    move-object/from16 v19, v14

    goto :goto_130

    .line 1814
    :cond_113
    const/16 v0, 0x20

    if-ne v15, v0, :cond_11b

    .line 1816
    move-object v14, v9

    move-object/from16 v19, v14

    goto :goto_130

    .line 1818
    :cond_11b
    new-instance v6, Landroid/util/Pair;

    iget-object v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v6, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1821
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    move-object/from16 v19, v14

    .line 1826
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v19, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_130
    :try_start_130
    new-instance v18, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    :try_end_132
    .catch Ljava/lang/IllegalArgumentException; {:try_start_130 .. :try_end_132} :catch_149

    const/16 v22, 0x0

    move/from16 v20, v15

    .end local v15    # "formatChosen":I
    .local v20, "formatChosen":I
    :try_start_136
    invoke-direct/range {v18 .. v23}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V
    :try_end_139
    .catch Ljava/lang/IllegalArgumentException; {:try_start_136 .. :try_end_139} :catch_147

    move-object/from16 v0, v18

    .line 1833
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1834
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v5    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v20    # "formatChosen":I
    .end local v21    # "isMaximumSize":Z
    .end local v23    # "isUltraHighResolution":Z
    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0x20

    move-object/from16 v1, p0

    goto/16 :goto_a7

    .line 1828
    .restart local v5    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v20    # "formatChosen":I
    .restart local v21    # "isMaximumSize":Z
    .restart local v23    # "isUltraHighResolution":Z
    :catch_147
    move-exception v0

    goto :goto_14c

    .end local v20    # "formatChosen":I
    .restart local v15    # "formatChosen":I
    :catch_149
    move-exception v0

    move/from16 v20, v15

    .line 1829
    .end local v15    # "formatChosen":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v20    # "formatChosen":I
    :goto_14c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No available sizes found for format: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " size threshold: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " combination: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1832
    .local v1, "cause":Ljava/lang/String;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1837
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "cause":Ljava/lang/String;
    .end local v5    # "sm":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v20    # "formatChosen":I
    .end local v21    # "isMaximumSize":Z
    .end local v23    # "isUltraHighResolution":Z
    :cond_17f
    const/4 v0, 0x0

    .line 1838
    .local v0, "formatString":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_1d0

    .line 1846
    const-string v0, "YUV"

    move-object v1, v0

    goto :goto_18e

    .line 1843
    :sswitch_187
    const-string v0, "JPEG"

    .line 1844
    move-object v1, v0

    goto :goto_18e

    .line 1840
    :sswitch_18b
    const-string v0, "RAW_SENSOR"

    .line 1841
    move-object v1, v0

    .line 1851
    .end local v0    # "formatString":Ljava/lang/String;
    .local v1, "formatString":Ljava/lang/String;
    :goto_18e
    :try_start_18e
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " still-capture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_1b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18e .. :try_end_1b2} :catch_1b4

    .line 1858
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1859
    return-object v0

    .line 1854
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    :catch_1b4
    move-exception v0

    .line 1855
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No stream information for mandatory combination: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1857
    .local v5, "cause":Ljava/lang/String;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :sswitch_data_1d0
    .sparse-switch
        0x20 -> :sswitch_18b
        0x100 -> :sswitch_187
    .end sparse-switch
.end method

.method private blacklist enumerateAvailableSizes()Ljava/util/HashMap;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 2090
    move-object/from16 v0, p0

    const/16 v1, 0x100

    const/16 v2, 0x36

    const/16 v3, 0x20

    const/16 v4, 0x22

    const/16 v5, 0x23

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    .line 2097
    .local v1, "formats":[I
    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    .line 2098
    .local v2, "recordingMaxSize":Landroid/util/Size;
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v3}, Landroid/util/Size;-><init>(II)V

    .line 2099
    .local v5, "previewMaxSize":Landroid/util/Size;
    new-instance v6, Landroid/util/Size;

    const/16 v7, 0x280

    const/16 v8, 0x1e0

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    .line 2100
    .local v6, "vgaSize":Landroid/util/Size;
    new-instance v7, Landroid/util/Size;

    const/16 v8, 0x500

    const/16 v9, 0x2d0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 2101
    .local v7, "s720pSize":Landroid/util/Size;
    new-instance v8, Landroid/util/Size;

    const/16 v9, 0x780

    const/16 v10, 0x5a0

    invoke-direct {v8, v9, v10}, Landroid/util/Size;-><init>(II)V

    .line 2104
    .local v8, "s1440pSize":Landroid/util/Size;
    invoke-direct {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v9

    if-nez v9, :cond_46

    iget-boolean v9, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsHiddenPhysicalCamera:Z

    if-eqz v9, :cond_41

    goto :goto_46

    .line 2107
    :cond_41
    invoke-direct {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxRecordingSize()Landroid/util/Size;

    move-result-object v2

    goto :goto_4a

    .line 2105
    :cond_46
    :goto_46
    invoke-direct {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxCameraRecordingSize()Landroid/util/Size;

    move-result-object v2

    .line 2109
    :goto_4a
    const/4 v9, 0x0

    const-string v10, "MandatoryStreamCombination"

    if-nez v2, :cond_55

    .line 2110
    const-string v3, "Failed to find maximum recording size!"

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    return-object v9

    .line 2114
    :cond_55
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2115
    .local v11, "allSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Landroid/util/Size;>;"
    array-length v12, v1

    move v13, v3

    :goto_5c
    if-ge v13, v12, :cond_79

    aget v14, v1, v13

    .line 2116
    .local v14, "format":I
    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v14}, Ljava/lang/Integer;-><init>(I)V

    .line 2117
    .local v15, "intFormat":Ljava/lang/Integer;
    move-object/from16 v16, v9

    iget-object v9, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v9, v14}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v9

    .line 2118
    .local v9, "sizes":[Landroid/util/Size;
    if-nez v9, :cond_71

    .line 2119
    new-array v9, v3, [Landroid/util/Size;

    .line 2121
    :cond_71
    invoke-virtual {v11, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    .end local v9    # "sizes":[Landroid/util/Size;
    .end local v14    # "format":I
    .end local v15    # "intFormat":Ljava/lang/Integer;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v16

    goto :goto_5c

    .line 2124
    :cond_79
    move-object/from16 v16, v9

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 2125
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Size;

    iget-object v9, v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    .line 2124
    invoke-static {v4, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v4

    .line 2126
    .local v4, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v4, :cond_11d

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_98

    move-object/from16 v17, v1

    goto/16 :goto_11f

    .line 2130
    :cond_98
    invoke-static {v4, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v9

    .line 2132
    .local v9, "orderedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-direct {v0, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v5

    .line 2134
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2137
    .local v10, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    array-length v12, v1

    :goto_a6
    if-ge v3, v12, :cond_11c

    aget v13, v1, v3

    .line 2138
    .local v13, "format":I
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 2139
    .local v14, "intFormat":Ljava/lang/Integer;
    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/util/Size;

    .line 2140
    .local v15, "sizes":[Landroid/util/Size;
    new-instance v0, Landroid/util/Pair;

    move-object/from16 v17, v1

    .end local v1    # "formats":[I
    .local v17, "formats":[I
    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v0, v1, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2142
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v16, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .local v16, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2145
    .end local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    new-instance v0, Landroid/util/Pair;

    move-object/from16 v16, v1

    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v0, v1, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2148
    .end local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v16, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2151
    .end local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    new-instance v0, Landroid/util/Pair;

    move-object/from16 v16, v1

    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v0, v1, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2154
    .end local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v7}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v16, v0

    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v1, v0, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2157
    .end local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-static {v15, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v13    # "format":I
    .end local v14    # "intFormat":Ljava/lang/Integer;
    .end local v15    # "sizes":[Landroid/util/Size;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_a6

    .line 2160
    .end local v17    # "formats":[I
    .local v1, "formats":[I
    :cond_11c
    return-object v10

    .line 2126
    .end local v9    # "orderedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v10    # "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    :cond_11d
    move-object/from16 v17, v1

    .line 2127
    .end local v1    # "formats":[I
    .restart local v17    # "formats":[I
    :goto_11f
    const-string v0, "No preview sizes within preview size bound!"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    return-object v16
.end method

.method private blacklist fillUHMandatoryStreamCombinations(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            ">;)V"
        }
    .end annotation

    .line 1866
    .local p1, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    .local p2, "chosenTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1867
    .local v1, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    nop

    .line 1868
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    .line 1870
    .local v2, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    iget-boolean v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mSubstituteYUV:Z

    if-eqz v3, :cond_31

    .line 1872
    nop

    .line 1873
    const/16 v3, 0x20

    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    .line 1875
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1876
    nop

    .line 1877
    const/16 v3, 0x100

    invoke-direct {p0, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->createUHSensorMandatoryStreamCombination(Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;I)Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v2

    .line 1879
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1881
    .end local v1    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v2    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    :cond_31
    goto :goto_4

    .line 1882
    :cond_32
    return-void
.end method

.method private blacklist generateAvailableCombinations(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1981
    .local p1, "availableTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "MandatoryStreamCombination"

    if-eqz v0, :cond_11

    .line 1982
    const-string v0, "No available stream templates!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    return-object v2

    .line 1986
    :cond_11
    nop

    .line 1987
    invoke-direct {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v4

    .line 1988
    .local v4, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    if-nez v4, :cond_1e

    .line 1989
    const-string v0, "Available size enumeration failed!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    return-object v2

    .line 1994
    :cond_1e
    iget-object v0, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    .line 1995
    .local v6, "rawSizes":[Landroid/util/Size;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 1996
    .local v7, "availableRawSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    if-eqz v6, :cond_39

    .line 1997
    array-length v0, v6

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1998
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2001
    :cond_39
    new-instance v0, Landroid/util/Size;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 2002
    .local v0, "maxPrivateInputSize":Landroid/util/Size;
    invoke-direct {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v9

    if-eqz v9, :cond_53

    .line 2003
    iget-object v9, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    move-object v9, v0

    goto :goto_54

    .line 2002
    :cond_53
    move-object v9, v0

    .line 2007
    .end local v0    # "maxPrivateInputSize":Landroid/util/Size;
    .local v9, "maxPrivateInputSize":Landroid/util/Size;
    :goto_54
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 2008
    .local v0, "maxYUVInputSize":Landroid/util/Size;
    invoke-direct {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 2009
    iget-object v10, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v11, 0x23

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    move-object v10, v0

    goto :goto_6e

    .line 2008
    :cond_6d
    move-object v10, v0

    .line 2015
    .end local v0    # "maxYUVInputSize":Landroid/util/Size;
    .local v10, "maxYUVInputSize":Landroid/util/Size;
    :goto_6e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 2017
    .local v11, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2018
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_184

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 2019
    .local v12, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2021
    .local v13, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v14, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2022
    iget-object v14, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    move-object/from16 v16, v2

    const/4 v2, 0x1

    if-eq v14, v15, :cond_a1

    move v14, v2

    goto :goto_a2

    :cond_a1
    move v14, v8

    .line 2023
    .local v14, "isReprocessable":Z
    :goto_a2
    if-eqz v14, :cond_ca

    .line 2027
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2029
    .local v15, "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    iget-object v8, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mReprocessType:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    if-ne v8, v5, :cond_b5

    .line 2030
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2031
    const/16 v5, 0x22

    .local v5, "format":I
    goto :goto_ba

    .line 2034
    .end local v5    # "format":I
    :cond_b5
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2035
    const/16 v5, 0x23

    .line 2037
    .restart local v5    # "format":I
    :goto_ba
    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    invoke-direct {v8, v15, v5, v2, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZ)V

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2039
    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    invoke-direct {v8, v15, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2043
    .end local v5    # "format":I
    .end local v15    # "inputSize":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    :cond_ca
    iget-object v5, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v8, v5

    const/4 v15, 0x0

    :goto_ce
    if-ge v15, v8, :cond_14e

    aget-object v2, v5, v15

    .line 2044
    .local v2, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    const/16 v17, 0x0

    .line 2045
    .local v17, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    move-object/from16 v18, v0

    iget v0, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_e3

    .line 2046
    move-object v0, v7

    move-object v1, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .end local v17    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    goto :goto_fb

    .line 2049
    .end local v0    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v17    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_e3
    new-instance v0, Landroid/util/Pair;

    iget-object v1, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v19, v5

    new-instance v5, Ljava/lang/Integer;

    move-object/from16 v20, v6

    .end local v6    # "rawSizes":[Landroid/util/Size;
    .local v20, "rawSizes":[Landroid/util/Size;
    iget v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2051
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2055
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v17    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_fb
    iget-object v0, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v5, :cond_103

    const/4 v0, 0x1

    goto :goto_104

    :cond_103
    const/4 v0, 0x0

    :goto_104
    move v5, v0

    .line 2058
    .local v5, "isMaximumSize":Z
    :try_start_105
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v6, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v0, v1, v6, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V
    :try_end_10c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_105 .. :try_end_10c} :catch_11c

    .line 2065
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 2066
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2043
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v2    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v5    # "isMaximumSize":Z
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    const/4 v2, 0x1

    goto :goto_ce

    .line 2060
    .restart local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v2    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v5    # "isMaximumSize":Z
    :catch_11c
    move-exception v0

    .line 2061
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No available sizes found for format: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " size threshold: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " combination: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    return-object v16

    .line 2071
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v2    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v5    # "isMaximumSize":Z
    .end local v20    # "rawSizes":[Landroid/util/Size;
    .restart local v6    # "rawSizes":[Landroid/util/Size;
    :cond_14e
    move-object/from16 v18, v0

    move-object/from16 v20, v6

    .end local v6    # "rawSizes":[Landroid/util/Size;
    .restart local v20    # "rawSizes":[Landroid/util/Size;
    :try_start_152
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-direct {v0, v13, v1, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_159
    .catch Ljava/lang/IllegalArgumentException; {:try_start_152 .. :try_end_159} :catch_16a

    .line 2077
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 2079
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2080
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v12    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v13    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .end local v14    # "isReprocessable":Z
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v0, v18

    move-object/from16 v6, v20

    const/16 v5, 0x20

    const/4 v8, 0x0

    goto/16 :goto_7f

    .line 2073
    .restart local v12    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v13    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .restart local v14    # "isReprocessable":Z
    :catch_16a
    move-exception v0

    .line 2074
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    return-object v16

    .line 2082
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v13    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .end local v14    # "isReprocessable":Z
    .end local v20    # "rawSizes":[Landroid/util/Size;
    .restart local v6    # "rawSizes":[Landroid/util/Size;
    :cond_184
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;
    .registers 4
    .param p1, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 2459
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;

    invoke-direct {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder$SizeComparator;-><init>()V

    .line 2460
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/util/Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2461
    .local v1, "sortedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2462
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2463
    if-nez p1, :cond_15

    .line 2464
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2467
    :cond_15
    return-object v1
.end method

.method private blacklist getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;
    .registers 28
    .param p1, "chosenStreamCombinations"    # [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .param p2, "s10Bit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1416
    move-object/from16 v1, p1

    .line 1417
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v2

    .line 1418
    .local v2, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    const/4 v3, 0x0

    const-string v4, "MandatoryStreamCombination"

    if-nez v2, :cond_11

    .line 1419
    const-string v0, "Available size enumeration failed!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return-object v3

    .line 1423
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1424
    .local v5, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    array-length v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1425
    array-length v0, v1

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v0, :cond_12a

    aget-object v8, v1, v7

    .line 1426
    .local v8, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    .local v9, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1428
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_30
    if-ge v12, v11, :cond_f6

    aget-object v13, v10, v12

    .line 1429
    .local v13, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    const/4 v14, 0x0

    .line 1431
    .local v14, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v15, Landroid/util/Pair;

    move-object/from16 v16, v3

    iget-object v3, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v6, Ljava/lang/Integer;

    move/from16 v17, v0

    iget v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v15, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1432
    .local v15, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 1433
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v3, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz p2, :cond_81

    iget v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    const/16 v6, 0x36

    if-ne v0, v6, :cond_81

    .line 1436
    new-instance v0, Landroid/util/Pair;

    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v14, Ljava/lang/Integer;

    const/16 v1, 0x23

    invoke-direct {v14, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v6, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v15, v0

    .line 1438
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1439
    .local v0, "sdrYuvSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Size;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 1440
    const-string v1, "The supported 10-bit YUV sizes are different from the supported 8-bit YUV sizes!"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    return-object v16

    .line 1447
    .end local v0    # "sdrYuvSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Size;>;"
    :cond_81
    iget-object v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/4 v6, 0x1

    if-ne v0, v1, :cond_8b

    move/from16 v21, v6

    goto :goto_8d

    :cond_8b
    const/16 v21, 0x0

    .line 1450
    .local v21, "isMaximumSize":Z
    :goto_8d
    :try_start_8d
    new-instance v18, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v0, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_91} :catch_c2

    .line 1453
    if-eqz p2, :cond_a3

    :try_start_93
    iget v1, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_95} :catch_9f

    const/16 v14, 0x100

    if-eq v1, v14, :cond_9c

    move/from16 v24, v6

    goto :goto_a5

    :cond_9c
    const/16 v24, 0x0

    goto :goto_a5

    .line 1455
    :catch_9f
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_c5

    .line 1454
    :cond_a3
    const/16 v24, 0x0

    :goto_a5
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v20, v0

    move-object/from16 v19, v3

    .end local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v19, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :try_start_ad
    invoke-direct/range {v18 .. v24}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZ)V
    :try_end_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ad .. :try_end_b0} :catch_c0

    move-object/from16 v0, v18

    .line 1460
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1461
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v21    # "isMaximumSize":Z
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move/from16 v0, v17

    goto/16 :goto_30

    .line 1455
    .restart local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v21    # "isMaximumSize":Z
    :catch_c0
    move-exception v0

    goto :goto_c5

    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :catch_c2
    move-exception v0

    move-object/from16 v19, v3

    .line 1456
    .end local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_c5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No available sizes found for format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " size threshold: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " combination: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    return-object v16

    .line 1466
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v21    # "isMaximumSize":Z
    :cond_f6
    move/from16 v17, v0

    move-object/from16 v16, v3

    :try_start_fa
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v9, v1, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fa .. :try_end_102} :catch_110

    .line 1472
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1474
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move/from16 v0, v17

    goto/16 :goto_1d

    .line 1468
    .restart local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :catch_110
    move-exception v0

    .line 1469
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No stream information for mandatory combination: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    return-object v16

    .line 1477
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :cond_12a
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMaxCameraRecordingSize()Landroid/util/Size;
    .registers 14

    .line 2393
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 2395
    .local v0, "FULLHD":Landroid/util/Size;
    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v2, Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 2397
    .local v1, "videoSizeArr":[Landroid/util/Size;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2398
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_19
    if-ge v5, v3, :cond_37

    aget-object v6, v1, v5

    .line 2399
    .local v6, "sz":Landroid/util/Size;
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_34

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_34

    .line 2400
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2398
    .end local v6    # "sz":Landroid/util/Size;
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 2403
    :cond_37
    invoke-static {v2, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAscendingOrderSizes(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 2404
    .local v3, "videoSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "MandatoryStreamCombination"

    if-eqz v5, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 2405
    .local v5, "sz":Landroid/util/Size;
    iget-object v7, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v8, Landroid/media/MediaRecorder;

    invoke-virtual {v7, v8, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v7

    .line 2408
    .local v7, "minFrameDuration":J
    long-to-double v9, v7

    const-wide v11, 0x417fe53d00db2f18L    # 3.344481605351171E7

    cmpg-double v9, v9, v11

    if-gez v9, :cond_82

    .line 2409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "External camera "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " has max video size:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    return-object v5

    .line 2412
    .end local v5    # "sz":Landroid/util/Size;
    .end local v7    # "minFrameDuration":J
    :cond_82
    goto :goto_3f

    .line 2413
    :cond_83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not support any 30fps video output"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    return-object v0
.end method

.method private blacklist getMaxPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 2418
    .local p1, "orderedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz p1, :cond_2c

    .line 2419
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 2420
    .local v1, "size":Landroid/util/Size;
    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_2b

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    .line 2421
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_2b

    .line 2422
    return-object v1

    .line 2424
    .end local v1    # "size":Landroid/util/Size;
    :cond_2b
    goto :goto_6

    .line 2427
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maximum preview size search failed with display size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mDisplaySize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MandatoryStreamCombination"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->kPreviewSizeBound:Landroid/util/Size;

    return-object v0
.end method

.method private blacklist getMaxRecordingSize()Landroid/util/Size;
    .registers 6

    .line 2362
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2363
    goto :goto_48

    .line 2364
    :cond_b
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2365
    goto :goto_48

    .line 2366
    :cond_15
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2367
    goto :goto_48

    .line 2368
    :cond_1f
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2369
    goto :goto_48

    .line 2370
    :cond_29
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2371
    goto :goto_48

    .line 2372
    :cond_33
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2373
    goto :goto_48

    .line 2374
    :cond_3d
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2375
    goto :goto_48

    .line 2376
    :cond_47
    const/4 v1, -0x1

    :goto_48
    nop

    .line 2378
    .local v1, "quality":I
    if-gez v1, :cond_4d

    .line 2379
    const/4 v0, 0x0

    return-object v0

    .line 2382
    :cond_4d
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 2383
    .local v0, "maxProfile":Landroid/media/CamcorderProfile;
    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public static varargs blacklist getMaxSize([Landroid/util/Size;)Landroid/util/Size;
    .registers 8
    .param p0, "sizes"    # [Landroid/util/Size;

    .line 2201
    if-eqz p0, :cond_26

    array-length v0, p0

    if-eqz v0, :cond_26

    .line 2205
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 2206
    .local v1, "sz":Landroid/util/Size;
    array-length v2, p0

    :goto_9
    if-ge v0, v2, :cond_25

    aget-object v3, p0, v0

    .line 2207
    .local v3, "size":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    if-le v4, v5, :cond_22

    .line 2208
    move-object v1, v3

    .line 2206
    .end local v3    # "size":Landroid/util/Size;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2212
    :cond_25
    return-object v1

    .line 2202
    .end local v1    # "sz":Landroid/util/Size;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizes was empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist getMaxSizeOrNull([Landroid/util/Size;)Landroid/util/Size;
    .registers 2
    .param p0, "sizes"    # [Landroid/util/Size;

    .line 2223
    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    .line 2227
    :cond_6
    invoke-static {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 2224
    :cond_b
    :goto_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getMinSize(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .registers 5
    .param p0, "a"    # Landroid/util/Size;
    .param p1, "b"    # Landroid/util/Size;

    .line 2183
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    .line 2186
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_19

    .line 2187
    return-object p0

    .line 2189
    :cond_19
    return-object p1

    .line 2184
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizes was empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getSizesWithinBound([Landroid/util/Size;Landroid/util/Size;)Ljava/util/List;
    .registers 8
    .param p0, "sizes"    # [Landroid/util/Size;
    .param p1, "bound"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 2169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2170
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    .line 2171
    .local v3, "size":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_22

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_22

    .line 2172
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    .end local v3    # "size":Landroid/util/Size;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2176
    :cond_25
    return-object v0
.end method

.method private blacklist is10BitOutputSupported()Z
    .registers 2

    .line 2327
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isCapabilitySupported(I)Z
    .registers 4
    .param p1, "capability"    # I

    .line 2312
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCapabilities:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isColorOutputSupported()Z
    .registers 2

    .line 2319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isExternalCamera()Z
    .registers 3

    .line 2263
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist isHardwareLevelAtLeast(I)Z
    .registers 9
    .param p1, "level"    # I

    .line 2235
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    filled-new-array {v1, v2, v3, v4, v0}, [I

    move-result-object v0

    .line 2242
    .local v0, "sortedHwLevels":[I
    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    if-ne p1, v1, :cond_e

    .line 2243
    return v4

    .line 2246
    :cond_e
    array-length v1, v0

    move v2, v3

    :goto_10
    if-ge v2, v1, :cond_1f

    aget v5, v0, v2

    .line 2247
    .local v5, "sortedlevel":I
    if-ne v5, p1, :cond_17

    .line 2248
    return v4

    .line 2249
    :cond_17
    iget v6, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mHwLevel:I

    if-ne v5, v6, :cond_1c

    .line 2250
    return v3

    .line 2246
    .end local v5    # "sortedlevel":I
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2254
    :cond_1f
    return v3
.end method

.method private blacklist isHardwareLevelAtLeastFull()Z
    .registers 2

    .line 2291
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLegacy()Z
    .registers 2

    .line 2272
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLevel3()Z
    .registers 2

    .line 2300
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isHardwareLevelAtLeastLimited()Z
    .registers 2

    .line 2282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeast(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isPrivateReprocessingSupported()Z
    .registers 2

    .line 2335
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isRemosaicReprocessingSupported()Z
    .registers 2

    .line 2351
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isYUVReprocessingSupported()Z
    .registers 2

    .line 2343
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getAvailableMandatory10BitStreamCombinations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1517
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgets10BitOutputStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    .line 1518
    .local v0, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->is10BitOutputSupported()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1519
    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device is not able to output 10-bit!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/4 v1, 0x0

    return-object v1

    .line 1522
    :cond_13
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryConcurrentStreamCombinations()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1621
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    .line 1622
    .local v0, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1623
    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device is not backward compatible, depth streams are mandatory!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsConcurrentDepthOnlyStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    move-object v1, v0

    goto :goto_18

    .line 1622
    :cond_17
    move-object v1, v0

    .line 1626
    .end local v0    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .local v1, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    :goto_18
    new-instance v0, Landroid/util/Size;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v2, v0

    .line 1627
    .local v2, "sizeVGAp":Landroid/util/Size;
    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    move-object v3, v0

    .line 1628
    .local v3, "size720p":Landroid/util/Size;
    new-instance v0, Landroid/util/Size;

    const/16 v4, 0x780

    const/16 v5, 0x5a0

    invoke-direct {v0, v4, v5}, Landroid/util/Size;-><init>(II)V

    move-object v4, v0

    .line 1630
    .local v4, "size1440p":Landroid/util/Size;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1632
    .local v5, "availableConcurrentStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    array-length v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1634
    array-length v0, v1

    const/4 v7, 0x0

    :goto_42
    if-ge v7, v0, :cond_118

    aget-object v8, v1, v7

    .line 1635
    .local v8, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1637
    .local v9, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1638
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_55
    if-ge v12, v11, :cond_de

    aget-object v13, v10, v12

    .line 1640
    .local v13, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1641
    .local v14, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const/4 v15, 0x0

    .line 1642
    .local v15, "formatSize":Landroid/util/Size;
    iget-object v6, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->ordinal()I

    move-result v6

    sparse-switch v6, :sswitch_data_11e

    .line 1650
    move-object v6, v3

    .end local v15    # "formatSize":Landroid/util/Size;
    .local v6, "formatSize":Landroid/util/Size;
    goto :goto_6e

    .line 1644
    .end local v6    # "formatSize":Landroid/util/Size;
    .restart local v15    # "formatSize":Landroid/util/Size;
    :sswitch_6a
    move-object v6, v4

    .line 1645
    .end local v15    # "formatSize":Landroid/util/Size;
    .restart local v6    # "formatSize":Landroid/util/Size;
    goto :goto_6e

    .line 1647
    .end local v6    # "formatSize":Landroid/util/Size;
    .restart local v15    # "formatSize":Landroid/util/Size;
    :sswitch_6c
    move-object v6, v2

    .line 1648
    .end local v15    # "formatSize":Landroid/util/Size;
    .restart local v6    # "formatSize":Landroid/util/Size;
    nop

    .line 1652
    :goto_6e
    move-object/from16 v15, p0

    move/from16 v16, v0

    iget-object v0, v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-object/from16 v17, v1

    .end local v1    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .local v17, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    iget v1, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    .line 1654
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMaxSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 1653
    invoke-static {v6, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getMinSize(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 1655
    .local v1, "sizeChosen":Landroid/util/Size;
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    :try_start_87
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_89} :catch_a6

    move-object/from16 v18, v1

    .end local v1    # "sizeChosen":Landroid/util/Size;
    .local v18, "sizeChosen":Landroid/util/Size;
    :try_start_8b
    iget v1, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I
    :try_end_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_8d} :catch_a2

    move-object/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .local v19, "sizeVGAp":Landroid/util/Size;
    :try_start_90
    invoke-direct {v0, v14, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZ)V
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_90 .. :try_end_93} :catch_a0

    .line 1664
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1665
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1638
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v6    # "formatSize":Landroid/util/Size;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v18    # "sizeChosen":Landroid/util/Size;
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    goto :goto_55

    .line 1659
    .restart local v6    # "formatSize":Landroid/util/Size;
    .restart local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v18    # "sizeChosen":Landroid/util/Size;
    :catch_a0
    move-exception v0

    goto :goto_ab

    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :catch_a2
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .restart local v19    # "sizeVGAp":Landroid/util/Size;
    goto :goto_ab

    .end local v18    # "sizeChosen":Landroid/util/Size;
    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .restart local v1    # "sizeChosen":Landroid/util/Size;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :catch_a6
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 1660
    .end local v1    # "sizeChosen":Landroid/util/Size;
    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v18    # "sizeChosen":Landroid/util/Size;
    .restart local v19    # "sizeVGAp":Landroid/util/Size;
    :goto_ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No available sizes found for format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1663
    .local v1, "cause":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1670
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "formatSize":Landroid/util/Size;
    .end local v13    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v14    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v17    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v18    # "sizeChosen":Landroid/util/Size;
    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .local v1, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :cond_de
    move-object/from16 v15, p0

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    .end local v1    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v2    # "sizeVGAp":Landroid/util/Size;
    .restart local v17    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v19    # "sizeVGAp":Landroid/util/Size;
    :try_start_e6
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v9, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_ee
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e6 .. :try_end_ee} :catch_fc

    .line 1676
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1677
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    goto/16 :goto_42

    .line 1672
    .restart local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :catch_fc
    move-exception v0

    .line 1673
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1675
    .local v1, "cause":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1679
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    .end local v17    # "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v19    # "sizeVGAp":Landroid/util/Size;
    .local v1, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v2    # "sizeVGAp":Landroid/util/Size;
    :cond_118
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_11e
    .sparse-switch
        0x0 -> :sswitch_6c
        0x5 -> :sswitch_6a
    .end sparse-switch
.end method

.method public blacklist getAvailableMandatoryMaximumResolutionStreamCombinations()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1694
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1695
    const-string v0, "MandatoryStreamCombination"

    const-string v1, "Device is not backward compatible!, no mandatory maximum res streams"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/4 v0, 0x0

    return-object v0

    .line 1699
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    .local v0, "chosenStreamCombinationTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    .line 1703
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1702
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1705
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1707
    .local v1, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isRemosaicReprocessingSupported()Z

    move-result v2

    .line 1709
    .local v2, "addRemosaicReprocessing":Z
    const/4 v3, 0x0

    .line 1710
    .local v3, "remosaicSize":I
    iget-object v4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1711
    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v4

    .line 1712
    .local v4, "maxResYUVInputSizes":[Landroid/util/Size;
    iget-object v5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mStreamConfigMapMaximumResolution:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 1713
    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v5

    .line 1715
    .local v5, "maxResPRIVInputSizes":[Landroid/util/Size;
    if-eqz v2, :cond_4c

    .line 1716
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 1717
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    .line 1718
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1717
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1721
    :cond_4c
    if-eqz v4, :cond_62

    array-length v6, v4

    if-eqz v6, :cond_62

    .line 1722
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionYUVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 1723
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionYUVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    .line 1724
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1723
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1727
    :cond_62
    if-eqz v5, :cond_78

    array-length v6, v5

    if-eqz v6, :cond_78

    .line 1728
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionPRIVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 1729
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsUltraHighResolutionPRIVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v6

    .line 1730
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1729
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1733
    :cond_78
    nop

    .line 1734
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v3

    .line 1733
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1735
    invoke-direct {p0, v1, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->fillUHMandatoryStreamCombinations(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1738
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method public blacklist getAvailableMandatoryPreviewStabilizedStreamCombinations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1493
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsPreviewStabilizedStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    .line 1496
    .local v0, "chosenStreamCombinations":[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsPreviewStabilizationSupported:Z

    if-nez v1, :cond_11

    .line 1497
    const-string v1, "MandatoryStreamCombination"

    const-string v2, "Device does not support preview stabilization"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v1, 0x0

    return-object v1

    .line 1501
    :cond_11
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinationsInternal([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryStreamCombinations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1893
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isColorOutputSupported()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MandatoryStreamCombination"

    if-nez v0, :cond_f

    .line 1894
    const-string v0, "Device is not backward compatible!"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    return-object v1

    .line 1898
    :cond_f
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mCameraId:I

    if-gez v0, :cond_1f

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1899
    const-string v0, "Invalid camera id"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    return-object v1

    .line 1903
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    .local v0, "availableTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLegacy()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1906
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLegacyCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1910
    :cond_35
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLimited()Z

    move-result v1

    if-nez v1, :cond_41

    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isExternalCamera()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1911
    :cond_41
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1913
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1914
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1917
    :cond_5d
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1918
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLimitedYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1923
    :cond_6e
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1925
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsBurstCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1928
    :cond_80
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastFull()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1929
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1931
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 1932
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1935
    :cond_a2
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1936
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsFullYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1941
    :cond_b3
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 1943
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRawCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1945
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 1946
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRAWPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1949
    :cond_d6
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 1950
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsRAWYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1955
    :cond_e7
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isHardwareLevelAtLeastLevel3()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1956
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3Combinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1958
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isPrivateReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1959
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3PrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1962
    :cond_109
    invoke-direct {p0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isYUVReprocessingSupported()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1963
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsLevel3YUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1968
    :cond_11a
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->generateAvailableCombinations(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAvailableMandatoryStreamUseCaseCombinations()Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination;",
            ">;"
        }
    .end annotation

    .line 1538
    move-object/from16 v1, p0

    const/16 v0, 0x13

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->isCapabilitySupported(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 1540
    return-object v2

    .line 1543
    :cond_c
    nop

    .line 1544
    invoke-direct {v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->enumerateAvailableSizes()Ljava/util/HashMap;

    move-result-object v3

    .line 1545
    .local v3, "availableSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;Ljava/util/List<Landroid/util/Size;>;>;"
    const-string v4, "MandatoryStreamCombination"

    if-nez v3, :cond_1b

    .line 1546
    const-string v0, "Available size enumeration failed!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    return-object v2

    .line 1549
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1551
    .local v5, "availableTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;>;"
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 1554
    .local v6, "availableStreamCombinations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v0

    array-length v0, v0

    .line 1555
    .local v0, "capacity":I
    iget-boolean v7, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->mIsCroppedRawSupported:Z

    if-eqz v7, :cond_51

    .line 1556
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsCroppedRawStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v7

    array-length v7, v7

    add-int/2addr v0, v7

    .line 1557
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1558
    invoke-static {}, Landroid/hardware/camera2/params/MandatoryStreamCombination;->-$$Nest$sfgetsCroppedRawStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v7, v0

    goto :goto_55

    .line 1561
    :cond_51
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v7, v0

    .line 1565
    .end local v0    # "capacity":I
    .local v7, "capacity":I
    :goto_55
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1566
    .local v8, "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    .local v9, "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1570
    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mStreamTemplates:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    array-length v11, v10

    const/4 v13, 0x0

    :goto_74
    if-ge v13, v11, :cond_f3

    aget-object v14, v10, v13

    .line 1571
    .local v14, "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    const/4 v15, 0x0

    .line 1573
    .local v15, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    move-object/from16 v16, v2

    new-instance v2, Landroid/util/Pair;

    iget-object v12, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/Integer;

    iget v1, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v2, v12, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1575
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    .line 1578
    .end local v15    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v19, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget-object v0, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    if-ne v0, v1, :cond_9d

    const/4 v0, 0x1

    move/from16 v21, v0

    goto :goto_9f

    :cond_9d
    const/16 v21, 0x0

    .line 1581
    .local v21, "isMaximumSize":Z
    :goto_9f
    :try_start_9f
    new-instance v18, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    iget v0, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    move/from16 v20, v0

    iget-wide v0, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mStreamUseCase:J

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide/from16 v25, v0

    invoke-direct/range {v18 .. v26}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZJ)V
    :try_end_b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9f .. :try_end_b2} :catch_c1

    move-object/from16 v0, v18

    .line 1589
    .local v0, "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    nop

    .line 1590
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    .end local v0    # "streamInfo":Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v14    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v21    # "isMaximumSize":Z
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    goto :goto_74

    .line 1584
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .restart local v14    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .restart local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v21    # "isMaximumSize":Z
    :catch_c1
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No available sizes found for format: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v10, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " size threshold: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " combination: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    return-object v16

    .line 1595
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;Ljava/lang/Integer;>;"
    .end local v14    # "template":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
    .end local v19    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v21    # "isMaximumSize":Z
    :cond_f3
    move-object/from16 v17, v0

    move-object/from16 v16, v2

    :try_start_f7
    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    iget-object v1, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v9, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination;-><init>(Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_ff
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f7 .. :try_end_ff} :catch_10b

    .line 1601
    .local v0, "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    nop

    .line 1603
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    .end local v0    # "streamCombination":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    goto/16 :goto_59

    .line 1597
    .restart local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .restart local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :catch_10b
    move-exception v0

    .line 1598
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No stream information for mandatory combination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return-object v16

    .line 1606
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "combTemplate":Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .end local v9    # "streamsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    :cond_125
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
