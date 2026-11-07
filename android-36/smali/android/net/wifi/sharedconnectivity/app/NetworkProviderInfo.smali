.class public final Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
.super Ljava/lang/Object;
.source "NetworkProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$Builder;,
        Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$DeviceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_TYPE_AUTO:I = 0x5

.field public static final whitelist DEVICE_TYPE_LAPTOP:I = 0x3

.field public static final whitelist DEVICE_TYPE_PHONE:I = 0x1

.field public static final whitelist DEVICE_TYPE_TABLET:I = 0x2

.field public static final whitelist DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist DEVICE_TYPE_WATCH:I = 0x4


# instance fields
.field private final blacklist mBatteryPercentage:I

.field private final blacklist mConnectionStrength:I

.field private final blacklist mDeviceName:Ljava/lang/String;

.field private final blacklist mDeviceType:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mIsBatteryCharging:Z

.field private final blacklist mModelName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 360
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IZILandroid/os/Bundle;)V
    .registers 8
    .param p1, "deviceType"    # I
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "modelName"    # Ljava/lang/String;
    .param p4, "batteryPercentage"    # I
    .param p5, "isBatteryCharging"    # Z
    .param p6, "connectionStrength"    # I
    .param p7, "extras"    # Landroid/os/Bundle;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-static {p1, p2, p3, p4, p6}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->validate(ILjava/lang/String;Ljava/lang/String;II)V

    .line 235
    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    .line 236
    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    .line 238
    iput p4, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    .line 239
    iput-boolean p5, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    .line 240
    iput p6, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    .line 241
    iput-object p7, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mExtras:Landroid/os/Bundle;

    .line 242
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IZILandroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IZILandroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
    .registers 9
    .param p0, "in"    # Landroid/os/Parcel;

    .line 355
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 356
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IZILandroid/os/Bundle;)V

    .line 355
    return-object v0
.end method

.method private static blacklist validate(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p0, "deviceType"    # I
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "modelName"    # Ljava/lang/String;
    .param p3, "batteryPercentage"    # I
    .param p4, "connectionStrength"    # I

    .line 218
    const/4 v0, 0x4

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1a

    if-eq p0, v0, :cond_1a

    const/4 v1, 0x5

    if-ne p0, v1, :cond_12

    goto :goto_1a

    .line 221
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal device type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1a
    :goto_1a
    if-ltz p3, :cond_2d

    const/16 v1, 0x64

    if-gt p3, v1, :cond_2d

    .line 226
    if-ltz p4, :cond_25

    if-gt p4, v0, :cond_25

    .line 229
    return-void

    .line 227
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConnectionStrength must be in range 0-4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BatteryPercentage must be in range 0-100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 316
    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 317
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    .line 318
    .local v0, "other":Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
    iget v2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->getDeviceType()I

    move-result v3

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    .line 319
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    .line 320
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget v2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    iget v3, v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    if-ne v2, v3, :cond_39

    iget-boolean v2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    iget-boolean v3, v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    if-ne v2, v3, :cond_39

    iget v2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    iget v3, v0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    if-ne v2, v3, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    nop

    .line 318
    :goto_3a
    return v1
.end method

.method public whitelist getBatteryPercentage()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    return v0
.end method

.method public whitelist getConnectionStrength()I
    .registers 2

    .line 301
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    return v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceType()I
    .registers 2

    .line 251
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .registers 2

    .line 271
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 328
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    .line 329
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 328
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isBatteryCharging()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkProviderInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    const-string v1, "deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    const-string v1, ", deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string v1, ", modelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 378
    const-string v1, ", batteryPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    const-string v1, ", isBatteryCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    const-string v1, ", connectionStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 381
    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 334
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mModelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mBatteryPercentage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mIsBatteryCharging:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mConnectionStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 341
    return-void
.end method
