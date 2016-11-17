.class public Landroid/os/BatteryProperties;
.super Ljava/lang/Object;
.source "BatteryProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryProperties$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BatteryProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryChargeCounter:I

.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public maxChargingCurrent:I

.field public maxChargingVoltage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 93
    new-instance v0, Landroid/os/BatteryProperties$1;

    #@2
    invoke-direct {v0}, Landroid/os/BatteryProperties$1;-><init>()V

    #@5
    .line 92
    sput-object v0, Landroid/os/BatteryProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    if-ne v0, v1, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@e
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v0

    #@12
    if-ne v0, v1, :cond_1

    #@14
    move v0, v1

    #@15
    :goto_1
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@17
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    if-ne v0, v1, :cond_2

    #@1d
    move v0, v1

    #@1e
    :goto_2
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@20
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    #@26
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    #@2c
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@32
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v0

    #@36
    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@38
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v0

    #@3c
    if-ne v0, v1, :cond_3

    #@3e
    :goto_3
    iput-boolean v1, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@40
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v0

    #@44
    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@46
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v0

    #@4a
    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@4c
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v0

    #@50
    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@52
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v0

    #@56
    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    #@58
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@5e
    .line 60
    return-void

    #@5f
    :cond_0
    move v0, v2

    #@60
    .line 61
    goto :goto_0

    #@61
    :cond_1
    move v0, v2

    #@62
    .line 62
    goto :goto_1

    #@63
    :cond_2
    move v0, v2

    #@64
    .line 63
    goto :goto_2

    #@65
    :cond_3
    move v1, v2

    #@66
    .line 68
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryProperties;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/BatteryProperties;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public set(Landroid/os/BatteryProperties;)V
    .locals 1
    .param p1, "other"    # Landroid/os/BatteryProperties;

    #@0
    .prologue
    .line 40
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@2
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@4
    .line 41
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@6
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@8
    .line 42
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@a
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@c
    .line 43
    iget v0, p1, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    #@e
    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    #@10
    .line 44
    iget v0, p1, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    #@12
    iput v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    #@14
    .line 45
    iget v0, p1, Landroid/os/BatteryProperties;->batteryStatus:I

    #@16
    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@18
    .line 46
    iget v0, p1, Landroid/os/BatteryProperties;->batteryHealth:I

    #@1a
    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@1c
    .line 47
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@1e
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@20
    .line 48
    iget v0, p1, Landroid/os/BatteryProperties;->batteryLevel:I

    #@22
    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@24
    .line 49
    iget v0, p1, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@26
    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@28
    .line 50
    iget v0, p1, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@2a
    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@2c
    .line 51
    iget v0, p1, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    #@2e
    iput v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    #@30
    .line 52
    iget-object v0, p1, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@32
    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@34
    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 77
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 78
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 79
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    move v0, v1

    #@17
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 80
    iget v0, p0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 81
    iget v0, p0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 82
    iget v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 83
    iget v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 84
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@30
    if-eqz v0, :cond_3

    #@32
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 85
    iget v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 86
    iget v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 87
    iget v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 88
    iget v0, p0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    #@46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    .line 89
    iget-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4e
    .line 76
    return-void

    #@4f
    :cond_0
    move v0, v2

    #@50
    .line 77
    goto :goto_0

    #@51
    :cond_1
    move v0, v2

    #@52
    .line 78
    goto :goto_1

    #@53
    :cond_2
    move v0, v2

    #@54
    .line 79
    goto :goto_2

    #@55
    :cond_3
    move v1, v2

    #@56
    .line 84
    goto :goto_3
.end method
