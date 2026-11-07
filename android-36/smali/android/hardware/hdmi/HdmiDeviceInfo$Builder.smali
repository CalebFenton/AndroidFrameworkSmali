.class public final Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
.super Ljava/lang/Object;
.source "HdmiDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdopterId:I

.field private blacklist mCecVersion:I

.field private blacklist mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

.field private blacklist mDeviceId:I

.field private blacklist mDevicePowerStatus:I

.field private blacklist mDeviceType:I

.field private blacklist mDisplayName:Ljava/lang/String;

.field private final blacklist mHdmiDeviceType:I

.field private blacklist mLogicalAddress:I

.field private blacklist mPhysicalAddress:I

.field private blacklist mPortId:I

.field private blacklist mVendorId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdopterId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mAdopterId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCecVersion(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mCecVersion:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceFeatures(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)Landroid/hardware/hdmi/DeviceFeatures;
    .registers 1

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDevicePowerStatus(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDevicePowerStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHdmiDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mHdmiDeviceType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mLogicalAddress:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPhysicalAddress:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPortId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVendorId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mVendorId:I

    return p0
.end method

.method private constructor blacklist <init>(I)V
    .registers 4
    .param p1, "hdmiDeviceType"    # I

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    const v0, 0xffff

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPhysicalAddress:I

    .line 591
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPortId:I

    .line 594
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mLogicalAddress:I

    .line 595
    const/4 v1, 0x2

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceType:I

    .line 596
    const/4 v1, 0x5

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mCecVersion:I

    .line 598
    const v1, 0xffffff

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mVendorId:I

    .line 599
    const-string v1, ""

    iput-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDisplayName:Ljava/lang/String;

    .line 600
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDevicePowerStatus:I

    .line 604
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceId:I

    .line 605
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mAdopterId:I

    .line 608
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mHdmiDeviceType:I

    .line 609
    if-nez p1, :cond_2b

    .line 610
    sget-object v0, Landroid/hardware/hdmi/DeviceFeatures;->ALL_FEATURES_SUPPORT_UNKNOWN:Landroid/hardware/hdmi/DeviceFeatures;

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    goto :goto_2f

    .line 612
    :cond_2b
    sget-object v0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    .line 614
    :goto_2f
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/hardware/hdmi/HdmiDeviceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4
    .param p1, "hdmiDeviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    const v0, 0xffff

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPhysicalAddress:I

    .line 591
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPortId:I

    .line 594
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mLogicalAddress:I

    .line 595
    const/4 v1, 0x2

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceType:I

    .line 596
    const/4 v1, 0x5

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mCecVersion:I

    .line 598
    const v1, 0xffffff

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mVendorId:I

    .line 599
    const-string v1, ""

    iput-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDisplayName:Ljava/lang/String;

    .line 600
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDevicePowerStatus:I

    .line 604
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceId:I

    .line 605
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mAdopterId:I

    .line 617
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmHdmiDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mHdmiDeviceType:I

    .line 618
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmPhysicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPhysicalAddress:I

    .line 619
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmPortId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPortId:I

    .line 620
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmLogicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mLogicalAddress:I

    .line 621
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceType:I

    .line 622
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmCecVersion(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mCecVersion:I

    .line 623
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmVendorId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mVendorId:I

    .line 624
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmDisplayName(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDisplayName:Ljava/lang/String;

    .line 625
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmDevicePowerStatus(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDevicePowerStatus:I

    .line 626
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceId:I

    .line 627
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmAdopterId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mAdopterId:I

    .line 628
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmDeviceFeatures(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    .line 629
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/HdmiDeviceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3

    .line 636
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;Landroid/hardware/hdmi/HdmiDeviceInfo-IA;)V

    return-object v0
.end method

.method public blacklist setAdopterId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "adopterId"    # I

    .line 734
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mAdopterId:I

    .line 735
    return-object p0
.end method

.method public blacklist setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "hdmiCecVersion"    # I

    .line 680
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mCecVersion:I

    .line 681
    return-object p0
.end method

.method public blacklist setDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "deviceFeatures"    # Landroid/hardware/hdmi/DeviceFeatures;

    .line 716
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    .line 717
    return-object p0
.end method

.method public blacklist setDeviceId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "deviceId"    # I

    .line 725
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceId:I

    .line 726
    return-object p0
.end method

.method public blacklist setDevicePowerStatus(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "devicePowerStatus"    # I

    .line 707
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDevicePowerStatus:I

    .line 708
    return-object p0
.end method

.method public blacklist setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "deviceType"    # I

    .line 671
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceType:I

    .line 672
    return-object p0
.end method

.method public blacklist setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .line 698
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDisplayName:Ljava/lang/String;

    .line 699
    return-object p0
.end method

.method public blacklist setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "logicalAddress"    # I

    .line 662
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mLogicalAddress:I

    .line 663
    return-object p0
.end method

.method public blacklist setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "physicalAddress"    # I

    .line 644
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPhysicalAddress:I

    .line 645
    return-object p0
.end method

.method public blacklist setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "portId"    # I

    .line 653
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPortId:I

    .line 654
    return-object p0
.end method

.method public blacklist setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2
    .param p1, "vendorId"    # I

    .line 689
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mVendorId:I

    .line 690
    return-object p0
.end method

.method public blacklist updateDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 3
    .param p1, "deviceFeatures"    # Landroid/hardware/hdmi/DeviceFeatures;

    .line 744
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->update(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    .line 745
    return-object p0
.end method
