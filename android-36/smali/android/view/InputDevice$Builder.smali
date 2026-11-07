.class public Landroid/view/InputDevice$Builder;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAssociatedDisplayId:I

.field private blacklist mControllerNumber:I

.field private blacklist mDescriptor:Ljava/lang/String;

.field private blacklist mDeviceBus:I

.field private blacklist mEnabled:Z

.field private blacklist mGeneration:I

.field private blacklist mHasBattery:Z

.field private blacklist mHasButtonUnderPad:Z

.field private blacklist mHasMicrophone:Z

.field private blacklist mHasSensor:Z

.field private blacklist mHasVibrator:Z

.field private blacklist mId:I

.field private blacklist mIsExternal:Z

.field private blacklist mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private blacklist mKeyboardLanguageTag:Ljava/lang/String;

.field private blacklist mKeyboardLayoutType:Ljava/lang/String;

.field private blacklist mKeyboardType:I

.field private blacklist mMotionRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mProductId:I

.field private blacklist mShouldSmoothScroll:Z

.field private blacklist mSources:I

.field private blacklist mUsiVersionMajor:I

.field private blacklist mUsiVersionMinor:I

.field private blacklist mVendorId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputDevice$Builder;->mId:I

    .line 586
    iput v0, p0, Landroid/view/InputDevice$Builder;->mGeneration:I

    .line 587
    iput v0, p0, Landroid/view/InputDevice$Builder;->mControllerNumber:I

    .line 588
    const-string v1, ""

    iput-object v1, p0, Landroid/view/InputDevice$Builder;->mName:Ljava/lang/String;

    .line 589
    iput v0, p0, Landroid/view/InputDevice$Builder;->mVendorId:I

    .line 590
    iput v0, p0, Landroid/view/InputDevice$Builder;->mProductId:I

    .line 591
    iput v0, p0, Landroid/view/InputDevice$Builder;->mDeviceBus:I

    .line 592
    iput-object v1, p0, Landroid/view/InputDevice$Builder;->mDescriptor:Ljava/lang/String;

    .line 593
    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mIsExternal:Z

    .line 594
    iput v0, p0, Landroid/view/InputDevice$Builder;->mSources:I

    .line 595
    iput v0, p0, Landroid/view/InputDevice$Builder;->mKeyboardType:I

    .line 596
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InputDevice$Builder;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 597
    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mHasVibrator:Z

    .line 598
    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mHasMicrophone:Z

    .line 599
    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mHasButtonUnderPad:Z

    .line 600
    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mHasSensor:Z

    .line 601
    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mHasBattery:Z

    .line 602
    iput-object v1, p0, Landroid/view/InputDevice$Builder;->mKeyboardLanguageTag:Ljava/lang/String;

    .line 603
    iput-object v1, p0, Landroid/view/InputDevice$Builder;->mKeyboardLayoutType:Ljava/lang/String;

    .line 604
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputDevice$Builder;->mUsiVersionMajor:I

    .line 605
    iput v0, p0, Landroid/view/InputDevice$Builder;->mUsiVersionMinor:I

    .line 606
    iput v0, p0, Landroid/view/InputDevice$Builder;->mAssociatedDisplayId:I

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InputDevice$Builder;->mEnabled:Z

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice$Builder;->mMotionRanges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist addMotionRange(IIFFFFF)Landroid/view/InputDevice$Builder;
    .registers 18
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    .line 748
    iget-object v0, p0, Landroid/view/InputDevice$Builder;->mMotionRanges:Ljava/util/List;

    new-instance v1, Landroid/view/InputDevice$MotionRange;

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFFLandroid/view/InputDevice-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    return-object p0
.end method

.method public blacklist build()Landroid/view/InputDevice;
    .registers 28

    .line 764
    move-object/from16 v0, p0

    new-instance v1, Landroid/view/InputDevice;

    iget v2, v0, Landroid/view/InputDevice$Builder;->mId:I

    iget v3, v0, Landroid/view/InputDevice$Builder;->mGeneration:I

    iget v4, v0, Landroid/view/InputDevice$Builder;->mControllerNumber:I

    iget-object v5, v0, Landroid/view/InputDevice$Builder;->mName:Ljava/lang/String;

    iget v6, v0, Landroid/view/InputDevice$Builder;->mVendorId:I

    iget v7, v0, Landroid/view/InputDevice$Builder;->mProductId:I

    iget v8, v0, Landroid/view/InputDevice$Builder;->mDeviceBus:I

    iget-object v9, v0, Landroid/view/InputDevice$Builder;->mDescriptor:Ljava/lang/String;

    iget-boolean v10, v0, Landroid/view/InputDevice$Builder;->mIsExternal:Z

    iget v11, v0, Landroid/view/InputDevice$Builder;->mSources:I

    iget v12, v0, Landroid/view/InputDevice$Builder;->mKeyboardType:I

    iget-object v13, v0, Landroid/view/InputDevice$Builder;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iget-object v14, v0, Landroid/view/InputDevice$Builder;->mKeyboardLanguageTag:Ljava/lang/String;

    iget-object v15, v0, Landroid/view/InputDevice$Builder;->mKeyboardLayoutType:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mHasVibrator:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mHasMicrophone:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mHasButtonUnderPad:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mHasSensor:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mHasBattery:Z

    move/from16 v21, v1

    iget v1, v0, Landroid/view/InputDevice$Builder;->mUsiVersionMajor:I

    move/from16 v22, v1

    iget v1, v0, Landroid/view/InputDevice$Builder;->mUsiVersionMinor:I

    move/from16 v23, v1

    iget v1, v0, Landroid/view/InputDevice$Builder;->mAssociatedDisplayId:I

    move/from16 v24, v1

    iget-boolean v1, v0, Landroid/view/InputDevice$Builder;->mEnabled:Z

    const/16 v25, 0x0

    move/from16 v26, v24

    move/from16 v24, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v26

    invoke-direct/range {v1 .. v25}, Landroid/view/InputDevice;-><init>(IIILjava/lang/String;IIILjava/lang/String;ZIILandroid/view/KeyCharacterMap;Ljava/lang/String;Ljava/lang/String;ZZZZZIIIZLandroid/view/InputDevice-IA;)V

    move-object/from16 v16, v1

    .line 789
    .local v1, "device":Landroid/view/InputDevice;
    iget-object v2, v0, Landroid/view/InputDevice$Builder;->mMotionRanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 790
    .local v9, "numRanges":I
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_69
    if-ge v10, v9, :cond_97

    .line 791
    iget-object v2, v0, Landroid/view/InputDevice$Builder;->mMotionRanges:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/view/InputDevice$MotionRange;

    .line 792
    .local v11, "range":Landroid/view/InputDevice$MotionRange;
    nop

    .line 793
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v2

    .line 794
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v3

    .line 795
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v4

    .line 796
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v5

    .line 797
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v6

    .line 798
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getFuzz()F

    move-result v7

    .line 799
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v8

    .line 792
    invoke-static/range {v1 .. v8}, Landroid/view/InputDevice;->-$$Nest$maddMotionRange(Landroid/view/InputDevice;IIFFFFF)V

    .line 790
    .end local v11    # "range":Landroid/view/InputDevice$MotionRange;
    add-int/lit8 v10, v10, 0x1

    goto :goto_69

    .line 802
    .end local v10    # "i":I
    :cond_97
    iget-boolean v2, v0, Landroid/view/InputDevice$Builder;->mShouldSmoothScroll:Z

    invoke-static {v1, v2}, Landroid/view/InputDevice;->-$$Nest$msetShouldSmoothScroll(Landroid/view/InputDevice;Z)V

    .line 804
    return-object v1
.end method

.method public blacklist setAssociatedDisplayId(I)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "displayId"    # I

    .line 735
    iput p1, p0, Landroid/view/InputDevice$Builder;->mAssociatedDisplayId:I

    .line 736
    return-object p0
.end method

.method public blacklist setControllerNumber(I)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "controllerNumber"    # I

    .line 626
    iput p1, p0, Landroid/view/InputDevice$Builder;->mControllerNumber:I

    .line 627
    return-object p0
.end method

.method public blacklist setDescriptor(Ljava/lang/String;)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 656
    iput-object p1, p0, Landroid/view/InputDevice$Builder;->mDescriptor:Ljava/lang/String;

    .line 657
    return-object p0
.end method

.method public blacklist setDeviceBus(I)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "deviceBus"    # I

    .line 650
    iput p1, p0, Landroid/view/InputDevice$Builder;->mDeviceBus:I

    .line 651
    return-object p0
.end method

.method public blacklist setEnabled(Z)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 741
    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mEnabled:Z

    .line 742
    return-object p0
.end method

.method public blacklist setExternal(Z)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "external"    # Z

    .line 662
    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mIsExternal:Z

    .line 663
    return-object p0
.end method

.method public blacklist setGeneration(I)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "generation"    # I

    .line 620
    iput p1, p0, Landroid/view/InputDevice$Builder;->mGeneration:I

    .line 621
    return-object p0
.end method

.method public blacklist setHasBattery(Z)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "hasBattery"    # Z

    .line 710
    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mHasBattery:Z

    .line 711
    return-object p0
.end method

.method public blacklist setHasButtonUnderPad(Z)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "hasButtonUnderPad"    # Z

    .line 698
    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mHasButtonUnderPad:Z

    .line 699
    return-object p0
.end method

.method public blacklist setHasMicrophone(Z)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "hasMicrophone"    # Z

    .line 692
    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mHasMicrophone:Z

    .line 693
    return-object p0
.end method

.method public blacklist setHasSensor(Z)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "hasSensor"    # Z

    .line 704
    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mHasSensor:Z

    .line 705
    return-object p0
.end method

.method public blacklist setHasVibrator(Z)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "hasVibrator"    # Z

    .line 686
    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mHasVibrator:Z

    .line 687
    return-object p0
.end method

.method public blacklist setId(I)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "id"    # I

    .line 614
    iput p1, p0, Landroid/view/InputDevice$Builder;->mId:I

    .line 615
    return-object p0
.end method

.method public blacklist setKeyCharacterMap(Landroid/view/KeyCharacterMap;)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "keyCharacterMap"    # Landroid/view/KeyCharacterMap;

    .line 680
    iput-object p1, p0, Landroid/view/InputDevice$Builder;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 681
    return-object p0
.end method

.method public blacklist setKeyboardLanguageTag(Ljava/lang/String;)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "keyboardLanguageTag"    # Ljava/lang/String;

    .line 716
    iput-object p1, p0, Landroid/view/InputDevice$Builder;->mKeyboardLanguageTag:Ljava/lang/String;

    .line 717
    return-object p0
.end method

.method public blacklist setKeyboardLayoutType(Ljava/lang/String;)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "keyboardLayoutType"    # Ljava/lang/String;

    .line 722
    iput-object p1, p0, Landroid/view/InputDevice$Builder;->mKeyboardLayoutType:Ljava/lang/String;

    .line 723
    return-object p0
.end method

.method public blacklist setKeyboardType(I)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "keyboardType"    # I

    .line 674
    iput p1, p0, Landroid/view/InputDevice$Builder;->mKeyboardType:I

    .line 675
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 632
    iput-object p1, p0, Landroid/view/InputDevice$Builder;->mName:Ljava/lang/String;

    .line 633
    return-object p0
.end method

.method public blacklist setProductId(I)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "productId"    # I

    .line 644
    iput p1, p0, Landroid/view/InputDevice$Builder;->mProductId:I

    .line 645
    return-object p0
.end method

.method public blacklist setShouldSmoothScroll(Z)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "shouldSmoothScroll"    # Z

    .line 758
    iput-boolean p1, p0, Landroid/view/InputDevice$Builder;->mShouldSmoothScroll:Z

    .line 759
    return-object p0
.end method

.method public blacklist setSources(I)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "sources"    # I

    .line 668
    iput p1, p0, Landroid/view/InputDevice$Builder;->mSources:I

    .line 669
    return-object p0
.end method

.method public blacklist setUsiVersion(Landroid/hardware/input/HostUsiVersion;)Landroid/view/InputDevice$Builder;
    .registers 4
    .param p1, "usiVersion"    # Landroid/hardware/input/HostUsiVersion;

    .line 728
    const/4 v0, -0x1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/hardware/input/HostUsiVersion;->getMajorVersion()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    iput v1, p0, Landroid/view/InputDevice$Builder;->mUsiVersionMajor:I

    .line 729
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/hardware/input/HostUsiVersion;->getMinorVersion()I

    move-result v0

    :cond_11
    iput v0, p0, Landroid/view/InputDevice$Builder;->mUsiVersionMinor:I

    .line 730
    return-object p0
.end method

.method public blacklist setVendorId(I)Landroid/view/InputDevice$Builder;
    .registers 2
    .param p1, "vendorId"    # I

    .line 638
    iput p1, p0, Landroid/view/InputDevice$Builder;->mVendorId:I

    .line 639
    return-object p0
.end method
