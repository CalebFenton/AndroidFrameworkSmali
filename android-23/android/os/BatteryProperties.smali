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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 81
    new-instance v0, Landroid/os/BatteryProperties$1;

    #@2
    invoke-direct {v0}, Landroid/os/BatteryProperties$1;-><init>()V

    #@5
    .line 80
    sput-object v0, Landroid/os/BatteryProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
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
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 55
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
    .line 56
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
    .line 57
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
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@26
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@2c
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    if-ne v0, v1, :cond_3

    #@32
    :goto_3
    iput-boolean v1, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@34
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v0

    #@38
    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@3a
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@40
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v0

    #@44
    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@46
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@4c
    .line 54
    return-void

    #@4d
    :cond_0
    move v0, v2

    #@4e
    .line 55
    goto :goto_0

    #@4f
    :cond_1
    move v0, v2

    #@50
    .line 56
    goto :goto_1

    #@51
    :cond_2
    move v0, v2

    #@52
    .line 57
    goto :goto_2

    #@53
    :cond_3
    move v1, v2

    #@54
    .line 60
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
    .line 92
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public set(Landroid/os/BatteryProperties;)V
    .locals 1
    .param p1, "other"    # Landroid/os/BatteryProperties;

    #@0
    .prologue
    .line 37
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@2
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@4
    .line 38
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@6
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@8
    .line 39
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@a
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@c
    .line 40
    iget v0, p1, Landroid/os/BatteryProperties;->batteryStatus:I

    #@e
    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@10
    .line 41
    iget v0, p1, Landroid/os/BatteryProperties;->batteryHealth:I

    #@12
    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@14
    .line 42
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@16
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@18
    .line 43
    iget v0, p1, Landroid/os/BatteryProperties;->batteryLevel:I

    #@1a
    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@1c
    .line 44
    iget v0, p1, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@1e
    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@20
    .line 45
    iget v0, p1, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@22
    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@24
    .line 46
    iget-object v0, p1, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@26
    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@28
    .line 36
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
    .line 68
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 69
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 70
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    move v0, v1

    #@17
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 71
    iget v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 72
    iget v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 73
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@26
    if-eqz v0, :cond_3

    #@28
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 74
    iget v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 75
    iget v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 76
    iget v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 77
    iget-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3f
    .line 67
    return-void

    #@40
    :cond_0
    move v0, v2

    #@41
    .line 68
    goto :goto_0

    #@42
    :cond_1
    move v0, v2

    #@43
    .line 69
    goto :goto_1

    #@44
    :cond_2
    move v0, v2

    #@45
    .line 70
    goto :goto_2

    #@46
    :cond_3
    move v1, v2

    #@47
    .line 73
    goto :goto_3
.end method
