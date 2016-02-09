.class public final Landroid/bluetooth/le/AdvertiseSettings;
.super Ljava/lang/Object;
.source "AdvertiseSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertiseSettings$Builder;,
        Landroid/bluetooth/le/AdvertiseSettings$1;
    }
.end annotation


# static fields
.field public static final ADVERTISE_MODE_BALANCED:I = 0x1

.field public static final ADVERTISE_MODE_LOW_LATENCY:I = 0x2

.field public static final ADVERTISE_MODE_LOW_POWER:I = 0x0

.field public static final ADVERTISE_TX_POWER_HIGH:I = 0x3

.field public static final ADVERTISE_TX_POWER_LOW:I = 0x1

.field public static final ADVERTISE_TX_POWER_MEDIUM:I = 0x2

.field public static final ADVERTISE_TX_POWER_ULTRA_LOW:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/AdvertiseSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIMITED_ADVERTISING_MAX_MILLIS:I = 0x2bf20


# instance fields
.field private final mAdvertiseConnectable:Z

.field private final mAdvertiseMode:I

.field private final mAdvertiseTimeoutMillis:I

.field private final mAdvertiseTxPowerLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 143
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseSettings$1;-><init>()V

    #@5
    .line 142
    sput-object v0, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method private constructor <init>(IIZI)V
    .locals 0
    .param p1, "advertiseMode"    # I
    .param p2, "advertiseTxPowerLevel"    # I
    .param p3, "advertiseConnectable"    # Z
    .param p4, "advertiseTimeout"    # I

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    #@5
    .line 81
    iput p2, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    #@7
    .line 82
    iput-boolean p3, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    #@9
    .line 83
    iput p4, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    #@b
    .line 79
    return-void
.end method

.method synthetic constructor <init>(IIZILandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p1, "advertiseMode"    # I
    .param p2, "advertiseTxPowerLevel"    # I
    .param p3, "advertiseConnectable"    # Z
    .param p4, "advertiseTimeout"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZI)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    #@a
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    #@10
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    const/4 v0, 0x1

    #@17
    :cond_0
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    #@19
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    #@1f
    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMode()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    #@2
    return v0
.end method

.method public getTimeout()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    #@2
    return v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    #@2
    return v0
.end method

.method public isConnectable()Z
    .locals 1

    #@0
    .prologue
    .line 111
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Settings [mAdvertiseMode="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 124
    const-string/jumbo v1, ", mAdvertiseTxPowerLevel="

    #@15
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 124
    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    #@1b
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 125
    const-string/jumbo v1, ", mAdvertiseConnectable="

    #@22
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 125
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    #@28
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 126
    const-string/jumbo v1, ", mAdvertiseTimeoutMillis="

    #@2f
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 126
    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    #@35
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 126
    const-string/jumbo v1, "]"

    #@3c
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 136
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseMode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 137
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTxPowerLevel:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 138
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseConnectable:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 139
    iget v0, p0, Landroid/bluetooth/le/AdvertiseSettings;->mAdvertiseTimeoutMillis:I

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 135
    return-void

    #@18
    .line 138
    :cond_0
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method
