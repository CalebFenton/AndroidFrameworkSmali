.class public Landroid/hardware/hdmi/HdmiDeviceInfo;
.super Ljava/lang/Object;
.source "HdmiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiDeviceInfo$1;
    }
.end annotation


# static fields
.field public static final ADDR_INTERNAL:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_AUDIO_SYSTEM:I = 0x5

.field public static final DEVICE_INACTIVE:I = -0x1

.field public static final DEVICE_PLAYBACK:I = 0x4

.field public static final DEVICE_PURE_CEC_SWITCH:I = 0x6

.field public static final DEVICE_RECORDER:I = 0x1

.field public static final DEVICE_RESERVED:I = 0x2

.field public static final DEVICE_TUNER:I = 0x3

.field public static final DEVICE_TV:I = 0x0

.field public static final DEVICE_VIDEO_PROCESSOR:I = 0x7

.field private static final HDMI_DEVICE_TYPE_CEC:I = 0x0

.field private static final HDMI_DEVICE_TYPE_HARDWARE:I = 0x2

.field private static final HDMI_DEVICE_TYPE_INACTIVE:I = 0x64

.field private static final HDMI_DEVICE_TYPE_MHL:I = 0x1

.field public static final ID_INVALID:I = 0xffff

.field private static final ID_OFFSET_CEC:I = 0x0

.field private static final ID_OFFSET_HARDWARE:I = 0xc0

.field private static final ID_OFFSET_MHL:I = 0x80

.field public static final INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public static final PATH_INTERNAL:I = 0x0

.field public static final PATH_INVALID:I = 0xffff

.field public static final PORT_INVALID:I = -0x1


# instance fields
.field private final mAdopterId:I

.field private final mDeviceId:I

.field private final mDevicePowerStatus:I

.field private final mDeviceType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mHdmiDeviceType:I

.field private final mId:I

.field private final mLogicalAddress:I

.field private final mPhysicalAddress:I

.field private final mPortId:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2
    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>()V

    #@5
    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@7
    .line 120
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$1;

    #@9
    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;-><init>()V

    #@c
    .line 119
    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const v2, 0xffff

    #@3
    const/4 v1, -0x1

    #@4
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 256
    const/16 v0, 0x64

    #@9
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@b
    .line 257
    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    #@d
    .line 258
    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    #@f
    .line 260
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    #@11
    .line 261
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@13
    .line 262
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    #@15
    .line 263
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    #@17
    .line 264
    const-string/jumbo v0, "Inactive"

    #@1a
    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    #@1c
    .line 265
    const/4 v0, 0x0

    #@1d
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    #@1f
    .line 267
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    #@21
    .line 268
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    #@23
    .line 255
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "physicalAddress"    # I
    .param p2, "portId"    # I

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v2, -0x1

    #@2
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 209
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@7
    .line 210
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    #@9
    .line 211
    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    #@b
    .line 213
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForHardware(I)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    #@11
    .line 214
    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    #@13
    .line 215
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@15
    .line 216
    const/4 v0, 0x0

    #@16
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    #@18
    .line 217
    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    #@1a
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v1, "HDMI"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    #@30
    .line 220
    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    #@32
    .line 221
    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    #@34
    .line 208
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "physicalAddress"    # I
    .param p2, "portId"    # I
    .param p3, "adopterId"    # I
    .param p4, "deviceId"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 234
    const/4 v0, 0x1

    #@5
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@7
    .line 235
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    #@9
    .line 236
    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    #@b
    .line 238
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForMhlDevice(I)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    #@11
    .line 239
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    #@13
    .line 240
    const/4 v0, 0x2

    #@14
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@16
    .line 241
    const/4 v0, 0x0

    #@17
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    #@19
    .line 242
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    #@1b
    .line 243
    const-string/jumbo v0, "Mobile"

    #@1e
    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    #@20
    .line 245
    iput p3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    #@22
    .line 246
    iput p4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    #@24
    .line 233
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 8
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .param p3, "portId"    # I
    .param p4, "deviceType"    # I
    .param p5, "vendorId"    # I
    .param p6, "displayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    const/4 v7, -0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    .line 197
    invoke-direct/range {v0 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    #@b
    .line 196
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;I)V
    .locals 2
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .param p3, "portId"    # I
    .param p4, "deviceType"    # I
    .param p5, "vendorId"    # I
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "powerStatus"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 169
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@7
    .line 170
    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    #@9
    .line 171
    iput p3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    #@b
    .line 173
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    #@11
    .line 174
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    #@13
    .line 175
    iput p4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@15
    .line 176
    iput p5, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    #@17
    .line 177
    iput p7, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    #@19
    .line 178
    iput-object p6, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    #@1b
    .line 180
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    #@1d
    .line 181
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    #@1f
    .line 168
    return-void
.end method

.method public static idForCecDevice(I)I
    .locals 1
    .param p0, "address"    # I

    #@0
    .prologue
    .line 286
    add-int/lit8 v0, p0, 0x0

    #@2
    return v0
.end method

.method public static idForHardware(I)I
    .locals 1
    .param p0, "portId"    # I

    #@0
    .prologue
    .line 307
    add-int/lit16 v0, p0, 0xc0

    #@2
    return v0
.end method

.method public static idForMhlDevice(I)I
    .locals 1
    .param p0, "portId"    # I

    #@0
    .prologue
    .line 297
    add-int/lit16 v0, p0, 0x80

    #@2
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 427
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 497
    instance-of v2, p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 498
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 501
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@9
    .line 502
    .local v0, "other":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@b
    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 503
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    #@11
    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 504
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    #@17
    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    .line 505
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    #@1d
    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    #@1f
    if-ne v2, v3, :cond_1

    #@21
    .line 506
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@23
    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@25
    if-ne v2, v3, :cond_1

    #@27
    .line 507
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    #@29
    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    #@2b
    if-ne v2, v3, :cond_1

    #@2d
    .line 508
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    #@2f
    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    #@31
    if-ne v2, v3, :cond_1

    #@33
    .line 509
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    #@35
    iget-object v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    .line 502
    if-eqz v2, :cond_1

    #@3d
    .line 510
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    #@3f
    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    #@41
    if-ne v2, v3, :cond_1

    #@43
    .line 511
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    #@45
    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    #@47
    if-ne v2, v3, :cond_1

    #@49
    const/4 v1, 0x1

    #@4a
    .line 502
    :cond_1
    return v1
.end method

.method public getAdopterId()I
    .locals 1

    #@0
    .prologue
    .line 364
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    #@2
    return v0
.end method

.method public getDeviceId()I
    .locals 1

    #@0
    .prologue
    .line 357
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    #@2
    return v0
.end method

.method public getDevicePowerStatus()I
    .locals 1

    #@0
    .prologue
    .line 350
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    #@2
    return v0
.end method

.method public getDeviceType()I
    .locals 1

    #@0
    .prologue
    .line 336
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@2
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 275
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    #@2
    return v0
.end method

.method public getLogicalAddress()I
    .locals 1

    #@0
    .prologue
    .line 314
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    #@2
    return v0
.end method

.method public getPhysicalAddress()I
    .locals 1

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    #@2
    return v0
.end method

.method public getPortId()I
    .locals 1

    #@0
    .prologue
    .line 328
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    #@2
    return v0
.end method

.method public getVendorId()I
    .locals 1

    #@0
    .prologue
    .line 418
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    #@2
    return v0
.end method

.method public isCecDevice()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 387
    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isInactivated()Z
    .locals 2

    #@0
    .prologue
    .line 403
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@2
    const/16 v1, 0x64

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isMhlDevice()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 395
    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isSourceType()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 371
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 372
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@a
    const/4 v3, 0x4

    #@b
    if-eq v2, v3, :cond_0

    #@d
    .line 373
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@f
    if-ne v2, v0, :cond_1

    #@11
    .line 372
    :cond_0
    :goto_0
    return v0

    #@12
    .line 374
    :cond_1
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@14
    const/4 v3, 0x3

    #@15
    if-eq v2, v3, :cond_0

    #@17
    move v0, v1

    #@18
    goto :goto_0

    #@19
    .line 375
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isMhlDevice()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 376
    return v0

    #@20
    .line 378
    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 463
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 464
    .local v0, "s":Ljava/lang/StringBuffer;
    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@9
    sparse-switch v1, :sswitch_data_0

    #@c
    .line 487
    const-string/jumbo v1, ""

    #@f
    return-object v1

    #@10
    .line 466
    :sswitch_0
    const-string/jumbo v1, "CEC: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 467
    const-string/jumbo v1, "logical_address: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "0x%02X"

    #@20
    new-array v3, v6, [Ljava/lang/Object;

    #@22
    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    #@24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v4

    #@28
    aput-object v4, v3, v5

    #@2a
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    .line 468
    const-string/jumbo v1, " "

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 469
    const-string/jumbo v1, "device_type: "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    move-result-object v1

    #@3e
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@43
    move-result-object v1

    #@44
    const-string/jumbo v2, " "

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    .line 470
    const-string/jumbo v1, "vendor_id: "

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    move-result-object v1

    #@51
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@56
    move-result-object v1

    #@57
    const-string/jumbo v2, " "

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5d
    .line 471
    const-string/jumbo v1, "display_name: "

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@63
    move-result-object v1

    #@64
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@69
    move-result-object v1

    #@6a
    const-string/jumbo v2, " "

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@70
    .line 472
    const-string/jumbo v1, "power_status: "

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@76
    move-result-object v1

    #@77
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@7c
    move-result-object v1

    #@7d
    const-string/jumbo v2, " "

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@83
    .line 489
    :goto_0
    const-string/jumbo v1, "physical_address: "

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@89
    move-result-object v1

    #@8a
    const-string/jumbo v2, "0x%04X"

    #@8d
    new-array v3, v6, [Ljava/lang/Object;

    #@8f
    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    #@91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@94
    move-result-object v4

    #@95
    aput-object v4, v3, v5

    #@97
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9e
    .line 490
    const-string/jumbo v1, " "

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a4
    .line 491
    const-string/jumbo v1, "port_id: "

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@aa
    move-result-object v1

    #@ab
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@b0
    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b3
    move-result-object v1

    #@b4
    return-object v1

    #@b5
    .line 475
    :sswitch_1
    const-string/jumbo v1, "MHL: "

    #@b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bb
    .line 476
    const-string/jumbo v1, "device_id: "

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c1
    move-result-object v1

    #@c2
    const-string/jumbo v2, "0x%04X"

    #@c5
    new-array v3, v6, [Ljava/lang/Object;

    #@c7
    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    #@c9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc
    move-result-object v4

    #@cd
    aput-object v4, v3, v5

    #@cf
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d2
    move-result-object v2

    #@d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d6
    move-result-object v1

    #@d7
    const-string/jumbo v2, " "

    #@da
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@dd
    .line 477
    const-string/jumbo v1, "adopter_id: "

    #@e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e3
    move-result-object v1

    #@e4
    const-string/jumbo v2, "0x%04X"

    #@e7
    new-array v3, v6, [Ljava/lang/Object;

    #@e9
    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    #@eb
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ee
    move-result-object v4

    #@ef
    aput-object v4, v3, v5

    #@f1
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f4
    move-result-object v2

    #@f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f8
    move-result-object v1

    #@f9
    const-string/jumbo v2, " "

    #@fc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ff
    goto :goto_0

    #@100
    .line 481
    :sswitch_2
    const-string/jumbo v1, "Hardware: "

    #@103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@106
    goto/16 :goto_0

    #@108
    .line 484
    :sswitch_3
    const-string/jumbo v1, "Inactivated: "

    #@10b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10e
    goto/16 :goto_0

    #@110
    .line 464
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 439
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 440
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 441
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 442
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    #@11
    packed-switch v0, :pswitch_data_0

    #@14
    .line 438
    :goto_0
    return-void

    #@15
    .line 444
    :pswitch_0
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 445
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 446
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 447
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 448
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    goto :goto_0

    #@2f
    .line 451
    :pswitch_1
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    #@31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 452
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    #@36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    goto :goto_0

    #@3a
    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
