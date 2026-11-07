.class Landroid/hardware/hdmi/HdmiDeviceInfo$1;
.super Ljava/lang/Object;
.source "HdmiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/hdmi/HdmiDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 12
    .param p1, "source"    # Landroid/os/Parcel;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .local v0, "hdmiDeviceType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .local v1, "physicalAddress":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "portId":I
    sparse-switch v0, :sswitch_data_68

    .line 171
    const/4 v3, 0x0

    return-object v3

    .line 169
    :sswitch_11
    sget-object v3, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v3

    .line 167
    :sswitch_14
    invoke-static {v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    return-object v3

    .line 163
    :sswitch_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "deviceId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .local v4, "adopterId":I
    invoke-static {v1, v2, v4, v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->mhlDevice(IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v5

    return-object v5

    .line 146
    .end local v3    # "deviceId":I
    .end local v4    # "adopterId":I
    :sswitch_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    .local v3, "logicalAddress":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .local v4, "deviceType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 149
    .local v5, "vendorId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 150
    .local v6, "powerStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "displayName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 152
    .local v8, "cecVersion":I
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v9

    .line 153
    invoke-virtual {v9, v3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v9

    .line 154
    invoke-virtual {v9, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v9

    .line 155
    invoke-virtual {v9, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v9

    .line 156
    invoke-virtual {v9, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v9

    .line 157
    invoke-virtual {v9, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v9

    .line 158
    invoke-virtual {v9, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v9

    .line 159
    invoke-virtual {v9, v6}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDevicePowerStatus(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v9

    .line 160
    invoke-virtual {v9, v8}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v9

    .line 161
    invoke-virtual {v9}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v9

    .line 152
    return-object v9

    nop

    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_26
        0x1 -> :sswitch_19
        0x2 -> :sswitch_14
        0x64 -> :sswitch_11
    .end sparse-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3
    .param p1, "size"    # I

    .line 177
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;->newArray(I)[Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    return-object p1
.end method
