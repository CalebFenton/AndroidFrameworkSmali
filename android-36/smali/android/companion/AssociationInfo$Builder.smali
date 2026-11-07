.class public final Landroid/companion/AssociationInfo$Builder;
.super Ljava/lang/Object;
.source "AssociationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/AssociationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAssociatedDevice:Landroid/companion/AssociatedDevice;

.field private blacklist mDeviceIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mDeviceId:Landroid/companion/DeviceId;

.field private blacklist mDeviceMacAddress:Landroid/net/MacAddress;

.field private blacklist mDeviceProfile:Ljava/lang/String;

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mId:I

.field private blacklist mLastTimeConnectedMs:J

.field private blacklist mNotifyOnDeviceNearby:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPending:Z

.field private blacklist mRevoked:Z

.field private blacklist mSelfManaged:Z

.field private blacklist mSystemDataSyncFlags:I

.field private blacklist mTimeApprovedMs:J

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    .line 522
    iput p2, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    .line 523
    iput-object p3, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Landroid/companion/AssociationInfo;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "info"    # Landroid/companion/AssociationInfo;

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    .line 555
    iput p2, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    .line 556
    iput-object p3, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 557
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 558
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 559
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    .line 560
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmAssociatedDevice(Landroid/companion/AssociationInfo;)Landroid/companion/AssociatedDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 561
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    .line 562
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    .line 563
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmRevoked(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    .line 564
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPending(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    .line 565
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    .line 566
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    .line 567
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSystemDataSyncFlags(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    .line 568
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceIcon(Landroid/companion/AssociationInfo;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 569
    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceId(Landroid/companion/AssociationInfo;)Landroid/companion/DeviceId;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    .line 570
    return-void
.end method

.method public constructor blacklist <init>(Landroid/companion/AssociationInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/companion/AssociationInfo;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmId(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    .line 530
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmUserId(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    .line 531
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPackageName(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 532
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 533
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 534
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    .line 535
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmAssociatedDevice(Landroid/companion/AssociationInfo;)Landroid/companion/AssociatedDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 536
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    .line 537
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    .line 538
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmRevoked(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    .line 539
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPending(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    .line 540
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    .line 541
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    .line 542
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSystemDataSyncFlags(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    .line 543
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceIcon(Landroid/companion/AssociationInfo;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 544
    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceId(Landroid/companion/AssociationInfo;)Landroid/companion/DeviceId;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    .line 545
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/AssociationInfo;
    .registers 23

    .line 696
    move-object/from16 v0, p0

    iget v1, v0, Landroid/companion/AssociationInfo$Builder;->mId:I

    if-lez v1, :cond_46

    .line 699
    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    if-nez v1, :cond_17

    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    goto :goto_17

    .line 700
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MAC address and the display name must NOT be null at the same time"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 703
    :cond_17
    :goto_17
    new-instance v3, Landroid/companion/AssociationInfo;

    iget v4, v0, Landroid/companion/AssociationInfo$Builder;->mId:I

    iget v5, v0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    iget-object v6, v0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    iget-object v8, v0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v9, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    iget-object v10, v0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-boolean v11, v0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    iget-boolean v12, v0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    iget-boolean v13, v0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    iget-boolean v14, v0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    iget-wide v1, v0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    move-wide v15, v1

    iget-wide v1, v0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    move-wide/from16 v17, v1

    iget v1, v0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    iget-object v2, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    move/from16 v19, v1

    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    invoke-direct/range {v3 .. v21}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V

    return-object v3

    .line 697
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Association ID should be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setAssociatedDevice(Landroid/companion/AssociatedDevice;)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "associatedDevice"    # Landroid/companion/AssociatedDevice;

    .line 609
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    .line 610
    return-object p0
.end method

.method public blacklist setDeviceIcon(Landroid/graphics/drawable/Icon;)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "deviceIcon"    # Landroid/graphics/drawable/Icon;

    .line 688
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    .line 689
    return-object p0
.end method

.method public blacklist setDeviceId(Landroid/companion/DeviceId;)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "deviceId"    # Landroid/companion/DeviceId;

    .line 577
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    .line 578
    return-object p0
.end method

.method public blacklist setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "deviceMacAddress"    # Landroid/net/MacAddress;

    .line 585
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    .line 586
    return-object p0
.end method

.method public blacklist setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "deviceProfile"    # Ljava/lang/String;

    .line 601
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    .line 602
    return-object p0
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "displayName"    # Ljava/lang/CharSequence;

    .line 593
    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 594
    return-object p0
.end method

.method public blacklist setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;
    .registers 6
    .param p1, "lastTimeConnectedMs"    # J

    .line 665
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 670
    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    .line 671
    return-object p0

    .line 666
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lastTimeConnectedMs must not be negative! (Given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "notifyOnDeviceNearby"    # Z

    .line 626
    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    .line 627
    return-object p0
.end method

.method public blacklist setPending(Z)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "pending"    # Z

    .line 643
    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    .line 644
    return-object p0
.end method

.method public blacklist setRevoked(Z)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "revoked"    # Z

    .line 635
    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    .line 636
    return-object p0
.end method

.method public blacklist setSelfManaged(Z)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "selfManaged"    # Z

    .line 617
    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    .line 618
    return-object p0
.end method

.method public blacklist setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 678
    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    .line 679
    return-object p0
.end method

.method public blacklist setTimeApproved(J)Landroid/companion/AssociationInfo$Builder;
    .registers 6
    .param p1, "timeApprovedMs"    # J

    .line 652
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 656
    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    .line 657
    return-object p0

    .line 653
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeApprovedMs must be positive. Was given ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
